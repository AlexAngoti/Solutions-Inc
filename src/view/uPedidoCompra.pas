unit uPedidoCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, SWHEdit, Vcl.DBCtrls, SWHDBComboBox,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, SWHDBLookupComboBox, Vcl.Mask, SWHMaskEdit;

type
  TfrmPedidoCompra = class(TForm)
    pnlSubTop: TPanel;
    imgLogoTop: TImage;
    btnFechar: TSpeedButton;
    pnlBotoes: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlSubOpcao: TPanel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Panel4: TPanel;
    pnlAdicionar: TPanel;
    SpeedButton5: TSpeedButton;
    Panel5: TPanel;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton8: TSpeedButton;
    qryCompra: TFDQuery;
    dsCompra: TDataSource;
    qryFormaPgto: TFDQuery;
    qryFormaPgtoid: TLargeintField;
    qryFormaPgtonome: TWideStringField;
    qryFormaPgtoabreviação: TWideStringField;
    qryFormaPgtotipopgto: TIntegerField;
    qryFormaPgtoativo: TIntegerField;
    dsFormaPgto: TDataSource;
    SWHDBLookupComboBox1: TSWHDBLookupComboBox;
    SWHDBLookupComboBox2: TSWHDBLookupComboBox;
    qryCliente: TFDQuery;
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
    dsCliente: TDataSource;
    qryCompraid: TLargeintField;
    qryCompradatavenda: TDateField;
    qryComprafornecedor: TIntegerField;
    qryCompraformapgto: TIntegerField;
    qryCompravalortotal: TBCDField;
    qryComprausuario: TIntegerField;
    qryCompraobervacao: TWideStringField;
    qryComprasituacao: TWideStringField;
    qryProduto: TFDQuery;
    qryProdutoid: TLargeintField;
    qryProdutonome: TWideStringField;
    qryProdutosituacao: TIntegerField;
    qryProdutopresobruto: TBCDField;
    qryProdutopesoliquedo: TBCDField;
    qryProdutodescricao: TWideStringField;
    qryProdutovalorunitario: TBCDField;
    qryProdutoimagem: TBlobField;
    dsProduto: TDataSource;
    SWHDBLookupComboBox3: TSWHDBLookupComboBox;
    qryItens: TFDQuery;
    dsItens: TDataSource;
    qryItensid: TLargeintField;
    qryItensidcompra: TIntegerField;
    qryItensproduto: TIntegerField;
    qryItensquantidade: TBCDField;
    qryItensvalorunitario: TBCDField;
    qryItenstotalitem: TBCDField;
    qryNumVendas: TFDQuery;
    qryNumVendasid: TLargeintField;
    edtFrete: TSWHMaskEdit;
    edtDespesas: TSWHMaskEdit;
    edtQtde: TSWHMaskEdit;
    edtUnitario: TSWHMaskEdit;
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure LiberaCampos;
    procedure BloqueiaCampos;
    procedure OpenDataSet;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidoCompra: TfrmPedidoCompra;

implementation

uses
  uParcelas, uDM, uPesquisaPadraoForn, uEscurecerFundo, uParcelasCompra;

{$R *.dfm}

procedure TfrmPedidoCompra.BloqueiaCampos;
begin
  DateTimePicker1.Enabled := False;
  DateTimePicker2.Enabled := False;
  DateTimePicker3.Enabled := False;
  SWHDBLookupComboBox1.Enabled := False;
  SWHDBLookupComboBox2.Enabled := False;
  edtFrete.Enabled := False;
  edtDespesas.Enabled := False;
  Panel4.Enabled   := False;
end;

procedure TfrmPedidoCompra.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPedidoCompra.FormCreate(Sender: TObject);
begin
  Self.BloqueiaCampos;

  qryProduto.Close;
  qryProduto.Open;

  qryFormaPgto.Close;
  qryFormaPgto.Open;

  qryCliente.Close;
  qryCliente.Open;
end;

procedure TfrmPedidoCompra.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  DateTimePicker3.Date := Date;
end;

procedure TfrmPedidoCompra.LiberaCampos;
begin
  DateTimePicker1.Enabled := True;
  DateTimePicker2.Enabled := True;
  SWHDBLookupComboBox1.Enabled := True;
  SWHDBLookupComboBox2.Enabled := True;
  edtFrete.Enabled := True;
  edtDespesas.Enabled := True;
  Panel4.Enabled   := True;//
end;

procedure TfrmPedidoCompra.OpenDataSet;
begin
  qryCompra.Close;
  qryCompra.ParamByName('id').AsInteger := StrToInt(Edit1.Text);
  qryCompra.Open;

  qryItens.Post;
  qryItens.Close;
  qryItens.Insert;
end;

procedure TfrmPedidoCompra.SpeedButton3Click(Sender: TObject);
begin
  if Edit1.Text = EmptyStr then
  begin
    qryCompra.Close;
    qryCompra.ParamByName('id').AsInteger := 0;
    qryCompra.Open;
    qryCompra.Insert;

    qryNumVendas.Close;
    qryNumVendas.Open;

    DateTimePicker3.Enabled := False;
    SpeedButton1.Enabled := false;
    Self.LiberaCampos;
  end
  else
  begin
    Self.OpenDataSet;
    qryCompra.Edit;
    DateTimePicker3.Enabled := True;
    SpeedButton1.Enabled    := True;
    Self.LiberaCampos;
  end;
end;

procedure TfrmPedidoCompra.SpeedButton4Click(Sender: TObject);
begin
  qryItens.Delete;
  qryItens.Close;
  qryItens.Open;
  qryItens.Insert;
end;

procedure TfrmPedidoCompra.SpeedButton5Click(Sender: TObject);
begin
  qryItensidcompra.AsInteger := qryNumVendasid.AsInteger;
  qryItensquantidade.AsInteger := StrToInt(edtQtde.Text);
  qryItensvalorunitario.AsFloat := StrToFloat(edtUnitario.Text);
  qryItenstotalitem.AsCurrency  := StrToInt(edtQtde.Text) * StrToFloat(edtUnitario.Text);
  qryItens.Post;
  qryItens.Close;
  qryItens.Open;
  qryItens.Insert;
end;

procedure TfrmPedidoCompra.SpeedButton6Click(Sender: TObject);
begin
  frmParcelaCompras := TfrmParcelaCompras.Create(Self);
  try
    frmParcelaCompras.ShowModal;
  finally
    frmParcelaCompras.Free;
  end;
end;

procedure TfrmPedidoCompra.SpeedButton8Click(Sender: TObject);
var
  Escurecer: TfrmEscurecerFundo;
begin
  Escurecer := TfrmEscurecerFundo.Create(Self);
  frmPesquisaPadraoForn := TfrmPesquisaPadraoForn.Create(Self);
  try
    Escurecer.Show;
    frmPesquisaPadraoForn.ShowModal;
    if frmPesquisaPadraoForn.ModalResult = mrOk then
    begin
      qryComprafornecedor.AsInteger
        := frmPesquisaPadraoForn.qryPadrao.FieldByName('Id').AsInteger;
    end;
  finally
    frmPesquisaPadraoForn.Free;
  end;
end;

end.
