unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, SWHDBEdit, SWHDBComboBox, SWHDBLookupComboBox, SWHComboBox,
  FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  SWHMaskEdit;

type
  TfrmCadastroProduto = class(TfrmCadastroPadrao)
    pnlCentral: TPanel;
    lblNome: TLabel;
    lblDescricao: TLabel;
    lblPeso: TLabel;
    lblAtivo: TLabel;
    lblPreco: TLabel;
    edtNome: TSWHDBEdit;
    imgFoto: TDBImage;
    lblLiq: TLabel;
    pnlCarregaImagem: TPanel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    lblImage: TLabel;
    cdsCadastroPadraonome: TWideStringField;
    cdsCadastroPadraosituacao: TIntegerField;
    cdsCadastroPadraopresobruto: TBCDField;
    cdsCadastroPadraopesoliquedo: TBCDField;
    cdsCadastroPadraodescricao: TWideStringField;
    cdsCadastroPadraovalorunitario: TBCDField;
    cbxAtivo: TSWHComboBox;
    OpenDialog1: TOpenDialog;
    qryBuscaEstoque: TFDQuery;
    edtPeso: TSWHMaskEdit;
    edtLiq: TSWHMaskEdit;
    edtPreco: TSWHMaskEdit;
    cdsCadastroPadraoid: TLargeintField;
    cdsCadastroPadraoimagem: TBlobField;
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
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
  frmCadastroProduto: TfrmCadastroProduto;

implementation

uses
  uConsultaProduto, uEscurecerFundo, uDM, uUtils;

{$R *.dfm}

{ TfrmCadastroProduto }

procedure TfrmCadastroProduto.BloqueiaCampo;
begin
  inherited;
  edtNome.Enabled      := False;
  edtPeso.Enabled      := False;
  edtPreco.Enabled     := False;
  edtPeso.Enabled      := False;
  edtLiq.Enabled       := False;
  lblNome.Enabled      := False;
  cbxAtivo.Enabled     := False;
  lblDescricao.Enabled := False;
  lblPeso.Enabled      := False;
  lblAtivo.Enabled     := False;
  lblPreco.Enabled     := False;
  lblLiq.Enabled       := False;
  lblImage.Enabled     := False;
  pnlCarregaImagem.Enabled := False;
  DBMemo1.Enabled      := False;
end;

procedure TfrmCadastroProduto.btnCancelarClick(Sender: TObject);
begin
  inherited;
  edtNome.Clear;
  DBMemo1.Clear;
  Self.ClearField;
end;

procedure TfrmCadastroProduto.btnConfirmarClick(Sender: TObject);
begin
  cdsCadastroPadraosituacao.AsInteger := cbxAtivo.ItemIndex;
  cdsCadastroPadraopresobruto.AsFloat  := StrToFloat(edtPeso.Text);
  cdsCadastroPadraopesoliquedo.AsFloat := StrToFloat(edtLiq.Text);
  cdsCadastroPadraovalorunitario.AsFloat := StrToFloat(edtPreco.Text);
  inherited;
  cdsCadastroPadrao.Insert;
end;

procedure TfrmCadastroProduto.btnExcluirClick(Sender: TObject);
begin
  inherited;
  edtNome.Clear;
  DBMemo1.Clear;
  Self.ClearField;
end;

procedure TfrmCadastroProduto.ClearField;
begin
  inherited;
  cbxAtivo.ItemIndex := -1;
  edtPeso.Clear;
  edtLiq.Clear;
  edtPreco.Clear;
end;

procedure TfrmCadastroProduto.ExcluiAcesso;
begin
  inherited;
  qryBuscaEstoque.Close;
  qryBuscaEstoque.ParamByName('produto').AsInteger := cdsCadastroPadraoid.AsInteger;
  qryBuscaEstoque.Open;

  if not qryBuscaEstoque.IsEmpty then
  begin
    MsgOk('Esse produto já possui movimentação de estoque!', 'Não foi possivel excluir o produto.');
    Abort;
  end;
end;

procedure TfrmCadastroProduto.FormResize(Sender: TObject);
begin
  inherited;
  pnlCentral.Left := Round(frmCadastroProduto.Width / 2 - pnlCentral.Width / 2);
end;

procedure TfrmCadastroProduto.LiberaCampo;
begin
  inherited;
  edtNome.Enabled      := True;
  edtPeso.Enabled      := True;
  edtPreco.Enabled     := True;
  edtPeso.Enabled      := True;
  edtLiq.Enabled       := True;
  lblNome.Enabled      := True;
  cbxAtivo.Enabled     := True;
  lblDescricao.Enabled := True;
  lblPeso.Enabled      := True;
  lblAtivo.Enabled     := True;
  lblPreco.Enabled     := True;
  lblLiq.Enabled       := True;
  lblImage.Enabled     := True;
  pnlCarregaImagem.Enabled := True;
  DBMemo1.Enabled      := True;
end;

procedure TfrmCadastroProduto.OpenScreen;
begin
  inherited;
  frmEscurecerFundo  := TfrmEscurecerFundo.Create(Self);
  frmConsultaProduto := TfrmConsultaProduto.Create(Self);
  try
    frmEscurecerFundo.Show;
    frmConsultaProduto.ShowModal;
    if frmConsultaProduto.ModalResult = mrOk then
    begin
       cdsCadastroPadrao.Edit;
       cbxAtivo.ItemIndex := cdsCadastroPadraosituacao.AsInteger;
       edtPreco.Text      := cdsCadastroPadraovalorunitario.AsString;
       edtPeso.Text       := cdsCadastroPadraopresobruto.AsString;
       edtLiq.Text        := cdsCadastroPadraopesoliquedo.AsString;
       Self.LiberaCampo;
    end;
  finally
    frmEscurecerFundo.Free;
    frmConsultaProduto.Free;
  end;
end;

procedure TfrmCadastroProduto.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Filter := 'Arquivos de Imagem|*.bmp;*.jpg;*.jpeg;*.png;*.gif';

  // Mostrar o diálogo
  if OpenDialog1.Execute then
  begin
    // Carregar a imagem selecionada no componente TImage
    imgFoto.Picture.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TfrmCadastroProduto.ValidaRegistro;
begin
  inherited;
  if cbxAtivo.Text = EmptyStr then
  begin
    MsgOk('Favor informar situação do produto!', 'Situação do produto é obrigatório');
    Abort;
  end;

  if edtNome.Text = EmptyStr then
  begin
    MsgOk('Favor informar nome do produto!', 'Nome do produto é obrigatório');
    Abort;
  end;

  if edtPreco.Text = EmptyStr then
  begin
    MsgOk('Favor informar preço do produto!', 'Preço do produto é obrigatório');
    Abort;
  end;
end;

end.
