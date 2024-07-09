unit uCancelmaentoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.ComCtrls, SWHEdit, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    qryVendas: TFDQuery;
    dsVendas: TDataSource;
    Memo1: TMemo;
    qryContasReceber: TFDQuery;
    qryEstoquete: TFDQuery;
    procedure btnPesquisaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure ClearField;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelamentoVenda: TfrmCancelamentoVenda;

implementation

uses
  uConsultaVenda, uEscurecerFundo, uUtils, uDM;

{$R *.dfm}

procedure TfrmCancelamentoVenda.btnCancelarClick(Sender: TObject);
begin
  Self.ClearField;
end;

procedure TfrmCancelamentoVenda.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCancelamentoVenda.btnPesquisaClick(Sender: TObject);
var
  Escurecer: TfrmEscurecerFundo;
begin
  Escurecer := TfrmEscurecerFundo.Create(Self);
  frmConsultaVenda := TfrmConsultaVenda.Create(Self);
  try
    Escurecer.Show;
    frmConsultaVenda.ShowModal;
    if frmConsultaVenda.ModalResult = mrOk then
    begin
      SWHEdit1.Text := frmConsultaVenda.qryConsultaVendaid.AsString;
      DateTimePicker1.Date := frmConsultaVenda.qryConsultaVendadatavenda.AsDateTime;
    end;
  finally
    frmConsultaVenda.Free;
    Escurecer.Free;
  end;
end;

procedure TfrmCancelamentoVenda.ClearField;
begin
  SWHEdit1.Clear;
  Memo1.Clear;
  DateTimePicker1.Date := Date;
end;

procedure TfrmCancelamentoVenda.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  Memo1.Clear;
end;

procedure TfrmCancelamentoVenda.SpeedButton1Click(Sender: TObject);
begin
  qryVendas.Close;
  qryVendas.ParamByName('id').AsInteger     := StrToInt(SWHEdit1.Text);
  qryVendas.ParamByName('datavenda').AsDate := DateTimePicker1.Date;
  qryVendas.Open;

  if qryVendas.IsEmpty then
  begin
    MsgOk('Venda não localizada!', 'Esta venda não existe ou foi cancelada.');
  end
  else
  begin
    qryContasReceber.Close;
    qryContasReceber.ParamByName('numerodoc').AsString := qryVendas.FieldByName('id').AsString;
    qryContasReceber.ExecSQL;

    qryEstoquete.Close;
    qryEstoquete.ParamByName('numerodoc').AsString := qryVendas.FieldByName('id').AsString;
    qryEstoquete.ExecSQL;

    qryVendas.Edit;
    qryVendas.FieldByName('situacao').AsInteger := 1;
    qryVendas.FieldByName('obervacao').AsString := Memo1.Text;
    qryVendas.Post;
    Self.ClearField;

    MsgOk('Venda cancelada com sucesso!', 'Contas Receber e Estoque foram estornados');
  end;
end;

end.
