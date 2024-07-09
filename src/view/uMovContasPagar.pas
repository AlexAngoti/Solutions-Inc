unit uMovContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, SWHDBEdit, Data.DB, Vcl.ComCtrls, SWHComboBox,
  Datasnap.DBClient, SWHMaskEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, SWHDBComboBox, SWHDBLookupComboBox,
  dxGDIPlusClasses;

type
  TfrmMovPagar = class(TForm)
    pnlCentral: TPanel;
    pnlSubBot: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    edtDescricao: TSWHDBEdit;
    dsMovContasReceber: TDataSource;
    dtpDataVencimento: TDateTimePicker;
    lblDataVencimento: TLabel;
    lblValor: TLabel;
    lblFormaPgto: TLabel;
    lblDescricao: TLabel;
    lblCliente: TLabel;
    Panel1: TPanel;
    imgLogoTop: TImage;
    lblNomeLogoTop: TLabel;
    SpeedButton1: TSpeedButton;
    pnlSubTop: TPanel;
    edtValor: TSWHMaskEdit;
    qryCliente: TFDQuery;
    dsCliente: TDataSource;
    qryClienteid: TLargeintField;
    qryClientesituacao: TIntegerField;
    qryClientetipopessoa: TIntegerField;
    qryClientefisicojuridico: TIntegerField;
    qryClientecnpjcpf: TWideStringField;
    qryClientenomerazao: TWideStringField;
    qryClienteierg: TWideStringField;
    qryClientenomefantasia: TWideStringField;
    qryClienteemail: TWideStringField;
    qryClientecontato: TWideStringField;
    qryClientetelefone: TWideStringField;
    qryClientecep: TWideStringField;
    qryClienteendereco: TWideStringField;
    qryClientebairro: TWideStringField;
    qryClientecomplemento: TWideStringField;
    qryClientecidade: TWideStringField;
    qryClientetelefone2: TWideStringField;
    qryClienteuf: TWideStringField;
    qryClientenumero: TWideStringField;
    qryClientedatanasc: TDateField;
    qryFormaPgto: TFDQuery;
    dsFormaPgto: TDataSource;
    qryFormaPgtoid: TLargeintField;
    qryFormaPgtonome: TWideStringField;
    qryFormaPgtoabreviação: TWideStringField;
    qryFormaPgtotipopgto: TIntegerField;
    qryFormaPgtoativo: TIntegerField;
    spbPesquisa: TSpeedButton;
    cbxCliente: TSWHDBLookupComboBox;
    cxFormaPgto: TSWHDBLookupComboBox;
    Label1: TLabel;
    edtNumDoc: TSWHDBEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure spbPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure EstadoQuery;
    procedure ValidaCampo;
    procedure AlimentaCampo;
    procedure ConsultaCliente;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovPagar: TfrmMovPagar;

implementation

uses
  uUTils, uContasPagar, UDm, uPesquisaPadraoForn;

{$R *.dfm}

procedure TfrmMovPagar.AlimentaCampo;
begin
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('dataemissao').
    AsDateTime := Date;
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('datavencimento').
    AsDateTime := dtpDataVencimento.Date;
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('valor').AsCurrency
    := StrToCurr(edtValor.Text);
end;

procedure TfrmMovPagar.btnCancelarClick(Sender: TObject);
begin
  if MsgConfirmar('Deseja cancelar o processo atual ?',
  'Se cancelar o processo atual não será salvo') = mrOk then
  begin
    (dsMovContasReceber.DataSet as TClientDataSet).Cancel;
    Self.Close;
  end;
end;

procedure TfrmMovPagar.btnFecharClick(Sender: TObject);
begin
  btnCancelarClick(Self);
end;

procedure TfrmMovPagar.btnNovoLancamentoClick(Sender: TObject);
begin
  Self.ValidaCampo;
  Self.AlimentaCampo;
  (dsMovContasReceber.DataSet as TClientDataSet).Post;
  (dsMovContasReceber.DataSet as TClientDataSet).ApplyUpdates(-1);
  Self.Close;
end;

procedure TfrmMovPagar.ConsultaCliente;
begin
  frmPesquisaPadraoForn := TfrmPesquisaPadraoForn.Create(Self);
  try
    frmPesquisaPadraoForn.ShowModal;
    if frmPesquisaPadraoForn.ModalResult = 1 then
    begin
      if frmPesquisaPadraoForn.ModalResult = mrOk then
      begin
        (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('idfornecedor').AsInteger
          := frmPesquisaPadraoForn.qryPadrao.FieldByName('Id').AsInteger;
      end;
    end;
  finally
    frmPesquisaPadraoForn.Free;
  end;
end;

procedure TfrmMovPagar.EstadoQuery;
begin
  if (dsMovContasReceber.DataSet as TClientDataSet).State in [dsEdit] then
  begin
    dtpDataVencimento.Date := (dsMovContasReceber.DataSet as TClientDataSet).
      FieldByName('datavencimento').AsDateTime;
    edtValor.Text := (dsMovContasReceber.DataSet as TClientDataSet).
      FieldByName('valor').AsString;
  end;
end;

procedure TfrmMovPagar.FormCreate(Sender: TObject);
begin
  dtpDataVencimento.Date := Date;
  Self.EstadoQuery;
end;

procedure TfrmMovPagar.FormShow(Sender: TObject);
begin
  qryCliente.Close;
  qryCliente.Open;

  qryFormaPgto.Close;
  qryFormaPgto.Open;

  if edtNumDoc.Text <> EmptyStr then
  begin
    edtValor.Text := (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('valor').AsString;
  end;
end;

procedure TfrmMovPagar.spbPesquisaClick(Sender: TObject);
begin
  Self.ConsultaCliente;
end;

procedure TfrmMovPagar.ValidaCampo;
begin
  if dtpDataVencimento.Date < Date then
  begin
     MsgConfirmar('Data vencimento menor que data atual. Deseja continuar?',
    '');
      dtpDataVencimento.SetFocus;
  end;

  if edtNumDoc.Text = EmptyStr then
  begin
     MsgOk('Numero de documento não pode ser vazio!',
    '');
      dtpDataVencimento.SetFocus;
  end;

  if edtValor.Text = EmptyStr then
  begin
    MsgOk('Favor informar o valor!!',
    'Informar valor do lançamento');
    edtValor.SetFocus;
    Abort;
  end;

  if edtDescricao.Text = EmptyStr then
  begin
    MsgOk('Favor informar a descrição!!',
    'Informar uma descrição para o lançamento');
    edtDescricao.SetFocus;
    Abort;
  end;

  if (cbxCliente.Text = EmptyStr) then
  begin
    MsgOk('Favor escolher um cliente!!',
    'Informe o cliente referente a esse lançamento');
    cbxCliente.SetFocus;
    Abort;
  end;

  if cxFormaPgto.Text = EmptyStr then
  begin
    MsgOk('Favor escolher uma forma de pagamento!!',
    'Favor informar forma de pagamento do lançamento');
    cxFormaPgto.SetFocus;
    Abort;
  end;
end;

end.
