unit uRelatorioContasPagar;

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
  Vcl.ComCtrls, Vcl.Buttons, dxGDIPlusClasses, Vcl.ExtCtrls, SWHDBLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxGridExportLink,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDB, ppDBPipe, ppCtrls, ppBands,
  ppStrtch, ppSubRpt, ppPrnabl, ppCache, ppDesignLayer, ppParameter, DateUtils;

type
  TfrmRelatorioContasPagar = class(TfrmRelatorioPadrao)
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cdsRelPadraoid: TLargeintField;
    cdsRelPadraodataemissao: TDateField;
    cdsRelPadraodatavencimento: TDateField;
    cdsRelPadraovalor: TBCDField;
    cdsRelPadraoformapgto: TIntegerField;
    cdsRelPadraoidfornecedor: TIntegerField;
    cdsRelPadraodatabaixa: TDateField;
    cdsRelPadraodescricao: TWideStringField;
    cdsRelPadraonumerodoc: TWideStringField;
    cdsRelPadraoobservaobaixa: TWideStringField;
    cdsRelPadraonumeroorigem: TIntegerField;
    cdsRelPadraoabreviação: TWideStringField;
    cdsRelPadraonomerazao: TWideStringField;
    qryFornecedor: TFDQuery;
    dsFornecedor: TDataSource;
    qryFornecedorid: TLargeintField;
    qryFornecedornomerazao: TWideStringField;
    ppReport: TppReport;
    ppDbReport: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel3: TppLabel;
    ppShape2: TppShape;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppShape3: TppShape;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppShape4: TppShape;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppShape5: TppShape;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppShape6: TppShape;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppLabel8: TppLabel;
    ppShape7: TppShape;
    ppDBText7: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel9: TppLabel;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioContasPagar: TfrmRelatorioContasPagar;

implementation

uses
  uDM, uUtils;

{$R *.dfm}

procedure TfrmRelatorioContasPagar.btnExportarClick(Sender: TObject);
begin
  inherited;
  ExportGridToExcel('C:\Sistema\Planilhas\ContasPagar\' + FormatDateTime('yyyymmdd', Date), cxGrid1, True, True, True, 'xls');
end;

procedure TfrmRelatorioContasPagar.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ppReport.Print;
end;

procedure TfrmRelatorioContasPagar.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  if SWHDBLookupComboBox1.Text = EmptyStr then
  begin
    MsgOk('Fornedor não pode ser vazio!', 'Favor escolher um fornecedor.');
    Abort;
  end;

  cdsRelPadrao.Close;
  cdsRelPadrao.ParamByName('dataini').AsDate := DateTimePicker1.Date;
  cdsRelPadrao.ParamByName('datafin').AsDate := DateTimePicker2.Date;
  cdsRelPadrao.ParamByName('idfornecedor').AsInteger := qryFornecedorid.AsInteger;
  cdsRelPadrao.Open;

  dsRelPadrao.DataSet.Filtered := False;
  if SWHEdit1.Text <> EmptyStr then
  begin
    if SWHComboBox1.ItemIndex = 0 then
    begin
      dsRelPadrao.DataSet.Filter := 'id = ' + SWHEdit1.Text;
      dsRelPadrao.DataSet.Filtered := True;
    end
    else
    begin
      dsRelPadrao.DataSet.Filter := 'UPPER(numerodoc) LIKE ' +
        QuotedStr('%' + UpperCase(SWHEdit1.Text) + '%');
      dsRelPadrao.DataSet.Filtered := True;
    end;
  end;
end;

procedure TfrmRelatorioContasPagar.FormShow(Sender: TObject);
begin
  inherited;
  qryFornecedor.Close;
  qryFornecedor.Open;

  DateTimePicker1.Date := Date - 30;
  DateTimePicker2.Date := Date;
end;

end.
