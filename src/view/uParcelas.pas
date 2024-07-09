unit uParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, SWHDBComboBox, SWHEdit, Data.DB, Vcl.Grids, Vcl.DBGrids,
  dxGDIPlusClasses, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDesignLayer,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppCache, ppParameter, SWHDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient;

type
  TfrmParcelas = class(TForm)
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    Panel1: TPanel;
    lblPesquisar: TLabel;
    SWHEdit1: TSWHEdit;
    Label1: TLabel;
    pnlAdicionar: TPanel;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    lbTotalPedido: TLabel;
    imgLogoTop: TImage;
    Label2: TLabel;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppDBText39: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText58: TppDBText;
    ppDBText60: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel41: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText66: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel47: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    SWHDBLookupComboBox1: TSWHDBLookupComboBox;
    dsVendas: TDataSource;
    dsFormaPgto: TDataSource;
    qryFormaPgto: TFDQuery;
    qryFormaPgtoid: TLargeintField;
    qryFormaPgtonome: TWideStringField;
    qryFormaPgtoabreviação: TWideStringField;
    qryFormaPgtotipopgto: TIntegerField;
    qryFormaPgtoativo: TIntegerField;
    qryFormaPgtoatualizapagar: TIntegerField;
    qryFormaPgtoatualizareceber: TIntegerField;
    cdsParcelas: TClientDataSet;
    dsParcelas: TDataSource;
    cdsParcelasparcela: TIntegerField;
    cdsParcelasvalor: TCurrencyField;
    cdsParcelasdatavenc: TDateField;
    qryAtuReceber: TFDQuery;
    dsAtuReceber: TDataSource;
    qryAtuReceberid: TLargeintField;
    qryAtuReceberdataemissao: TDateField;
    qryAtuReceberdatavencimento: TDateField;
    qryAtuRecebervalor: TBCDField;
    qryAtuReceberformapgto: TIntegerField;
    qryAtuReceberidcliente: TIntegerField;
    qryAtuReceberdatabaixa: TDateField;
    qryAtuReceberdescricao: TWideStringField;
    qryAtuRecebernumerodoc: TWideStringField;
    qryAtuReceberobservaobaixa: TWideStringField;
    qryAtuRecebernumeroorigem: TIntegerField;
    qryEstoque: TFDQuery;
    dsEstoque: TDataSource;
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
    procedure btnFecharClick(Sender: TObject);
    procedure SWHDBLookupComboBox1Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SWHDBLookupComboBox1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParcelas: TfrmParcelas;

implementation

uses
  uFrenteVendas, uDM, uUtils;

{$R *.dfm}

procedure TfrmParcelas.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmParcelas.FormCreate(Sender: TObject);
begin
  cdsParcelas.CreateDataSet;

  qryFormaPgto.Close;
  qryFormaPgto.Open;
end;

procedure TfrmParcelas.SpeedButton1Click(Sender: TObject);
var
  vVenda, vPrimeiro: Integer;
begin
  vVenda    := 0;
  vPrimeiro := 0;
  vVenda := StrToInt(frmFrenteVendas.lbPedido.Caption);
  if qryFormaPgtoatualizareceber.AsInteger = 0 then
  begin
    cdsParcelas.First;
    while not cdsParcelas.Eof do
    begin
      qryAtuReceber.Close;
      qryAtuReceber.Open;
      qryAtuReceber.Insert;
      qryAtuRecebernumerodoc.AsInteger := vVenda;
      qryAtuReceberdataemissao.AsDateTime := Date;
      qryAtuReceberdatavencimento.AsDateTime := cdsParcelasdatavenc.AsDateTime;
      qryAtuRecebervalor.AsCurrency := cdsParcelasvalor.AsCurrency;
      qryAtuReceberformapgto.AsInteger := frmFrenteVendas.qryVendasformapgto.AsInteger;
      qryAtuReceberidcliente.AsInteger := frmFrenteVendas.qryVendascliente.AsInteger;
      if qryFormaPgtotipopgto.AsInteger = 0 then
      begin
        if msgConfirmar('Desejá baixar esse titulos no contas a receber ?', 'O titulo ja será lançado como baixado') = mrok then
        begin
          qryAtuReceberdatabaixa.AsDateTime := Date;
        end;
      end;
      qryAtuRecebernumeroorigem.AsInteger := 0;
      qryAtuReceber.Post;
      cdsParcelas.Next;
    end;
  end;

  frmFrenteVendas.cdsVendaProd.First;
  while not frmFrenteVendas.cdsVendaProd.Eof do
  begin
    qryEstoque.Close;
    qryEstoque.Open;
    qryEstoque.Insert;
    qryEstoquetipomovimento.AsString := 'VEN';
    qryEstoquenumerodocumento.AsInteger  := vVenda;
    qryEstoquecliente.AsInteger          := frmFrenteVendas.qryVendascliente.AsInteger;
    qryEstoquedatamovimento.AsDateTime    := Date;
    qryEstoqueproduto.AsInteger          := frmFrenteVendas.cdsVendaProdproduto.AsInteger;
    qryEstoquequantidade.AsInteger       := frmFrenteVendas.cdsVendaProdqtde.AsInteger;
    qryEstoquevalorunitario.AsFloat      := frmFrenteVendas.cdsVendaProduni.AsFloat;
    qryEstoquevalortotal.AsCurrency      := frmFrenteVendas.cdsVendaProdtotalitem.AsCurrency;
    qryEstoquevalordoc.AsCurrency        := frmFrenteVendas.qryVendasvalortotal.AsCurrency;
    qryEstoque.Post;

    if vPrimeiro = 0 then
    begin
      vPrimeiro := 1;
      frmFrenteVendas.qryVendas.Post;
    end;

    frmFrenteVendas.qryItensVendas.Close;
    frmFrenteVendas.qryItensVendas.Open;
    frmFrenteVendas.qryItensVendas.Insert;
    frmFrenteVendas.qryItensVendasidvenda.AsInteger := vVenda;
    frmFrenteVendas.qryItensVendasproduto.AsInteger := frmFrenteVendas.cdsVendaProdproduto.AsInteger;
    frmFrenteVendas.qryItensVendasquantidade.AsInteger := frmFrenteVendas.cdsVendaProdqtde.AsInteger;
    frmFrenteVendas.qryItensVendasvalorunitario.AsFloat := frmFrenteVendas.cdsVendaProduni.AsFloat;
    frmFrenteVendas.qryItensVendastotalitem.AsCurrency := frmFrenteVendas.cdsVendaProdtotalitem.AsCurrency;
    frmFrenteVendas.qryItensVendas.Post;

    frmFrenteVendas.cdsVendaProd.Next;
  end;

  ModalResult := mrOk;
end;

procedure TfrmParcelas.SpeedButton5Click(Sender: TObject);
var
   vTotal, vParcela: Currency;
  nParcelas, i: Integer;
  DataVencimento: TDateTime;
begin
  cdsParcelas.EmptyDataSet;
  vTotal := 0;
  if qryFormaPgtotipopgto.AsInteger <> 1 then
  begin
    frmFrenteVendas.cdsVendaProd.First;
    while not frmFrenteVendas.cdsVendaProd.Eof do
    begin
      vTotal := frmFrenteVendas.cdsVendaProdtotalitem.AsCurrency;
      frmFrenteVendas.cdsVendaProd.Next;
    end;

    cdsParcelas.Insert;
    cdsParcelasparcela.AsInteger := 1;
    cdsParcelasvalor.AsCurrency  := vTotal;
    cdsParcelasdatavenc.AsDateTime := Date;
    cdsParcelas.Post;
  end
  else
  begin
    // Cálculo do valor total
    vTotal := 0;
    frmFrenteVendas.cdsVendaProd.First;
    while not frmFrenteVendas.cdsVendaProd.Eof do
    begin
      vTotal := vTotal + frmFrenteVendas.cdsVendaProdtotalitem.AsCurrency;
      frmFrenteVendas.cdsVendaProd.Next;
    end;
    // Defina o número de parcelas (aqui está definido como 3, mude conforme necessário)
    nParcelas := StrToInt(SWHEdit1.Text);  // Altere para o número de parcelas desejado
    vParcela  := vTotal / nParcelas;
    DataVencimento := Date;
    for i := 1 to nParcelas do
    begin
      cdsParcelas.Insert;
      cdsParcelasparcela.AsInteger := i;
      cdsParcelasvalor.AsCurrency  := vParcela;
      cdsParcelasdatavenc.AsDateTime := DataVencimento;
      cdsParcelas.Post;
      DataVencimento := DataVencimento + 30;  // Incrementa a data de vencimento em 30 dias
    end;
  end;

  frmFrenteVendas.qryVendasvalortotal.AsCurrency := vTotal;
end;

procedure TfrmParcelas.SWHDBLookupComboBox1Enter(Sender: TObject);
begin
  cdsParcelas.EmptyDataSet;
end;

procedure TfrmParcelas.SWHDBLookupComboBox1Exit(Sender: TObject);
begin
  if qryFormaPgtotipopgto.AsInteger <> 1 then
  begin
    SWHEdit1.Enabled := False;
    Label1.Enabled   := False;

  end
  else
  begin
    SWHEdit1.Enabled := True;
    Label1.Enabled   := True;
  end;
end;

end.
