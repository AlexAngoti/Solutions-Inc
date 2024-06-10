unit uUtils;

interface

uses
  Vcl.ExtCtrls, Winapi.Windows, System.SysUtils, Vcl.ComCtrls,
  Datasnap.DBClient;

const
  FTokenSintegra = '3772BE1B-CABB-4E17-BBB0-4439A6E3D870';

  procedure RoundedPanel(Painel: TPanel; ITamanho: Integer);
  procedure PrcOcultarTabs(PageControl : TPageControl);
  function MsgConfirmar(ATitulo: String; AMenssagem: String): Integer;
  function MsgOk(ATitulo: String; AMenssagem: String): Integer;
  function ValidaAcesso(IdUsuario: Integer; NomeTela: string): Boolean;


implementation

uses
  uMsgConfirmar, uMsgOk, uDM, uEscurecerFundo, uMenu;

function ValidaAcesso(IdUsuario: Integer; NomeTela: string): Boolean;
begin
  if frmMenu.AUsuario.NivelAcesso <> 'S' then
  begin
    (dm.dsValidaAcesso.DataSet as TClientDataSet).Close;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).ParamByName('NomeTela').AsString
      := NomeTela;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).ParamByName('idlogin').AsInteger
      := IdUsuario;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).Open;

    if (dm.dsValidaAcesso.DataSet as TClientDataSet).IsEmpty then
    begin
      MsgOk('Seu usuário não possui permissão para acessar a tela atual!!', 'Acesso bloqueado, favor verificar com responsavel pelos acessos.');
      Abort;
    end
    else
    begin
      Result := True;
    end;
  end;
end;

procedure PrcOcultarTabs(PageControl : TPageControl);
var
  IPage: Integer;
begin
  for IPage := 0 to PageControl.PageCount - 1 do
  begin
    PageControl.Pages[IPage].TabVisible := False;
  end;

  PageControl.ActivePageIndex := 0;
end;

procedure RoundedPanel(Painel: TPanel; ITamanho: Integer);
var
  Rgn: HRGN;
  Dc: HDC;
begin
  Rgn := CreateRoundRectRgn(0, 0, Painel.Width, Painel.Height, ITamanho, ITamanho);
  Dc  := GetDC(Painel.Handle);
  SetWindowRgn(Painel.Handle, Rgn, True);
  ReleaseDC(Painel.Handle, Dc);
  DeleteObject(Rgn);
end;

function MsgConfirmar(ATitulo: String; AMenssagem: String): Integer;
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(nil);
  frmEscurecerFundo.Show;

  frmMsgConfirmar := TfrmMsgConfirmar.Create(nil);
  try
    frmMsgConfirmar.lblTitulo.Caption    := ATitulo;
    frmMsgConfirmar.lblMenssagem.Caption := AMenssagem;
    frmMsgConfirmar.ShowModal;
    Result := frmMsgConfirmar.ModalResult;
  finally
    FreeAndNil(frmMsgConfirmar);
    frmEscurecerFundo.Free;
  end;
end;

function MsgOk(ATitulo: String; AMenssagem: String): Integer;
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(nil);
  frmEscurecerFundo.Show;

  frmMsgOk := TfrmMsgOk.Create(nil);
  try
    frmMsgOk.lblTitulo.Caption    := ATitulo;
    frmMsgOk.lblMenssagem.Caption := AMenssagem;
    frmMsgOk.ShowModal;
    Result := frmMsgOk.ModalResult;
  finally
    FreeAndNil(frmMsgOk);
    frmEscurecerFundo.Free;
  end;
end;

end.
