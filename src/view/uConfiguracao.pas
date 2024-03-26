unit uConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.FileCtrl, Vcl.Mask, Vcl.DBCtrls, SWHDBEdit, Winapi.ShellAPI,
  SWHEdit, Datasnap.DBClient;

type
  TfrmConfiguracao = class(TForm)
    pnlMenuLateral: TPanel;
    pnlMenuCentral: TPanel;
    pgcPrincipal: TPageControl;
    tbsBackup: TTabSheet;
    btnBackup: TSpeedButton;
    dtpDataInclu: TDateTimePicker;
    dlbDiretorio: TDirectoryListBox;
    lblDataBackup: TLabel;
    lblSalvarEm: TLabel;
    pnlFazerBackup: TPanel;
    btnFazerBakcup: TSpeedButton;
    btnSair: TSpeedButton;
    procedure btnFazerBakcupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    procedure Backup;
    procedure SalvaBackup;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

uses
  uUtils, uDM;

{$R *.dfm}

{ TfrmConfiguracao }

procedure TfrmConfiguracao.Backup;
var
  BatchFile: string;
  ResultCode: Integer;
begin
  BatchFile  := ExtractFilePath(Application.ExeName) + 'backup.bat';
  ResultCode := ShellExecute(0, nil, PChar(BatchFile), nil, nil, SW_HIDE);

  if ResultCode <= 32 then
  begin
    ShowMessage('Erro ao executar o backup. C�digo de erro: ' + IntToStr(ResultCode) + '. Detalhes: ' + SysErrorMessage(GetLastError));
  end
  else
  begin
    if CopyFile(PChar('C:\Sistema\Backup\' + FormatDateTime('YYYYMMDD', Date) + '.SQL'),
            PChar(dlbDiretorio.Directory + '\' + FormatDateTime('YYYYMMDD', Date) + '.SQL'),
            False) then
    begin
      Self.SalvaBackup;
      ShowMessage('Backup conclu�do com sucesso.');
    end;
  end;
end;

procedure TfrmConfiguracao.btnFazerBakcupClick(Sender: TObject);
begin
  Self.Backup;
end;

procedure TfrmConfiguracao.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmConfiguracao.FormShow(Sender: TObject);
begin
  PrcOcultarTabs(pgcPrincipal);
  dtpDataInclu.Date := Date;
end;

procedure TfrmConfiguracao.SalvaBackup;
begin
  (dm.dsBackup.DataSet as TClientDataSet).Close;
  (dm.dsBackup.DataSet as TClientDataSet).ParamByName('DATAINCLU').AsDate := dtpDataInclu.Date;
  (dm.dsBackup.DataSet as TClientDataSet).Open;

  if (dm.dsBackup.DataSet as TClientDataSet).IsEmpty then
  begin
    (dm.dsBackup.DataSet as TClientDataSet).Insert;
  end
  else
  begin
    (dm.dsBackup.DataSet as TClientDataSet).Edit;
  end;
  (dm.dsBackup.DataSet as TClientDataSet).FieldByName('databackup').AsDateTime
    := dtpDataInclu.Date;
  (dm.dsBackup.DataSet as TClientDataSet).FieldByName('caminhobackup').AsString
    := dlbDiretorio.Directory + '\' + FormatDateTime('YYYYMMDD', Date) + '.SQL';
  (dm.dsBackup.DataSet as TClientDataSet).Post;
  (dm.dsBackup.DataSet as TClientDataSet).ApplyUpdates(-1);
end;

end.
