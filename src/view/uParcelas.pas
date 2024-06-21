unit uParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, SWHDBComboBox, SWHEdit, Data.DB, Vcl.Grids, Vcl.DBGrids,
  dxGDIPlusClasses, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDesignLayer,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppCache, ppParameter;

type
  TfrmParcelas = class(TForm)
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    Panel1: TPanel;
    SWHDBComboBox1: TSWHDBComboBox;
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
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParcelas: TfrmParcelas;

implementation

{$R *.dfm}

procedure TfrmParcelas.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

end.
