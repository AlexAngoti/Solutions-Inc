unit uParcelasCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ppParameter,
  ppDesignLayer, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  SWHDBLookupComboBox, Vcl.StdCtrls, SWHEdit, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmParcelaCompras = class(TForm)
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    imgLogoTop: TImage;
    Label2: TLabel;
    Panel1: TPanel;
    lblPesquisar: TLabel;
    Label1: TLabel;
    SWHEdit1: TSWHEdit;
    pnlAdicionar: TPanel;
    SpeedButton5: TSpeedButton;
    SWHDBLookupComboBox1: TSWHDBLookupComboBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    lbTotalPedido: TLabel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    ppReport1: TppReport;
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
    ppParameterList1: TppParameterList;
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
    cdsParcelasparcela: TIntegerField;
    cdsParcelasvalor: TCurrencyField;
    cdsParcelasdatavenc: TDateField;
    dsParcelas: TDataSource;
    qryAtuReceber: TFDQuery;
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
    dsAtuReceber: TDataSource;
    qryEstoque: TFDQuery;
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
    dsEstoque: TDataSource;
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParcelaCompras: TfrmParcelaCompras;

implementation

uses
  uPedidoCompra;

{$R *.dfm}

procedure TfrmParcelaCompras.SpeedButton5Click(Sender: TObject);
var
   vTotal, vParcela: Currency;
  nParcelas, i: Integer;
  DataVencimento: TDateTime;
begin
  {cdsParcelas.EmptyDataSet;
  vTotal := 0;
  if qryFormaPgtotipopgto.AsInteger <> 1 then
  begin
    frmPedidoCompra.qryItens.First;
    while not frmPedidoCompra.qryItens.Eof do
    begin
      vTotal := frmPedidoCompra.qryItenstotalitem.AsCurrency;
      frmPedidoCompra.qryItens.Next;
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
    frmPedidoCompra.qryItens.First;
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
    end; }
  //end;

  //frmFrenteVendas.qryVendasvalortotal.AsCurrency := vTotal;
end;

end.
