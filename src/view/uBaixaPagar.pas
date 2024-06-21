unit uBaixaPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, SWHComboBox,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, SWHDBEdit, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  SWHDBLookupComboBox, Vcl.Imaging.jpeg;

type
  TfrmBaixaPagar = class(TForm)
    pnlCentral: TPanel;
    lblFormaPgto: TLabel;
    pnlSubBot: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    dsMovContasReceber: TDataSource;
    lblDataPagamento: TLabel;
    dtpDataPgto: TDateTimePicker;
    Panel1: TPanel;
    imgLogoTop: TImage;
    lblNomeLogoTop: TLabel;
    SpeedButton1: TSpeedButton;
    dsFormaPgto: TDataSource;
    qryFormaPgto: TFDQuery;
    qryFormaPgtoid: TLargeintField;
    qryFormaPgtonome: TWideStringField;
    qryFormaPgtoabrevia��o: TWideStringField;
    qryFormaPgtotipopgto: TIntegerField;
    qryFormaPgtoativo: TIntegerField;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    cxFormaPgto: TSWHDBLookupComboBox;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ValidaCampo;
    procedure AlimentaCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaPagar: TfrmBaixaPagar;

implementation

uses
  uContasPagar, uUtils;

{$R *.dfm}

procedure TfrmBaixaPagar.AlimentaCampo;
begin
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('databaixa').AsDateTime
    := dtpDataPgto.DateTime;
end;

procedure TfrmBaixaPagar.btnCancelarClick(Sender: TObject);
begin
  if uUtils.MsgConfirmar('Deseja cancelar o processo atual ?',
  'Se cancelar o processo atual n�o ser� salvo') = mrOk then
  begin
    (dsMovContasReceber.DataSet as TClientDataSet).Cancel;
    Self.Close;
  end;
end;

procedure TfrmBaixaPagar.btnFecharClick(Sender: TObject);
begin
  btnCancelarClick(Self);
end;

procedure TfrmBaixaPagar.btnNovoLancamentoClick(Sender: TObject);
begin
  Self.ValidaCampo;
  Self.AlimentaCampo;
  (dsMovContasReceber.DataSet as TClientDataSet).Post;
  (dsMovContasReceber.DataSet as TClientDataSet).ApplyUpdates(-1);
  Self.Close;
end;

procedure TfrmBaixaPagar.FormCreate(Sender: TObject);
begin
  dtpDataPgto.Date       := Date;
end;

procedure TfrmBaixaPagar.FormShow(Sender: TObject);
begin
  qryFormaPgto.Close;
  qryFormaPgto.Open;
  dtpDataPgto.Date := Date;
end;

procedure TfrmBaixaPagar.ValidaCampo;
begin
  if cxFormaPgto.Text = EmptyStr then
  begin
    uUtils.MsgOk('Favor escolher uma forma de pagamento!!',
    'Favor informar forma de pagamento do lan�amento');
    cxFormaPgto.SetFocus;
    Abort;
  end;
end;

end.
