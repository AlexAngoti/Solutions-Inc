unit UContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls, dxGDIPlusClasses;

type
  TfrmContasReceber = class(TForm)
    pnlCentral: TPanel;
    pnlCentTop: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlLinha: TPanel;
    pnlCentBot: TPanel;
    pnlTotalReceber: TPanel;
    pnlRecebimentoHoje: TPanel;
    pnlRecebimentoAtrasado: TPanel;
    pnlQuantidade: TPanel;
    lblVlrQuantidade: TLabel;
    lblQuantidade: TLabel;
    lblRecebimentoAtrasado: TLabel;
    lblVlrRecebimentoAtrasado: TLabel;
    lblRecebimentoHoje: TLabel;
    lblVlrRecebimentoHoje: TLabel;
    lblTotalaReceber: TLabel;
    lblTotalReceber: TLabel;
    pnlCentralInfo: TPanel;
    pnlRecebimentosFuturos: TPanel;
    lblRecebimentosFuturos: TLabel;
    lblVlrRecebimentosFuturos: TLabel;
    pnlLinha3: TPanel;
    dbgRegistros: TDBGrid;
    pnlRodape: TPanel;
    lblExcluir: TLabel;
    lblAlterar: TLabel;
    pnlBaixaLanc: TPanel;
    btnBaixarLancamento: TSpeedButton;
    dspContasReceber: TDataSetProvider;
    cdsContasReceber: TClientDataSet;
    dsContasReceber: TDataSource;
    pnlSubPesquisa: TPanel;
    pnlPesquisa: TPanel;
    shpPesquisa: TShape;
    spbPesquisa: TSpeedButton;
    edtPesquisa: TEdit;
    pnlLinha4: TPanel;
    cdsContasReceberid: TLargeintField;
    cdsContasReceberdataemissao: TDateField;
    cdsContasReceberdatavencimento: TDateField;
    cdsContasRecebervalor: TBCDField;
    cdsContasReceberformapgto: TIntegerField;
    cdsContasReceberidcliente: TIntegerField;
    cdsContasReceberdatabaixa: TDateField;
    cdsContasReceberdescricao: TWideStringField;
    cdsContasRecebernumerodoc: TWideStringField;
    dsGridReceber: TDataSource;
    qryGridReceber: TFDQuery;
    RadioGroup1: TRadioGroup;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    cbFaturados: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    cdsContasReceberobservaobaixa: TWideStringField;
    qryGridReceberid: TLargeintField;
    qryGridReceberdataemissao: TDateField;
    qryGridReceberdatavencimento: TDateField;
    qryGridRecebervalor: TBCDField;
    qryGridReceberformapgto: TIntegerField;
    qryGridReceberidcliente: TIntegerField;
    qryGridReceberdatabaixa: TDateField;
    qryGridReceberdescricao: TWideStringField;
    qryGridRecebernumerodoc: TWideStringField;
    qryGridReceberobservaobaixa: TWideStringField;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    imgLogoTop: TImage;
    lblNomeLogoTop: TLabel;
    procedure FormResize(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure btnBaixarLancamentoClick(Sender: TObject);
    procedure spbPesquisaClick(Sender: TObject);
    procedure dbgRegistrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure ArredondaPainel;
    procedure CentralizandoPanel;
    procedure OpenDataSet;
    procedure CalculaPainel;
    procedure CentralizaResultado;
    procedure ChamaTelaAbertura;
    procedure ChamaTelaFechar;
    procedure FiltraTitulo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasReceber: TfrmContasReceber;

implementation

uses
  UDm, uUtils, uMovContasReceber, uEscurecerFundo, uBaixaReceber;

{$R *.dfm}

procedure TfrmContasReceber.ArredondaPainel;
begin
  RoundedPanel(pnlCentral, 12);
  RoundedPanel(pnlNovoLanc, 12);
  RoundedPanel(pnlBaixaLanc, 12);
end;

procedure TfrmContasReceber.btnBaixarLancamentoClick(Sender: TObject);
begin
  if cbFaturados.Checked = False then
  begin
    cdsContasReceber.Close;
    cdsContasReceber.ParamByName('id').AsInteger := qryGridReceberid.AsInteger;
    cdsContasReceber.Open;
    cdsContasReceber.Edit;
    Self.ChamaTelaFechar;
    Self.OpenDataSet;
    Self.CalculaPainel;
  end;
end;

procedure TfrmContasReceber.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmContasReceber.FiltraTitulo;
var
  filtro: string;
begin
  filtro := '';
  // Filtro por descrição ou número de documento
  if edtPesquisa.Text <> EmptyStr then
  begin
    if RadioGroup1.ItemIndex = 0 then
      filtro := filtro + 'UPPER(descricao) LIKE ' + QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%')
    else
      filtro := filtro + 'UPPER(numerodoc) LIKE ' + QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
  end;
  dsGridReceber.DataSet.Filter := filtro;
  dsGridReceber.DataSet.Filtered := True;
end;

procedure TfrmContasReceber.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmContasReceber.FormResize(Sender: TObject);
begin
  Self.CentralizandoPanel;
  Self.ArredondaPainel;
  Self.CentralizaResultado;
end;

procedure TfrmContasReceber.FormShow(Sender: TObject);
begin
  Self.CalculaPainel;
  Self.OpenDataSet;
  dtpDataInicial.Date := Date - 30;
  dtpDataFinal.Date   := Date;
  spbPesquisaClick(Sender);
end;

procedure TfrmContasReceber.OpenDataSet;
begin
  (dsContasReceber.DataSet as TClientDataSet).Close;
  (dsContasReceber.DataSet as TClientDataSet).ParamByName('id').AsInteger := 0;
  (dsContasReceber.DataSet as TClientDataSet).Open;

  qryGridReceber.Close;
  qryGridReceber.ParamByName('dataini').AsDate := dtpDataInicial.Date;
  qryGridReceber.ParamByName('datafin').AsDate := dtpDataFinal.Date;
  if cbFaturados.Checked = false then
    qryGridReceber.ParamByName('tipo').AsInteger := 0
  else
    qryGridReceber.ParamByName('tipo').AsInteger := 1;
  qryGridReceber.Open;
end;

procedure TfrmContasReceber.spbPesquisaClick(Sender: TObject);
begin
  Self.OpenDataSet;
  Self.FiltraTitulo;
end;

procedure TfrmContasReceber.btnNovoLancamentoClick(Sender: TObject);
begin
  cdsContasReceber.Insert;
  Self.ChamaTelaAbertura;
  Self.OpenDataSet;
  Self.CalculaPainel;
end;

procedure TfrmContasReceber.CalculaPainel;
var
  cTotalRecebimento, cRecebFuturos, cRecebHoje, cRecebeAtrasado, cQuantidade: Currency;
begin
  cTotalRecebimento := 0;
  cRecebFuturos     := 0;
  cRecebHoje        := 0;
  cRecebeAtrasado   := 0;
  cQuantidade       := 0;

  with (dsContasReceber.DataSet as TClientDataSet) do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('datavencimento').AsDateTime < Date then
      begin
        cRecebeAtrasado := cRecebeAtrasado + FieldByName('valor').AsCurrency;
      end;

      if FieldByName('datavencimento').AsDateTime = Date then
      begin
        cRecebHoje := cRecebHoje + FieldByName('valor').AsCurrency;
      end;

      if FieldByName('datavencimento').AsDateTime > Date then
      begin
        cRecebFuturos := cRecebFuturos + FieldByName('valor').AsCurrency;
      end;

      cTotalRecebimento := cTotalRecebimento + FieldByName('valor').AsCurrency;
      cQuantidade       := cQuantidade + 1;
      Next;
    end;
  end;

  lblVlrQuantidade.Caption          := CurrToStr(cQuantidade);
  lblVlrRecebimentoAtrasado.Caption := 'R$ ' + FormatFloat('#,##0.00', cRecebeAtrasado);
  lblVlrRecebimentoHoje.Caption     := 'R$ ' + FormatFloat('#,##0.00', cRecebHoje);
  lblVlrRecebimentosFuturos.Caption := 'R$ ' + FormatFloat('#,##0.00', cRecebFuturos);
  lblTotalReceber.Caption           := 'R$ ' + FormatFloat('#,##0.00', cTotalRecebimento);
end;

procedure TfrmContasReceber.CentralizandoPanel;
begin
  pnlCentral.Left := Round(frmContasReceber.Width / 2 - pnlCentral.Width / 2);
  pnlCentral.Top := Round(frmContasReceber.Height / 2 - pnlCentral.Height / 2);
end;

procedure TfrmContasReceber.CentralizaResultado;
begin
  lblTotalReceber.Left           := Round(pnlTotalReceber.Width/2 - pnlTotalReceber.Width/2);
  lblTotalaReceber.Left          := Round(pnlTotalReceber.Width/2 - pnlTotalReceber.Width/2);
  lblRecebimentoAtrasado.Left    := Round(pnlRecebimentoAtrasado.Width/2 - pnlRecebimentoAtrasado.Width/2);
  lblVlrRecebimentoAtrasado.Left := Round(pnlRecebimentoAtrasado.Width/2 - pnlRecebimentoAtrasado.Width/2);
  lblRecebimentoHoje.Left        := Round(pnlRecebimentoHoje.Width/2 - pnlRecebimentoHoje.Width/2);
  lblVlrRecebimentoHoje.Left     := Round(pnlRecebimentoHoje.Width/2 - pnlRecebimentoHoje.Width/2);
  lblRecebimentosFuturos.Left    := Round(pnlRecebimentosFuturos.Width/2 - pnlRecebimentosFuturos.Width/2);
  lblVlrRecebimentosFuturos.Left := Round(pnlRecebimentosFuturos.Width/2 - pnlRecebimentosFuturos.Width/2);
end;

procedure TfrmContasReceber.ChamaTelaAbertura;
var
  frmEscurecer: TfrmEscurecerFundo;
begin
  frmEscurecer := TfrmEscurecerFundo.Create(Self);
  frmMovReceber := TfrmMovReceber.Create(Self);
  try
    frmEscurecer.Show;
    frmMovReceber.ShowModal;
  finally
    frmMovReceber.Free;
    frmEscurecer.Free;
  end;
end;

procedure TfrmContasReceber.ChamaTelaFechar;
var
  frmBaixa: TfrmEscurecerFundo;
begin
  frmBaixa := TfrmEscurecerFundo.Create(Self);
  frmMovBaixaReceber := TfrmMovBaixaReceber.Create(Self);
  try
    frmBaixa.Show;
    frmMovBaixaReceber.ShowModal;
  finally
    frmMovBaixaReceber.Free;
    frmBaixa.Free;
  end;
end;

procedure TfrmContasReceber.dbgRegistrosDblClick(Sender: TObject);
begin
  if cbFaturados.Checked = False then
  begin
    cdsContasReceber.Close;
    cdsContasReceber.ParamByName('id').AsInteger := qryGridReceberid.AsInteger;
    cdsContasReceber.Open;
    cdsContasReceber.Edit;
    Self.ChamaTelaAbertura;
    Self.OpenDataSet;
    Self.CalculaPainel;
  end;
end;

procedure TfrmContasReceber.dbgRegistrosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DELETE then
  begin
    if cbFaturados.Checked = False then
    begin
      if MsgConfirmar('Deseja realmente excluir este registro?', 'Esta ação é irreversível e o registro será permanentemente excluído.') = mrOk then
      begin
        qryGridReceber.Delete;
        Self.OpenDataSet;
        Self.CalculaPainel;
      end;
    end;
  end;
end;

end.
