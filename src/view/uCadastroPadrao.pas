unit uCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask, SWHMaskEdit, Vcl.DBCtrls, SWHDBEdit;

type
  TfrmCadastroPadrao = class(TForm)
    pnlBarraPesquisa: TPanel;
    pnlSubButtonTop: TPanel;
    lblDadosGerais: TLabel;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlConfirmar: TPanel;
    btnConfirmar: TSpeedButton;
    pnlConsulta: TPanel;
    btnConsulta: TSpeedButton;
    pnlExcluir: TPanel;
    btnExcluir: TSpeedButton;
    pnlInserir: TPanel;
    btnInserir: TSpeedButton;
    pnlSubBot: TPanel;
    pnllinha1: TPanel;
    pnlSubTop: TPanel;
    lblInvisivel: TLabel;
    pnlLinha2: TPanel;
    dsCadastroPadrao: TDataSource;
    cdsCadastroPadrao: TClientDataSet;
    dspCadastroPadrao: TDataSetProvider;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultaClick(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure ExcluirRegistro;
    procedure OpenScreen; virtual; abstract;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

uses
  uDM, uUtils, uMsgConfirmar;

{$R *.dfm}

procedure TfrmCadastroPadrao.btnCancelarClick(Sender: TObject);
begin
  if ((dsCadastroPadrao.DataSet as TClientDataSet).State in [dsInsert]) or
    ((dsCadastroPadrao.DataSet as TClientDataSet).State in [dsEdit]) then
  begin
    if MsgConfirmar('Realmente deseja cancelar o processo atual ?', 'Todo o processo atual sera perdido!!') = mrOk then
    begin
      (dsCadastroPadrao.DataSet as TClientDataSet).Cancel;
      Self.Close;
    end;
  end;
end;

procedure TfrmCadastroPadrao.btnConfirmarClick(Sender: TObject);
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).Post;
  (dsCadastroPadrao.DataSet as TClientDataSet).ApplyUpdates(-1);
end;

procedure TfrmCadastroPadrao.btnConsultaClick(Sender: TObject);
begin
  Self.OpenScreen;
end;

procedure TfrmCadastroPadrao.btnExcluirClick(Sender: TObject);
begin
  Self.ExcluirRegistro;
end;

procedure TfrmCadastroPadrao.btnInserirClick(Sender: TObject);
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).Insert;
end;

procedure TfrmCadastroPadrao.ExcluirRegistro;
begin
  if (dsCadastroPadrao.DataSet as TClientDataSet).State in [dsInsert] then
  begin
    Self.OpenDataSet;
  end
  else
  begin
    if MsgConfirmar('Deseja excluir esse registro ?', 'Esse registro ser� excluido permanentemente do sistema!') = mrOk then
    begin
      (dsCadastroPadrao.DataSet as TClientDataSet).Delete;
      (dsCadastroPadrao.DataSet as TClientDataSet).ApplyUpdates(-1);
      Self.OpenDataSet;
    end;
  end;
end;

procedure TfrmCadastroPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrmCadastroPadrao.OpenDataSet;
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).Close;
  (dsCadastroPadrao.DataSet as TClientDataSet).Open;
  (dsCadastroPadrao.DataSet as TClientDataSet).Insert;
end;

end.
