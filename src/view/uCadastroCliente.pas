unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  SWHComboBox, Vcl.ComCtrls, Vcl.Mask, SWHMaskEdit, Vcl.DBCtrls, SWHDBEdit;

type
  TfrmCadastroCliente = class(TfrmCadastroPadrao)
    pnlCentralDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TSWHDBEdit;
    lbl_cpf_cnpj: TLabel;
    edtCpfCnpj: TSWHMaskEdit;
    Label9: TLabel;
    edtEmail: TSWHDBEdit;
    edtIeRg: TSWHMaskEdit;
    lbl_ie_rg: TLabel;
    edtTelefone: TSWHDBEdit;
    Label10: TLabel;
    edtContato: TSWHDBEdit;
    Label8: TLabel;
    edtNomeFantasia: TSWHDBEdit;
    lbl_razao: TLabel;
    pnl_pessoa: TPanel;
    rbFisica: TRadioButton;
    rbJuridica: TRadioButton;
    Label5: TLabel;
    cbxTipoClientes: TSWHComboBox;
    cbxAtivo: TSWHComboBox;
    lblAtivo: TLabel;
    pnlEndereco: TPanel;
    edtEstado: TSWHDBEdit;
    edtNumero: TSWHDBEdit;
    edtComplemento: TSWHDBEdit;
    edtEndereco: TSWHDBEdit;
    edtFone3: TSWHDBEdit;
    pnl_cep: TPanel;
    spb_pesquisa: TSpeedButton;
    edtCep: TSWHMaskEdit;
    edtBairro: TSWHDBEdit;
    edtCidade: TSWHDBEdit;
    lblNumero: TLabel;
    lblComplemento: TLabel;
    lblEndereco: TLabel;
    lblCep: TLabel;
    lblEstado: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblTelefone3: TLabel;
    cdsCadastroPadraoid: TLargeintField;
    cdsCadastroPadraotipopessoa: TWideStringField;
    cdsCadastroPadraonomerazao: TWideStringField;
    cdsCadastroPadraocpfcnpj: TWideStringField;
    cdsCadastroPadraomodelopessoa: TWideStringField;
    cdsCadastroPadraorgie: TWideStringField;
    cdsCadastroPadraonomefantasia: TWideStringField;
    cdsCadastroPadraonomecontato: TWideStringField;
    cdsCadastroPadraoemail: TWideStringField;
    cdsCadastroPadraotelefone: TWideStringField;
    cdsCadastroPadraocep: TWideStringField;
    cdsCadastroPadraoendereco: TWideStringField;
    cdsCadastroPadraocomplemento: TWideStringField;
    cdsCadastroPadraobairro: TWideStringField;
    cdsCadastroPadraocidade: TWideStringField;
    cdsCadastroPadraonumero: TWideStringField;
    cdsCadastroPadraoestado: TWideStringField;
    cdsCadastroPadraotelefone2: TWideStringField;
    cdsCadastroPadraosituacao: TIntegerField;
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

uses
  uDM;

{$R *.dfm}

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
  if cbxTipoClientes.Enabled = False then
  begin
    Self.Close;
  end
  else
  begin
    inherited;
  end;
end;

end.
