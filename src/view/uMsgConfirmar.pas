unit uMsgConfirmar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmMsgConfirmar = class(TForm)
    pnlBackGround: TPanel;
    imgFormulario: TImage;
    lblTitulo: TLabel;
    lblMenssagem: TLabel;
    pnlTop: TPanel;
    lblNomeEmpresa: TLabel;
    Image1: TImage;
    pnlLine: TPanel;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    procedure FormResize(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure ArredondaPainel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMsgConfirmar: TfrmMsgConfirmar;

implementation

uses
  uUtils;

{$R *.dfm}

{ TfrmMsgConfirmar }

procedure TfrmMsgConfirmar.ArredondaPainel;
begin
  RoundedPanel(pnlCancelar, 12);
  RoundedPanel(pnlSalvar, 12);
end;

procedure TfrmMsgConfirmar.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmMsgConfirmar.btnSalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmMsgConfirmar.FormResize(Sender: TObject);
begin
  Self.ArredondaPainel;
end;

end.
