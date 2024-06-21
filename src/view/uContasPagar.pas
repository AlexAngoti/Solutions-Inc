unit uContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.Imaging.pngimage, dxGDIPlusClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TfrmContasPagar = class(TForm)
    pnlCentral: TPanel;
    pnlCentTop: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlLinha: TPanel;
    pnlBaixaLanc: TPanel;
    btnBaixarLancamento: TSpeedButton;
    pnlCentBot: TPanel;
    pnlLinha3: TPanel;
    pnlSubPesquisa: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlPesquisa: TPanel;
    shpPesquisa: TShape;
    spbPesquisa: TSpeedButton;
    edtPesquisa: TEdit;
    pnlLinha4: TPanel;
    RadioGroup1: TRadioGroup;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    cbFaturados: TCheckBox;
    pnlCentralInfo: TPanel;
    pnlQuantidade: TPanel;
    lblVlrQuantidade: TLabel;
    lblQuantidade: TLabel;
    pnlRecebimentoAtrasado: TPanel;
    lblRecebimentoAtrasado: TLabel;
    lblVlrRecebimentoAtrasado: TLabel;
    pnlRecebimentoHoje: TPanel;
    lblRecebimentoHoje: TLabel;
    lblVlrRecebimentoHoje: TLabel;
    pnlTotalReceber: TPanel;
    lblTotalaReceber: TLabel;
    lblTotalReceber: TLabel;
    pnlRecebimentosFuturos: TPanel;
    lblRecebimentosFuturos: TLabel;
    lblVlrRecebimentosFuturos: TLabel;
    pnlRodape: TPanel;
    lblExcluir: TLabel;
    lblAlterar: TLabel;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    imgLogoTop: TImage;
    lblNomeLogoTop: TLabel;
    dspContasPagar: TDataSetProvider;
    cdsContasPagar: TClientDataSet;
    cdsContasPagarid: TLargeintField;
    cdsContasPagardataemissao: TDateField;
    cdsContasPagardatavencimento: TDateField;
    cdsContasPagarvalor: TBCDField;
    cdsContasPagarformapgto: TIntegerField;
    cdsContasPagardatabaixa: TDateField;
    cdsContasPagardescricao: TWideStringField;
    cdsContasPagarnumerodoc: TWideStringField;
    cdsContasPagarobservaobaixa: TWideStringField;
    dsContasPagar: TDataSource;
    dsGridPagar: TDataSource;
    qryGridPagar: TFDQuery;
    qryGridPagarid: TLargeintField;
    qryGridPagardataemissao: TDateField;
    qryGridPagardatavencimento: TDateField;
    qryGridPagarvalor: TBCDField;
    qryGridPagarformapgto: TIntegerField;
    qryGridPagardatabaixa: TDateField;
    qryGridPagardescricao: TWideStringField;
    qryGridPagarnumerodoc: TWideStringField;
    qryGridPagarobservaobaixa: TWideStringField;
    cdsContasPagaridfornecedor: TIntegerField;
    cdsContasPagarnumeroorigem: TIntegerField;
    qryGridPagaridfornecedor: TIntegerField;
    qryGridPagarnumeroorigem: TIntegerField;
    dbgRegistros: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure spbPesquisaClick(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure btnBaixarLancamentoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure OpenDataSet;
    procedure CalculaPainel;
    procedure CentralizaTela;
    procedure ArredondaPanel;
    procedure CentralizaResultado;
    procedure ChamaTelaAbertura;
    procedure ChamaTelaFechar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasPagar: TfrmContasPagar;

implementation

uses
  UDm, uUtils, uBaixaPagar, uMovContasPagar, uEscurecerFundo;

{$R *.dfm}

{ TfrmContasPagar }

procedure TfrmContasPagar.ArredondaPanel;
begin
  RoundedPanel(pnlSubTop, 12);
  RoundedPanel(pnlCentral, 12);
  RoundedPanel(pnlNovoLanc, 12);
  RoundedPanel(pnlBaixaLanc, 12);
end;

procedure TfrmContasPagar.btnBaixarLancamentoClick(Sender: TObject);
begin
  if cbFaturados.Checked = False then
  begin
    cdsContasPagar.Close;
    cdsContasPagar.ParamByName('id').AsInteger := qryGridPagarid.AsInteger;
    cdsContasPagar.Open;
    cdsContasPagar.Edit;
    Self.ChamaTelaFechar;
    Self.OpenDataSet;
    Self.CalculaPainel;
  end;
end;

procedure TfrmContasPagar.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmContasPagar.btnNovoLancamentoClick(Sender: TObject);
begin
  cdsContasPagar.Insert;
  Self.ChamaTelaAbertura;
  Self.OpenDataSet;
  Self.CalculaPainel;
end;

procedure TfrmContasPagar.CalculaPainel;
var
  cTotalPag, cPagFuturo, cPagHoje, cPagAtrasado, cQuantidade: Currency;
begin
  cTotalPag    := 0;
  cPagFuturo   := 0;
  cPagHoje     := 0;
  cPagAtrasado := 0;
  cQuantidade  := 0;

  with (dsContasPagar.DataSet as TClientDataSet) do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('datavencimento').AsDateTime < Date then
      begin
        cPagAtrasado := cPagAtrasado + FieldByName('valor').AsCurrency;
      end;

      if FieldByName('datavencimento').AsDateTime = Date then
      begin
        cPagHoje := cPagHoje + FieldByName('valor').AsCurrency;
      end;

      if FieldByName('datavencimento').AsDateTime > Date then
      begin
        cPagFuturo := cPagFuturo + FieldByName('valor').AsCurrency;
      end;

      cTotalPag := cTotalPag + FieldByName('valor').AsCurrency;
      cQuantidade       := cQuantidade + 1;
      Next;
    end;
  end;

  lblVlrQuantidade.Caption  := CurrToStr(cQuantidade);
  lblVlrRecebimentoAtrasado.Caption := 'R$ ' + FormatFloat('#,##0.00', cPagAtrasado);
  lblVlrRecebimentoHoje.Caption     := 'R$ ' + FormatFloat('#,##0.00', cPagHoje);
  lblVlrRecebimentosFuturos.Caption := 'R$ ' + FormatFloat('#,##0.00', cPagFuturo);
  lblTotalReceber.Caption           := 'R$ ' + FormatFloat('#,##0.00', cTotalPag);
end;

procedure TfrmContasPagar.CentralizaResultado;
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

procedure TfrmContasPagar.CentralizaTela;
begin
  pnlCentralInfo.left           := Round(pnlCentral.Width/2 - pnlCentralInfo.Width/2);
  pnlCentBot.Top                := (Round(pnlCentral.Height/2 - pnlCentBot.Height/2));
  pnlCentBot.Height             := Screen.Height;
  pnlCentBot.Width              := Screen.Width;
end;

procedure TfrmContasPagar.ChamaTelaAbertura;
var
  frmEscurecer: TfrmEscurecerFundo;
begin
  frmEscurecer := TfrmEscurecerFundo.Create(Self);
  frmMovPagar := TfrmMovPagar.Create(Self);
  try
    frmEscurecer.Show;
    frmMovPagar.ShowModal;
  finally
    frmMovPagar.Free;
    frmEscurecer.Free;
  end;
end;

procedure TfrmContasPagar.ChamaTelaFechar;
var
  frmBaixa: TfrmEscurecerFundo;
begin
  frmBaixa := TfrmEscurecerFundo.Create(Self);
  frmBaixaPagar := TfrmBaixaPagar.Create(Self);
  try
    frmBaixa.Show;
    frmBaixaPagar.ShowModal;
  finally
    frmBaixaPagar.Free;
    frmBaixa.Free;
  end;
end;

procedure TfrmContasPagar.dbgRegistrosDblClick(Sender: TObject);
begin
  if cbFaturados.Checked = False then
  begin
    cdsContasPagar.Edit;
    Self.ChamaTelaAbertura;
    Self.OpenDataSet;
  end;
end;

procedure TfrmContasPagar.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmContasPagar.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DELETE then
  begin
    if cbFaturados.Checked = False then
    begin
      if MsgConfirmar('Deseja realmente excluir este registro?', 'Esta ação é irreversível e o registro será permanentemente excluído.') = mrOk then
      begin
        qryGridPagar.Delete;
        Self.OpenDataSet;
        Self.CalculaPainel;
      end;
    end;
  end;
end;

procedure TfrmContasPagar.FormResize(Sender: TObject);
begin
  Self.CentralizaTela;
  Self.ArredondaPanel;
  Self.CentralizaResultado;
end;

procedure TfrmContasPagar.FormShow(Sender: TObject);
begin
  Self.CalculaPainel;
  dtpDataInicial.Date := Date - 30;
  dtpDataFinal.Date   := Date;
  spbPesquisaClick(Sender);
end;

procedure TfrmContasPagar.OpenDataSet;
begin
  (dsContasPagar.DataSet as TClientDataSet).Close;
  (dsContasPagar.DataSet as TClientDataSet).ParamByName('id').AsInteger := 0;
  (dsContasPagar.DataSet as TClientDataSet).Open;

  qryGridPagar.Close;
  qryGridPagar.ParamByName('dataini').AsDate := dtpDataInicial.Date;
  qryGridPagar.ParamByName('datafin').AsDate := dtpDataFinal.Date;
  if cbFaturados.Checked = false then
    qryGridPagar.ParamByName('tipo').AsInteger := 0
  else
    qryGridPagar.ParamByName('tipo').AsInteger := 1;
  qryGridPagar.Open;
end;

procedure TfrmContasPagar.spbPesquisaClick(Sender: TObject);
var
  filtro: string;
begin
  Self.OpenDataSet;
  filtro := '';
  // Filtro por descrição ou número de documento
  if edtPesquisa.Text <> EmptyStr then
  begin
    if RadioGroup1.ItemIndex = 0 then
      filtro := filtro + 'UPPER(descricao) LIKE ' + QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%')
    else
      filtro := filtro + 'UPPER(numerodoc) LIKE ' + QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
  end;
  dsGridPagar.DataSet.Filter := filtro;
  dsGridPagar.DataSet.Filtered := True;
end;

end.
