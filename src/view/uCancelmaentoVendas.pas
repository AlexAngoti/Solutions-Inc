unit uCancelmaentoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.ComCtrls, SWHEdit, Vcl.DBCtrls;

type
  TfrmCancelamentoVenda = class(TForm)
    pnlSubTop: TPanel;
    imgLogoTop: TImage;
    lblNomeLogoTop: TLabel;
    btnFechar: TSpeedButton;
    Panel1: TPanel;
    SWHEdit1: TSWHEdit;
    DateTimePicker1: TDateTimePicker;
    btnPesquisa: TSpeedButton;
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelamentoVenda: TfrmCancelamentoVenda;

implementation

uses
  uConsultaVenda, uEscurecerFundo;

{$R *.dfm}

procedure TfrmCancelamentoVenda.btnPesquisaClick(Sender: TObject);
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmEscurecerFundo.Show;

  frmConsultaVenda := TfrmConsultaVenda.Create(Self);
  try
    frmConsultaVenda.ShowModal;
  finally
    frmConsultaVenda.Free;
    frmEscurecerFundo.Free;
  end;
end;

end.
