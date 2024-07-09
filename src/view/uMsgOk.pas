unit uMsgOk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TfrmMsgOk = class(TForm)
    pnlBackGround: TPanel;
    imgFormulario: TImage;
    lblTitulo: TLabel;
    lblMenssagem: TLabel;
    pnlTop: TPanel;
    lblNomeEmpresa: TLabel;
    pnlLine: TPanel;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    imgLogoTop: TImage;
    procedure FormResize(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure ArredondaPainel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMsgOk: TfrmMsgOk;

implementation

uses
  uUtils;

{$R *.dfm}

{ TfrmMsgOk }

procedure TfrmMsgOk.ArredondaPainel;
begin
  RoundedPanel(pnlSalvar, 12);
end;

procedure TfrmMsgOk.btnSalvarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmMsgOk.FormResize(Sender: TObject);
begin
  Self.ArredondaPainel;
end;

end.
