unit uRelatorioVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uRelatorioPadrao, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider, Datasnap.DBClient,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, SWHComboBox, Vcl.DBCtrls, SWHDBComboBox, SWHEdit,
  Vcl.ComCtrls, Vcl.Buttons, dxGDIPlusClasses, Vcl.ExtCtrls, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl, ppBands,
  ppCache, ppDesignLayer, ppParameter, ppStrtch, ppSubRpt, SWHDBLookupComboBox, cxGridExportLink;

type
  TfrmRelatorioVendas = class(TfrmRelatorioPadrao)
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    cxGrid1DBTableView2Column3: TcxGridDBColumn;
    cxGrid1DBTableView2Column4: TcxGridDBColumn;
    cxGrid1DBTableView2Column5: TcxGridDBColumn;
    dsItens: TDataSource;
    cdsItens: TClientDataSet;
    dspItens: TDataSetProvider;
    qryItens: TFDQuery;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    qryRelPadraoid: TLargeintField;
    qryRelPadraodatavenda: TDateField;
    qryRelPadraocliente: TIntegerField;
    qryRelPadraoformapgto: TIntegerField;
    qryRelPadraovalortotal: TBCDField;
    qryRelPadraousuario: TIntegerField;
    qryRelPadraoobervacao: TWideStringField;
    qryRelPadraosituacao: TIntegerField;
    qryRelPadraonomerazao: TWideStringField;
    qryRelPadraonome: TWideStringField;
    cdsRelPadraoid: TLargeintField;
    cdsRelPadraodatavenda: TDateField;
    cdsRelPadraocliente: TIntegerField;
    cdsRelPadraoformapgto: TIntegerField;
    cdsRelPadraovalortotal: TBCDField;
    cdsRelPadraousuario: TIntegerField;
    cdsRelPadraoobervacao: TWideStringField;
    cdsRelPadraosituacao: TIntegerField;
    cdsRelPadraonomerazao: TWideStringField;
    cdsRelPadraonome: TWideStringField;
    cdsItensid: TLargeintField;
    cdsItensidvenda: TIntegerField;
    cdsItensproduto: TIntegerField;
    cdsItensquantidade: TBCDField;
    cdsItensvalorunitario: TBCDField;
    cdsItenstotalitem: TBCDField;
    cdsItensnome: TWideStringField;
    ppLabel8: TppLabel;
    ppShape6: TppShape;
    ppLabel9: TppLabel;
    ppShape7: TppShape;
    ppLabel10: TppLabel;
    ppShape8: TppShape;
    ppLabel11: TppLabel;
    ppShape9: TppShape;
    ppLabel12: TppLabel;
    ppShape10: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    dsRel: TDataSource;
    qryRel: TFDQuery;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    qryRelid: TLargeintField;
    qryReldatavenda: TDateField;
    qryRelcliente: TIntegerField;
    qryRelformapgto: TIntegerField;
    qryRelvalortotal: TBCDField;
    qryRelusuario: TIntegerField;
    qryRelobervacao: TWideStringField;
    qryRelsituacao: TIntegerField;
    qryRelnomerazao: TWideStringField;
    qryRelnome: TWideStringField;
    qryRelid_1: TLargeintField;
    qryRelidvenda: TIntegerField;
    qryRelproduto: TIntegerField;
    qryRelquantidade: TBCDField;
    qryRelvalorunitario: TBCDField;
    qryReltotalitem: TBCDField;
    qryRelnomeproduto: TWideStringField;
    qryFornecedor: TFDQuery;
    qryFornecedorid: TLargeintField;
    qryFornecedornomerazao: TWideStringField;
    dsFornecedor: TDataSource;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioVendas: TfrmRelatorioVendas;

implementation

uses
  uDM;

{$R *.dfm}

procedure TfrmRelatorioVendas.btnExportarClick(Sender: TObject);
begin
  inherited;
  ExportGridToExcel('C:\Sistema\Planilhas\Relatorios Vendas\' + FormatDateTime('yyyymmdd', Date), cxGrid1, True, True, True, 'xls');
end;

procedure TfrmRelatorioVendas.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TfrmRelatorioVendas.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  cdsRelPadrao.Close;
  cdsRelPadrao.ParamByName('dataini').AsDate := DateTimePicker1.Date;
  cdsRelPadrao.ParamByName('datafin').AsDate := DateTimePicker2.Date;
  cdsRelPadrao.Open;

  cdsItens.Close;
  cdsItens.Open;

  qryRel.Close;
  qryRel.ParamByName('dataini').AsDate := DateTimePicker1.Date;
  qryRel.ParamByName('datafin').AsDate := DateTimePicker2.Date;
  qryRel.Open;
end;

procedure TfrmRelatorioVendas.FormCreate(Sender: TObject);
begin
  inherited;
  DateTimePicker1.Date := Date - 30;
  DateTimePicker2.Date := Date;

  qryFornecedor.Close;
  qryFornecedor.Open;
end;

end.
