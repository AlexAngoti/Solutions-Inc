unit uCadastroFormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, SWHDBEdit, SWHComboBox, SWHDBComboBox;

type
  TfrmCadastroPagamento = class(TfrmCadastroPadrao)
    Panel1: TPanel;
    edtNome: TSWHDBEdit;
    Label2: TLabel;
    lblAtivo: TLabel;
    cbxAtivo: TSWHComboBox;
    SWHDBEdit1: TSWHDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    cdsCadastroPadraoid: TLargeintField;
    cdsCadastroPadraonome: TWideStringField;
    cdsCadastroPadraoabreviação: TWideStringField;
    cdsCadastroPadraotipopgto: TIntegerField;
    cdsCadastroPadraoativo: TIntegerField;
    SWHComboBox1: TSWHComboBox;
    Label4: TLabel;
    Label5: TLabel;
    cbxAtualizaRec: TSWHComboBox;
    cbxAtualizaPag: TSWHComboBox;
    cdsCadastroPadraoatualizapagar: TIntegerField;
    cdsCadastroPadraoatualizareceber: TIntegerField;
    Label6: TLabel;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    procedure OpenScreen; override;
    procedure BloqueiaCampo;  override;
    procedure LiberaCampo; override;
    procedure ValidaRegistro; override;
    procedure ClearField; override;
    procedure ExcluiAcesso; override;
    { Public declarations }
  end;

var
  frmCadastroPagamento: TfrmCadastroPagamento;

implementation

uses
  uDM, uConsultaPgto, uUtils, uEscurecerFundo;

{$R *.dfm}

procedure TfrmCadastroPagamento.BloqueiaCampo;
begin
  cdsCadastroPadrao.Close;
  cdsCadastroPadrao.Open;
  cdsCadastroPadrao.Insert;
  edtNome.Enabled    := False;
  cbxAtivo.Enabled   := False;
  SWHDBEdit1.Enabled := False;
  SWHComboBox1.Enabled := False;
  Label2.Enabled     := False;
  Label1.Enabled     := False;
  Label3.Enabled     := False;
  lblAtivo.Enabled   := False;
  cbxAtualizaRec.Enabled := False;
  cbxAtualizaPag.Enabled := False;
  Label4.Enabled := False;
  Label5.Enabled := False;
end;

procedure TfrmCadastroPagamento.btnConfirmarClick(Sender: TObject);
begin
  cdsCadastroPadraotipopgto.AsInteger := SWHComboBox1.ItemIndex;
  cdsCadastroPadraoativo.AsInteger    := cbxAtivo.ItemIndex;
  cdsCadastroPadraoatualizapagar.AsInteger   := cbxAtualizaPag.ItemIndex;
  cdsCadastroPadraoatualizareceber.AsInteger := cbxAtualizaRec.ItemIndex;
  inherited;
  cdsCadastroPadrao.Insert;
  cbxAtivo.ItemIndex     := 0;
  SWHComboBox1.ItemIndex := 0;
  cbxAtualizaRec.ItemIndex := -1;
  cbxAtualizaPag.ItemIndex := -1;
end;

procedure TfrmCadastroPagamento.ClearField;
begin
  inherited;
  edtNome.Clear;
  SWHDBEdit1.Clear;
end;

procedure TfrmCadastroPagamento.ExcluiAcesso;
begin
  inherited;

end;

procedure TfrmCadastroPagamento.FormResize(Sender: TObject);
begin
  inherited;
  Panel1.Left := Round(pnlSubTop.Width / 2 - Panel1.Width / 2);
end;

procedure TfrmCadastroPagamento.LiberaCampo;
begin
  inherited;
  edtNome.Enabled    := True;
  cbxAtivo.Enabled   := True;
  SWHDBEdit1.Enabled := True;
  SWHComboBox1.Enabled := True;
  Label2.Enabled     := True;
  Label1.Enabled     := True;
  Label3.Enabled     := True;
  lblAtivo.Enabled   := True;
  cbxAtualizaRec.Enabled := True;
  cbxAtualizaPag.Enabled := True;
  Label4.Enabled := True;
  Label5.Enabled := True;
end;

procedure TfrmCadastroPagamento.OpenScreen;
begin
  inherited;
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmEscurecerFundo.Show;

  frmConsultaPagamento := TfrmConsultaPagamento.Create(Self);
  try
    frmConsultaPagamento.ShowModal;
    if frmConsultaPagamento.ModalResult = mrOk then
    begin
      cdsCadastroPadrao.Edit;
      cbxAtivo.ItemIndex     := cdsCadastroPadraoativo.AsInteger;
      SWHComboBox1.ItemIndex := cdsCadastroPadraotipopgto.AsInteger;
      cbxAtualizaRec.ItemIndex := cdsCadastroPadraoatualizareceber.AsInteger;
      cbxAtualizaPag.ItemIndex := cdsCadastroPadraoatualizapagar.AsInteger;
      Self.LiberaCampo;
    end
    else
    begin
      cdsCadastroPadrao.Insert;
      cbxAtivo.ItemIndex := 0;
      SWHComboBox1.ItemIndex := 0;
    end;
  finally
    frmConsultaPagamento.Free;
    frmEscurecerFundo.Free;
  end;
end;

procedure TfrmCadastroPagamento.ValidaRegistro;
begin
  inherited;
  if edtNome.Text = EmptyStr then
  begin
    uUtils.MsgOk('Nome da forma de pagamento não pode ser nulo!',
    'Favor preencher o campo');
    edtNome.SetFocus;
    Abort;
  end;

  if SWHDBEdit1.Text = EmptyStr then
  begin
    uUtils.MsgOk('Abreviação da forma de pagamento não pode ser nulo!',
    'Favor informar uma abreviação');
    SWHDBEdit1.SetFocus;
    Abort;
  end;

  if SWHComboBox1.Text = EmptyStr then
  begin
    uUtils.MsgOk('Cnpj ou cpf não pode ser nulo!',
    'Favor informar cnpj ou cpf');
    SWHComboBox1.SetFocus;
    Abort;
  end;
end;

end.
