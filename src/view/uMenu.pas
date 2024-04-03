unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uUsuario, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmMenu = class(TForm)
    pnlMenulateral: TPanel;
    SpeedButton4: TSpeedButton;
    btnConfiguracao: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnPedido: TSpeedButton;
    btnCadastros: TSpeedButton;
    btnMenuLateral: TSpeedButton;
    Panel3: TPanel;
    pnlCentral: TPanel;
    pnlTop: TPanel;
    btnDashBoard: TSpeedButton;
    btnFechar: TSpeedButton;
    btnMinimizar: TSpeedButton;
    btnUsuario: TSpeedButton;
    pnlPesquisaTelas: TPanel;
    btnPesquisa: TSpeedButton;
    edtDigitarTela: TEdit;
    pnlSubCentral: TPanel;
    pnlSubCadastro: TPanel;
    btnCadProduto: TSpeedButton;
    btnCadClientes: TSpeedButton;
    btnCadEmpresa: TSpeedButton;
    btnCadFormaPag: TSpeedButton;
    btnCadUsuario: TSpeedButton;
    Panel1: TPanel;
    SpeedButton6: TSpeedButton;
    qryValidaLogin: TFDQuery;
    dspValidaLogin: TDataSetProvider;
    cdsValidaAcesso: TClientDataSet;
    dsValidaAcesso: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnMenuLateralClick(Sender: TObject);
    procedure btnConfiguracaoClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnDashBoardClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnCadastrosClick(Sender: TObject);
    procedure pnlSubCadastroMouseEnter(Sender: TObject);
    procedure btnCadClientesClick(Sender: TObject);
    procedure btnCadUsuarioClick(Sender: TObject);
  private
    procedure EscondeLateral;
    procedure FazLogin;
    procedure EncerraProg;
    procedure MudaCorAcesso;
    { Private declarations }
  public
    AUsuario: TUsuario;
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;
  bMenuLateral: Boolean;

implementation

uses
  uLogin, uDM, uEscurecerFundo, uConfiguracao, uCadastroCliente, uUtils, uCadastroUsuario;

{$R *.dfm}

procedure TfrmMenu.btnDashBoardClick(Sender: TObject);
begin
  AUsuario.Free;
  Self.FazLogin;
end;

procedure TfrmMenu.btnFecharClick(Sender: TObject);
begin
  Self.EncerraProg;
end;

procedure TfrmMenu.btnMenuLateralClick(Sender: TObject);
begin
  Self.EscondeLateral;
end;

procedure TfrmMenu.EncerraProg;
begin
  AUsuario.Free;
  Application.Terminate;
end;

procedure TfrmMenu.EscondeLateral;
begin
  if bMenuLateral then
  begin
    pnlMenulateral.Width := 150;
  end
  else
  begin
    pnlMenulateral.Width := 43;
  end;

  bMenuLateral := not bMenuLateral;
end;

procedure TfrmMenu.FazLogin;
begin
  frmLogin := TfrmLogin.Create(Self);
  try
    frmLogin.ShowModal;
    if frmLogin.ModalResult <> 1 then
    begin
      Application.Terminate;
    end
    else
    begin
      AUsuario := TUsuario.Create;
      try
        AUsuario.IdUsuario   := (dm.dsLogin.DataSet as TClientDataSet).FieldByName('id').AsInteger;
        AUsuario.NomeUsuario := frmLogin.edtUsuario.Text;
        AUsuario.NivelAcesso := (dm.dsLogin.DataSet as TClientDataSet).FieldByName('master').AsString;
        btnUsuario.Caption   := AUsuario.NomeUsuario;
        Self.MudaCorAcesso;
      except
        Application.MessageBox('Não foi possivel realizar login', 'ATENÇÃO', MB_ICONERROR + MB_OK);
        Application.Terminate;
      end;
    end;
  finally
    frmLogin.Free;
  end;
end;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
  Self.FazLogin;
end;

procedure TfrmMenu.MudaCorAcesso;
begin
  if AUsuario.NivelAcesso <> 'S' then
  begin
    (dm.dsValidaAcesso.DataSet as TClientDataSet).Close;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).ParamByName('idlogin').AsInteger
      := AUsuario.IdUsuario;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).Open;

    btnCadClientes.Font.Color  := clRed;
    btnCadProduto.Font.Color   := clRed;
    btnCadEmpresa.Font.Color   := clRed;
    btnCadFormaPag.Font.Color  := clRed;
    btnCadUsuario.Font.Color   := clRed;
    btnConfiguracao.Font.Color := clRed;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).First;
    while not (dm.dsValidaAcesso.DataSet as TClientDataSet).Eof do
    begin
      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadClientes.Name then
      begin
        btnCadClientes.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadProduto.Name then
      begin
        btnCadProduto.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadEmpresa.Name then
      begin
        btnCadEmpresa.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadFormaPag.Name then
      begin
        btnCadFormaPag.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadUsuario.Name then
      begin
        btnCadUsuario.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnConfiguracao.Name then
      begin
        btnConfiguracao.Font.Color := clWhite;
      end;

      (dm.dsValidaAcesso.DataSet as TClientDataSet).Next;
    end;
  end;
end;

procedure TfrmMenu.pnlSubCadastroMouseEnter(Sender: TObject);
begin
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.SpeedButton4Click(Sender: TObject);
begin
  Self.EncerraProg;
end;

procedure TfrmMenu.SpeedButton6Click(Sender: TObject);
begin
  btnDashBoardClick(Self);
end;

procedure TfrmMenu.btnCadastrosClick(Sender: TObject);
begin
  pnlSubCadastro.Visible := not pnlSubCadastro.Visible;
end;

procedure TfrmMenu.btnCadClientesClick(Sender: TObject);
begin
  ValidaAcesso(AUsuario.IdUsuario, 'frmCadastroCliente');

  frmCadastroCliente := TfrmCadastroCliente.Create(Self);
  frmCadastroCliente.Parent := pnlSubCentral;
  frmCadastroCliente.Align  := alClient;
  frmCadastroCliente.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnCadUsuarioClick(Sender: TObject);
begin
  ValidaAcesso(AUsuario.IdUsuario, 'frmCadastroUsuario');

  frmCadastroUsuario := TfrmCadastroUsuario.Create(Self);
  frmCadastroUsuario.Parent := pnlSubCentral;
  frmCadastroUsuario.Align  := alClient;
  frmCadastroUsuario.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnConfiguracaoClick(Sender: TObject);
begin
  ValidaAcesso(AUsuario.IdUsuario, 'frmConfiguracao');

  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmEscurecerFundo.Show;

  frmConfiguracao := TfrmConfiguracao.Create(Self);
  try
    frmConfiguracao.ShowModal;
  finally
    frmConfiguracao.Free;
    frmEscurecerFundo.Free;
  end;
end;

end.
