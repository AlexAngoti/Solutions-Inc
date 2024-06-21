unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, VCLTee.TeCanvas, Vcl.Buttons, Vcl.ExtCtrls, SWHEdit,
  Vcl.Imaging.jpeg;

type
  TfrmLogin = class(TForm)
    pnlPrincipal: TPanel;
    shpBorda: TShape;
    btnFechar: TSpeedButton;
    pnlVisual: TPanel;
    lblLogin: TLabel;
    lblDescricao: TLabel;
    pnlUsuario: TPanel;
    lblName: TLabel;
    pnlSoUsuario: TPanel;
    pnlSenha: TPanel;
    lblSenha: TLabel;
    pnlSoSenha: TPanel;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlEntrar: TPanel;
    btnEntrar: TSpeedButton;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Image1: TImage;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure ValidaLogin;
    procedure FazLogin;
    procedure OpenDataSet;
    procedure LimpaCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  uDM;

{$R *.dfm}

{ TfrmLogin }

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  Self.LimpaCampo;
end;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  Self.ValidaLogin;
  Self.OpenDataSet;
  Self.FazLogin;
end;

procedure TfrmLogin.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmLogin.FazLogin;
begin
  if not (dm.dsLogin.DataSet as TClientDataSet).IsEmpty then
  begin
    ModalResult := 1;
  end
  else
  begin
    Application.MessageBox('Usuario ou senha incorretos!', 'ATEN��O', MB_ICONWARNING + MB_OK);
    Abort;
  end;
end;

procedure TfrmLogin.FormResize(Sender: TObject);
begin
  pnlPrincipal.Top  := Round(FrmLogin.Height / 2 - pnlPrincipal.Height / 2);
  pnlPrincipal.Left := Round(FrmLogin.Width / 2 - pnlPrincipal.Width / 2);
end;

procedure TfrmLogin.LimpaCampo;
begin
  edtUsuario.Clear;
  edtSenha.Clear;
end;

procedure TfrmLogin.OpenDataSet;
begin
  (dm.dsLogin.DataSet as TClientDataSet).Close;
  (dm.dsLogin.DataSet as TClientDataSet).ParamByName('login').AsString := edtUsuario.Text;
  (dm.dsLogin.DataSet as TClientDataSet).ParamByName('senha').AsString := edtSenha.Text;
  (dm.dsLogin.DataSet as TClientDataSet).Open;
end;

procedure TfrmLogin.ValidaLogin;
begin
  if edtUsuario.Text = EmptyStr then
  begin
    Application.MessageBox('Usuario n�o pode ser vazio', 'ATEN��O', MB_ICONWARNING + MB_OK);
    edtUsuario.SetFocus;
    Abort;
  end;

  if edtSenha.Text = EmptyStr then
  begin
    Application.MessageBox('Senha n�o pode ser vazio', 'ATEN��O', MB_ICONWARNING + MB_OK);
    edtSenha.Text;
    Abort;
  end;
end;

end.
