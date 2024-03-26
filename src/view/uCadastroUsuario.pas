unit uCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, SWHDBEdit, SWHDBComboBox, SWHComboBox;

type
  TfrmCadastroPadrao1 = class(TfrmCadastroPadrao)
    pnlTopCentral: TPanel;
    edtNome: TSWHDBEdit;
    Label2: TLabel;
    lblSenha: TLabel;
    edtSenha: TSWHDBEdit;
    lblAtivo: TLabel;
    cbxAtivo: TSWHComboBox;
    pnlBotCentral: TPanel;
    procedure edtSenhaExit(Sender: TObject);
  private
    function ValidaSenha(const senha: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao1: TfrmCadastroPadrao1;

implementation

{$R *.dfm}

procedure TfrmCadastroPadrao1.edtSenhaExit(Sender: TObject);
begin
  if edtSenha.Text <> EmptyStr then
  begin
    if ValidaSenha(edtSenha.Text) = False then
    begin
      edtSenha.SetFocus;
    end;
  end;
end;

function TfrmCadastroPadrao1.ValidaSenha(const senha: string): Boolean;
var
  i: Integer;
  temMaiuscula, temSimbolo: Boolean;
begin
  if Length(senha) < 8 then
  begin
    ShowMessage('A senha deve ter no m�nimo 8 caracteres.');
    Result := False;
    Exit;
  end;

  temMaiuscula := False;
  temSimbolo   := False;

  for i := 1 to Length(senha) do
  begin
    if CharInSet(senha[i], ['A'..'Z']) then
    begin
      temMaiuscula := True
    end
    else
    begin
      if CharInSet(senha[i], ['!', '@', '#', '$', '%', '&', '*', '_', '+', '-', '=']) then
      begin
        temSimbolo := True;
      end;
    end;
  end;

  if not temMaiuscula then
  begin
    ShowMessage('A senha deve conter pelo menos uma letra mai�scula.');
  end;

  if not temSimbolo then
  begin
    ShowMessage('A senha deve conter pelo menos um s�mbolo (!@#$%&*_+-=).');
  end;

  Result := temMaiuscula and temSimbolo;
end;

end.
