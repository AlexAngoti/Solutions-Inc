unit uEntradaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  SWHDBLookupComboBox, Vcl.Mask, SWHMaskEdit, Vcl.ComCtrls, Vcl.StdCtrls,
  SWHDBEdit, dxGDIPlusClasses, SWHComboBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmEntradaEstoque = class(TForm)
    Panel1: TPanel;
    imgLogoTop: TImage;
    lblNomeLogoTop: TLabel;
    SpeedButton1: TSpeedButton;
    pnlCentral: TPanel;
    pnlSubBot: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    qryEstoque: TFDQuery;
    dsEstoque: TDataSource;
    pnlSubCentral: TPanel;
    lblDataVencimento: TLabel;
    lblCliente: TLabel;
    spbPesquisa: TSpeedButton;
    lblDoc: TLabel;
    dtpDataVencimento: TDateTimePicker;
    cbxCliente: TSWHDBLookupComboBox;
    edtNumDoc: TSWHDBEdit;
    lblMovimento: TLabel;
    cbxTipoMovimento: TSWHComboBox;
    lblFornecedor: TLabel;
    btnFornecedor: TSpeedButton;
    cbFornecedor: TSWHDBLookupComboBox;
    lblProduto: TLabel;
    btnProdutos: TSpeedButton;
    cbxProdutos: TSWHDBLookupComboBox;
    edtValor: TSWHMaskEdit;
    lblValor: TLabel;
    edtUnitario: TSWHMaskEdit;
    lblUni: TLabel;
    edtTotal: TSWHMaskEdit;
    lblTotal: TLabel;
    edtValorTotal: TSWHMaskEdit;
    lblValorTotal: TLabel;
    qryEstoqueid: TLargeintField;
    qryEstoquetipomovimento: TWideStringField;
    qryEstoquenumerodocumento: TWideStringField;
    qryEstoquefornecedor: TIntegerField;
    qryEstoquecliente: TIntegerField;
    qryEstoquedatamovimento: TDateField;
    qryEstoqueproduto: TIntegerField;
    qryEstoquequantidade: TBCDField;
    qryEstoquevalorunitario: TBCDField;
    qryEstoquevalortotal: TBCDField;
    qryEstoquesituacao: TWideStringField;
    qryEstoquevalordoc: TBCDField;
    qryCliente: TFDQuery;
    dsCliente: TDataSource;
    qryClienteid: TLargeintField;
    qryClientesituacao: TIntegerField;
    qryClientetipopessoa: TIntegerField;
    qryClientefisicojuridico: TIntegerField;
    qryClientecnpjcpf: TWideStringField;
    qryClientenomerazao: TWideStringField;
    qryClienteierg: TWideStringField;
    qryClientenomefantasia: TWideStringField;
    qryClienteemail: TWideStringField;
    qryClientecontato: TWideStringField;
    qryClientetelefone: TWideStringField;
    qryClientecep: TWideStringField;
    qryClienteendereco: TWideStringField;
    qryClientebairro: TWideStringField;
    qryClientecomplemento: TWideStringField;
    qryClientecidade: TWideStringField;
    qryClientetelefone2: TWideStringField;
    qryClienteuf: TWideStringField;
    qryClientenumero: TWideStringField;
    qryClientedatanasc: TDateField;
    qryFornecedor: TFDQuery;
    LargeintField1: TLargeintField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    DateField1: TDateField;
    dsFornecedor: TDataSource;
    qryProduto: TFDQuery;
    dsProduto: TDataSource;
    qryProdutoid: TLargeintField;
    qryProdutonome: TWideStringField;
    qryProdutosituacao: TIntegerField;
    qryProdutopresobruto: TBCDField;
    qryProdutopesoliquedo: TBCDField;
    qryProdutodescricao: TWideStringField;
    qryProdutovalorunitario: TBCDField;
    qryProdutoimagem: TBlobField;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spbPesquisaClick(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure cbxTipoMovimentoChange(Sender: TObject);
    procedure edtUnitarioExit(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure ClearField;
    procedure SalvaCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaEstoque: TfrmEntradaEstoque;

implementation

uses
  uDM, uUtils, uPesquisaPadrao, uEscurecerFundo, uPesquisaPadraoForn, uPesquisaProduto;

{$R *.dfm}

procedure TfrmEntradaEstoque.btnCancelarClick(Sender: TObject);
begin
  if MsgConfirmar('Tem certeza de que deseja cancelar esta operação?', 'Nenhum processo será salvo.') = mrok then
  begin
    Self.OpenDataSet;
    Self.ClearField;
  end;
end;

procedure TfrmEntradaEstoque.btnFornecedorClick(Sender: TObject);
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmPesquisaPadraoForn := TfrmPesquisaPadraoForn.Create(Self);
  try
    frmEscurecerFundo.Show;
    frmPesquisaPadraoForn.ShowModal;
    if frmPesquisaPadraoForn.ModalResult = mrOk then
    begin
      qryEstoquefornecedor.AsInteger := frmPesquisaPadraoForn.qryPadraoId.AsInteger;
    end;
  finally
    frmEscurecerFundo.Free;
    frmPesquisaPadraoForn.Free;
  end;
end;

procedure TfrmEntradaEstoque.btnNovoLancamentoClick(Sender: TObject);
begin
  Self.SalvaCampo;
  qryEstoque.Post;
  if MsgConfirmar('Deseja continuar no mesmo documento?', 'Se continuar, os campos não serão limpos.') <> mrOk then
  begin
    Self.OpenDataSet;
    Self.ClearField;
  end;
end;

procedure TfrmEntradaEstoque.btnProdutosClick(Sender: TObject);
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmConsultaProdutos := TfrmConsultaProdutos.Create(Self);
  try
    frmEscurecerFundo.Show;
    frmConsultaProdutos.ShowModal;
    if frmConsultaProdutos.ModalResult = mrOk then
    begin
      qryEstoqueproduto.AsInteger := qryProdutoid.AsInteger;
    end;
  finally
    frmEscurecerFundo.Free;
    frmConsultaProdutos.Free;
  end;
end;

procedure TfrmEntradaEstoque.cbxTipoMovimentoChange(Sender: TObject);
begin
  if cbxTipoMovimento.ItemIndex = 0 then
  begin
    cbxCliente.Enabled    := False;
    spbPesquisa.Enabled   := False;
    lblCliente.Enabled    := False;
    cbFornecedor.Enabled  := True;
    btnFornecedor.Enabled := True;
    lblFornecedor.Enabled := True;
  end
  else
  begin
    cbxCliente.Enabled    := True;
    spbPesquisa.Enabled   := True;
    lblCliente.Enabled    := True;
    cbFornecedor.Enabled  := False;
    btnFornecedor.Enabled := False;
    lblFornecedor.Enabled := False;
  end;
end;

procedure TfrmEntradaEstoque.ClearField;
begin
  edtValor.Clear;
  edtUnitario.Clear;
  edtTotal.Clear;
  edtValorTotal.Clear;
  cbxTipoMovimento.ItemIndex := -1;
end;

procedure TfrmEntradaEstoque.edtUnitarioExit(Sender: TObject);
begin
  qryEstoquevalortotal.AsCurrency := qryEstoquequantidade.AsInteger * qryEstoquevalorunitario.AsCurrency;
end;

procedure TfrmEntradaEstoque.FormResize(Sender: TObject);
begin
  pnlSubCentral.Left := Round(pnlCentral.Width / 2 - pnlSubCentral.Width / 2);
end;

procedure TfrmEntradaEstoque.FormShow(Sender: TObject);
begin
  Self.OpenDataSet;
  dtpDataVencimento.Date := Date;
end;

procedure TfrmEntradaEstoque.OpenDataSet;
begin
  qryEstoque.Close;
  qryEstoque.Open;
  qryEstoque.Insert;

  qryCliente.Close;
  qryCliente.Open;

  qryFornecedor.Close;
  qryFornecedor.Open;

  qryProduto.Close;
  qryProduto.Open;
end;

procedure TfrmEntradaEstoque.SalvaCampo;
begin
  if cbxTipoMovimento.ItemIndex = 0 then
  begin
    qryEstoquetipomovimento.AsString := 'ENT';
  end
  else
  begin
    qryEstoquetipomovimento.AsString := 'SAI';
  end;

  qryEstoquedatamovimento.AsDateTime := dtpDataVencimento.Date;
  qryEstoquequantidade.AsFloat       := StrToFloat(edtValor.Text);
  qryEstoquevalorunitario.AsFloat    := StrToFloat(edtUnitario.Text);
  qryEstoquevalortotal.AsFloat       := StrToFloat(edtTotal.Text);
  qryEstoquevalordoc.AsFloat         := StrToFloat(edtValorTotal.Text);
end;

procedure TfrmEntradaEstoque.spbPesquisaClick(Sender: TObject);
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(Self);
  try
    frmEscurecerFundo.Show;
    frmPesquisaPadrao.ShowModal;
    if frmPesquisaPadrao.ModalResult = mrOk then
    begin
      qryEstoquecliente.AsInteger := frmPesquisaPadrao.qryPadraoId.AsInteger;
    end;
  finally
    frmEscurecerFundo.Free;
    frmPesquisaPadrao.Free;
  end;
end;

procedure TfrmEntradaEstoque.SpeedButton1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
