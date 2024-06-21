unit uPedidoCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, SWHEdit, Vcl.DBCtrls, SWHDBComboBox,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPedidoCompra = class(TForm)
    pnlSubTop: TPanel;
    imgLogoTop: TImage;
    btnFechar: TSpeedButton;
    pnlBotoes: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlSubOpcao: TPanel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SWHDBComboBox1: TSWHDBComboBox;
    DateTimePicker3: TDateTimePicker;
    SWHDBComboBox2: TSWHDBComboBox;
    SWHEdit1: TSWHEdit;
    SWHEdit2: TSWHEdit;
    Panel4: TPanel;
    DBComboBox1: TDBComboBox;
    SWHEdit3: TSWHEdit;
    SWHEdit4: TSWHEdit;
    pnlAdicionar: TPanel;
    SpeedButton5: TSpeedButton;
    Panel5: TPanel;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    spbPesquisa: TSpeedButton;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidoCompra: TfrmPedidoCompra;

implementation

uses
  uParcelas;

{$R *.dfm}

procedure TfrmPedidoCompra.SpeedButton6Click(Sender: TObject);
begin
  {frmParcelas := TfrmParcelas.Create(Self);
  try
    frmParcelas.ShowModal;
  finally

  end;}
end;

end.
