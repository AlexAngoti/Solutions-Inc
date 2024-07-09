unit uFrenteVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, SWHMaskEdit,
  Vcl.Samples.Spin, dxGDIPlusClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.DBClient, SWHDBLookupComboBox;

type
  TfrmFrenteVendas = class(TForm)
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    pnlBotoes: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnPesquisa: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    spnQuantidade: TSpinEdit;
    SWHMaskEdit1: TSWHMaskEdit;
    SWHMaskEdit2: TSWHMaskEdit;
    pnlAdicionar: TPanel;
    SpeedButton5: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnlQuadroProd: TPanel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    lbPedido: TLabel;
    Label11: TLabel;
    lbTotalPedido: TLabel;
    SpeedButton6: TSpeedButton;
    imgLogoTop: TImage;
    qryVendas: TFDQuery;
    dsVendas: TDataSource;
    cdsVendaProd: TClientDataSet;
    dsVendaProduto: TDataSource;
    qryCliente: TFDQuery;
    dsCliente: TDataSource;
    qryVendedor: TFDQuery;
    dsVendedor: TDataSource;
    qryProduto: TFDQuery;
    dsProduto: TDataSource;
    qryVendasid: TLargeintField;
    qryVendasdatavenda: TDateField;
    qryVendascliente: TIntegerField;
    qryVendasformapgto: TIntegerField;
    qryVendasvalortotal: TBCDField;
    qryVendasusuario: TIntegerField;
    qryVendasobervacao: TWideStringField;
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
    qryVendedorid: TLargeintField;
    qryVendedorsituacao: TIntegerField;
    qryVendedortipopessoa: TIntegerField;
    qryVendedorfisicojuridico: TIntegerField;
    qryVendedorcnpjcpf: TWideStringField;
    qryVendedornomerazao: TWideStringField;
    qryVendedorierg: TWideStringField;
    qryVendedornomefantasia: TWideStringField;
    qryVendedoremail: TWideStringField;
    qryVendedorcontato: TWideStringField;
    qryVendedortelefone: TWideStringField;
    qryVendedorcep: TWideStringField;
    qryVendedorendereco: TWideStringField;
    qryVendedorbairro: TWideStringField;
    qryVendedorcomplemento: TWideStringField;
    qryVendedorcidade: TWideStringField;
    qryVendedortelefone2: TWideStringField;
    qryVendedoruf: TWideStringField;
    qryVendedornumero: TWideStringField;
    qryVendedordatanasc: TDateField;
    qryProdutoid: TLargeintField;
    qryProdutonome: TWideStringField;
    qryProdutosituacao: TIntegerField;
    qryProdutopresobruto: TBCDField;
    qryProdutopesoliquedo: TBCDField;
    qryProdutodescricao: TWideStringField;
    qryProdutovalorunitario: TBCDField;
    qryProdutoimagem: TBlobField;
    dsItensVenda: TDataSource;
    qryItensVendas: TFDQuery;
    qryNumVendas: TFDQuery;
    SWHDBLookupComboBox1: TSWHDBLookupComboBox;
    SWHDBLookupComboBox2: TSWHDBLookupComboBox;
    SWHDBLookupComboBox3: TSWHDBLookupComboBox;
    qryItensVendasid: TLargeintField;
    qryItensVendasidvenda: TIntegerField;
    qryItensVendasproduto: TIntegerField;
    qryItensVendasquantidade: TBCDField;
    qryItensVendasvalorunitario: TBCDField;
    qryItensVendastotalitem: TBCDField;
    cdsVendaProdproduto: TIntegerField;
    cdsVendaProdnome: TStringField;
    cdsVendaProdqtde: TIntegerField;
    cdsVendaProduni: TFloatField;
    cdsVendaProdtotalitem: TCurrencyField;
    qryNumVendasid: TLargeintField;
    dbImage: TImage;
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SWHMaskEdit1Exit(Sender: TObject);
    procedure SWHDBLookupComboBox3Exit(Sender: TObject);
    procedure spnQuantidadeExit(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure BloqueiaCampo;
    procedure LiberaCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFrenteVendas: TfrmFrenteVendas;
  vTotalVenda: Currency;

implementation

uses
  uParcelas, uConsultaVendedor, uDM, uPesquisaPadrao, uEscurecerFundo, uPesquisaProduto, uUtils;

{$R *.dfm}

procedure TfrmFrenteVendas.BloqueiaCampo;
begin
  SWHDBLookupComboBox1.Enabled := False;
  SWHDBLookupComboBox2.Enabled := False;
  SWHDBLookupComboBox3.Enabled := False;
  btnPesquisa.Enabled          := False;
  Label1.Enabled               := False;
  Label2.Enabled               := False;
  SpeedButton3.Enabled         := False;
  Label3.Enabled               := False;
  SpeedButton4.Enabled         := False;
  Label4.Enabled               := False;
  Label5.Enabled               := False;
  SWHMaskEdit1.Enabled         := False;
  Label6.Enabled               := False;
  dbImage.Enabled              := False;
  pnlAdicionar.Enabled         := False;
end;

procedure TfrmFrenteVendas.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmFrenteVendas.btnPesquisaClick(Sender: TObject);
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(Self);
  try
    frmEscurecerFundo.Show;
    frmPesquisaPadrao.ShowModal;
    if frmPesquisaPadrao.ModalResult = mrOk then
    begin
      qryVendascliente.AsInteger := frmPesquisaPadrao.qryPadraoId.AsInteger;
    end;
  finally
    frmPesquisaPadrao.Free;
    frmEscurecerFundo.Free;
  end;
end;

procedure TfrmFrenteVendas.FormCreate(Sender: TObject);
begin
  Self.BloqueiaCampo;
  cdsVendaProd.CreateDataSet;
end;

procedure TfrmFrenteVendas.LiberaCampo;
begin
  SWHDBLookupComboBox1.Enabled := True;
  SWHDBLookupComboBox2.Enabled := True;
  SWHDBLookupComboBox3.Enabled := True;
  btnPesquisa.Enabled          := True;
  Label1.Enabled               := True;
  Label2.Enabled               := True;
  SpeedButton3.Enabled         := True;
  Label3.Enabled               := True;
  SpeedButton4.Enabled         := True;
  Label4.Enabled               := True;
  Label5.Enabled               := True;
  SWHMaskEdit1.Enabled         := True;
  Label6.Enabled               := True;
  dbImage.Enabled              := True;
  pnlAdicionar.Enabled         := True;
end;

procedure TfrmFrenteVendas.OpenDataSet;
begin
  qryVendas.Close;
  qryVendas.Open;
  qryVendas.Insert;

  qryItensVendas.Close;
  qryItensVendas.Open;
  qryItensVendas.Insert;

  qryProduto.Close;
  qryProduto.Open;

  qryCliente.Close;
  qryCliente.Open;

  qryVendedor.Close;
  qryVendedor.Open;

  qryNumVendas.Close;
  qryNumVendas.Open;
end;

procedure TfrmFrenteVendas.SpeedButton1Click(Sender: TObject);
begin
  vTotalVenda := 0;
  Self.OpenDataSet;
  Self.LiberaCampo;
  lbPedido.Caption := '000' + qryNumVendasid.AsString;
  qryVendasdatavenda.AsDateTime := Date;
end;

procedure TfrmFrenteVendas.SpeedButton2Click(Sender: TObject);
begin
  if MsgConfirmar('Deseja cancelar esta venda?', 'Nenhum dado será salvo se continuar.') = mrOk then
  begin
    Self.OpenDataSet;
    Self.BloqueiaCampo;
    spnQuantidade.Text := '0';
    SWHMaskEdit1.Clear;
    SWHMaskEdit2.Clear;
    dbImage.Picture := nil;
    cdsVendaProd.EmptyDataSet;
    lbTotalPedido.Caption := FormatFloat('R$ #,##0.00', 0);
    qryProduto.Close;
    qryProduto.Open;
  end;
end;

procedure TfrmFrenteVendas.SpeedButton3Click(Sender: TObject);
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmConsultaVendedor := TfrmConsultaVendedor.Create(Self);
  try
    frmEscurecerFundo.Show;
    frmConsultaVendedor.ShowModal;
    if frmConsultaVendedor.ModalResult = mrOk then
    begin
      qryVendasusuario.AsInteger := (frmConsultaVendedor.dsConsultaPadrao.DataSet as TFDQuery).FieldByName('id').AsInteger;
    end;
  finally
    frmEscurecerFundo.Free;
    frmConsultaVendedor.Free;
  end;
end;

procedure TfrmFrenteVendas.SpeedButton4Click(Sender: TObject);
begin
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmConsultaProdutos := TfrmConsultaProdutos.Create(Self);
  try
    frmEscurecerFundo.Show;
    frmConsultaProdutos.vOrigem := 1;
    frmConsultaProdutos.ShowModal;
    if frmConsultaProdutos.ModalResult = mrOk then
    begin
      qryItensVendasproduto.AsInteger := (frmConsultaProdutos.dsConsultaPadrao.DataSet as TFDQuery).FieldByName('id').AsInteger;
      SWHMaskEdit1.Text := qryProdutovalorunitario.AsString;
      dbImage.Picture.LoadFromStream(qryProduto.CreateBlobStream(qryProdutoimagem, bmRead));
      SWHMaskEdit1Exit(Sender);
    end;
  finally
    frmEscurecerFundo.Free;
    frmConsultaProdutos.Free;
  end;
end;

procedure TfrmFrenteVendas.SpeedButton5Click(Sender: TObject);
begin
  cdsVendaProd.Insert;
  cdsVendaProdproduto.AsInteger := qryItensVendasproduto.AsInteger;
  cdsVendaProdnome.AsString     := SWHDBLookupComboBox3.Text;
  cdsVendaProdqtde.AsInteger    := StrToInt(spnQuantidade.Text);
  cdsVendaProduni.AsFloat       := StrToFloat(SWHMaskEdit1.Text);
  cdsVendaProdtotalitem.AsCurrency := StrToCurr(SWHMaskEdit2.Text);
  cdsVendaProd.Post;

  vTotalVenda :=  vTotalVenda + StrToCurr(SWHMaskEdit2.Text);
  lbTotalPedido.Caption := FormatFloat('R$ #,##0.00', vTotalVenda);

  spnQuantidade.Text := '0';
  SWHMaskEdit1.Clear;
  dbImage.Picture := nil;
  SWHMaskEdit2.Clear;
  qryProduto.Close;
  qryProduto.Open;

  qryItensVendasproduto.AsInteger := 0;
end;

procedure TfrmFrenteVendas.SpeedButton6Click(Sender: TObject);
begin
  frmParcelas := TfrmParcelas.Create(Self);
  try
    frmParcelas.ShowModal;
    if frmParcelas.ModalResult = mrOk then
    begin
      MsgOk('Venda realizada com sucesso!', 'Venda concluida com sucesso');

      Self.OpenDataSet;
      spnQuantidade.Text := '0';
      SWHMaskEdit1.Clear;
      dbImage.Picture := nil;
      SWHMaskEdit2.Clear;
      qryProduto.Close;
      qryProduto.Open;
      cdsVendaProd.EmptyDataSet;
      lbTotalPedido.Caption := FormatFloat('R$ #,##0.00', 0);
      Self.BloqueiaCampo;
    end;
  finally
    frmParcelas.Free;
  end;
end;

procedure TfrmFrenteVendas.spnQuantidadeExit(Sender: TObject);
begin
  SWHMaskEdit1Exit(Sender);
end;

procedure TfrmFrenteVendas.SWHDBLookupComboBox3Exit(Sender: TObject);
begin
  SWHMaskEdit1.Text := qryProdutovalorunitario.AsString;
  dbImage.Picture.LoadFromStream(qryProduto.CreateBlobStream(qryProdutoimagem, bmRead));
  SWHMaskEdit1Exit(Sender);
end;

procedure TfrmFrenteVendas.SWHMaskEdit1Exit(Sender: TObject);
begin
  if SWHMaskEdit1.Text <> EmptyStr then
    SWHMaskEdit2.Text := CurrToStr(StrToInt(spnQuantidade.Text) * StrToFloat(SWHMaskEdit1.Text));
end;

end.
