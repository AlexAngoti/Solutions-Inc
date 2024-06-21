unit uFrenteVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, SWHMaskEdit,
  Vcl.Samples.Spin, dxGDIPlusClasses;

type
  TfrmFrenteVendas = class(TForm)
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    pnlBotoes: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    btnPesquisa: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBComboBox3: TDBComboBox;
    SpeedButton4: TSpeedButton;
    spnQuantidade: TSpinEdit;
    SWHMaskEdit1: TSWHMaskEdit;
    SWHMaskEdit2: TSWHMaskEdit;
    pnlAdicionar: TPanel;
    SpeedButton5: TSpeedButton;
    DBImage1: TDBImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnlQuadroProd: TPanel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    lbPedido: TLabel;
    Label11: TLabel;
    lbTotalPedido: TLabel;
    SpeedButton6: TSpeedButton;
    imgLogoTop: TImage;
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFrenteVendas: TfrmFrenteVendas;

implementation

uses
  uParcelas, uConsultaVendedor;

{$R *.dfm}

procedure TfrmFrenteVendas.SpeedButton3Click(Sender: TObject);
begin
  frmConsultaVendedor := TfrmConsultaVendedor.Create(Self);
  frmConsultaVendedor.ShowModal;
end;

procedure TfrmFrenteVendas.SpeedButton6Click(Sender: TObject);
begin
  frmParcelas := TfrmParcelas.Create(Self);
  try
    frmParcelas.ShowModal;
  finally
    frmParcelas.Free;
  end;
end;

end.
