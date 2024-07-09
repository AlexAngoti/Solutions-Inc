unit uConsultaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Datasnap.DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxGDIPlusClasses;

type
  TfrmConsultaPadrao = class(TForm)
    pnlSubTop: TPanel;
    imgLogoTop: TImage;
    lblNomeLogoTop: TLabel;
    btnFechar: TSpeedButton;
    pnlCentral: TPanel;
    pnlBarraPesquisa: TPanel;
    lblPesquisar: TLabel;
    btnPesquisa: TSpeedButton;
    pnlPesquisa: TPanel;
    edtPesquisa: TEdit;
    dsConsultaPadrao: TDataSource;
    dbGrdPesquisa: TcxGrid;
    dbGrdPesquisaDBTableView1: TcxGridDBTableView;
    dbGrdPesquisaLevel1: TcxGridLevel;
    procedure dbGrdPesquisaDblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure FiltraCampo(ACampoFiltro: string);
    procedure OpenDataSet;
    { Public declarations }
  end;

var
  frmConsultaPadrao: TfrmConsultaPadrao;

implementation

{$R *.dfm}

procedure TfrmConsultaPadrao.btnFecharClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmConsultaPadrao.dbGrdPesquisaDblClick(Sender: TObject);
begin
  (dsConsultaPadrao.DataSet as TClientDataSet).Edit;
  ModalResult := mrOk;
end;

procedure TfrmConsultaPadrao.FiltraCampo(ACampoFiltro: string);
begin
  dsConsultaPadrao.DataSet.Filtered := False;
  if edtPesquisa.Text <> EmptyStr then
  begin
    dsConsultaPadrao.DataSet.Filter := 'UPPER('+ACampoFiltro+') LIKE ' +
      QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
    dsConsultaPadrao.DataSet.Filtered := True;
  end;
end;

procedure TfrmConsultaPadrao.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmConsultaPadrao.OpenDataSet;
begin
  (dsConsultaPadrao.DataSet as TClientDataSet).Close;
  (dsConsultaPadrao.DataSet as TClientDataSet).Open;
end;

end.
