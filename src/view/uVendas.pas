unit uVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  SWHMaskEdit, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridChartView, cxGridDBChartView,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, dxGDIPlusClasses;

type
  TfrmVendas = class(TForm)
    qryVendas: TFDQuery;
    dsVendas: TDataSource;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    qryVendaspagar: TIntegerField;
    qryVendasreceber: TIntegerField;
    pnlCentralFixo: TPanel;
    pnlCentral: TPanel;
    pnlEstatisticas: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Panel4: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Image2: TImage;
    Panel5: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Image3: TImage;
    Panel6: TPanel;
    pnlUltVendas: TPanel;
    dbGrdPesquisa: TDBGrid;
    Panel7: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series2: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    Panel8: TPanel;
    Label8: TLabel;
    Image5: TImage;
    Panel9: TPanel;
    Label7: TLabel;
    Image4: TImage;
    procedure btnFecharClick(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

uses
  uDM;

{$R *.dfm}

procedure TfrmVendas.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmVendas.FormResize(Sender: TObject);
begin
  pnlCentral.Left := Round(pnlCentralFixo.Width / 2 - pnlCentral.Width / 2);
end;

procedure TfrmVendas.Panel9Click(Sender: TObject);
begin
  Self.Close;
end;

end.
