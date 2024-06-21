unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  SWHComboBox, Vcl.ComCtrls, Vcl.Mask, SWHMaskEdit, Vcl.DBCtrls, SWHDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  REST.Types, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TfrmCadastroCliente = class(TfrmCadastroPadrao)
    pnlCentralDados: TPanel;
    Label1: TLabel;
    lblNome: TLabel;
    edtNome: TSWHDBEdit;
    lbl_cpf_cnpj: TLabel;
    edtCpfCnpj: TSWHMaskEdit;
    Label9: TLabel;
    edtEmail: TSWHDBEdit;
    lbl_ie_rg: TLabel;
    Label10: TLabel;
    edtContato: TSWHDBEdit;
    Label8: TLabel;
    edtNomeFantasia: TSWHDBEdit;
    lbl_razao: TLabel;
    pnl_pessoa: TPanel;
    rbFisica: TRadioButton;
    rbJuridica: TRadioButton;
    cbxTipoClientes: TSWHComboBox;
    cbxAtivo: TSWHComboBox;
    lblAtivo: TLabel;
    pnlEndereco: TPanel;
    edtEstado: TSWHDBEdit;
    edtNumero: TSWHDBEdit;
    edtComplemento: TSWHDBEdit;
    edtEndereco: TSWHDBEdit;
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
    cdsCadastroPadraoid: TLargeintField;
    cdsCadastroPadraosituacao: TIntegerField;
    cdsCadastroPadraotipopessoa: TIntegerField;
    cdsCadastroPadraofisicojuridico: TIntegerField;
    cdsCadastroPadraonomerazao: TWideStringField;
    cdsCadastroPadraoierg: TWideStringField;
    cdsCadastroPadraonomefantasia: TWideStringField;
    cdsCadastroPadraoemail: TWideStringField;
    cdsCadastroPadraocontato: TWideStringField;
    cdsCadastroPadraotelefone: TWideStringField;
    cdsCadastroPadraocep: TWideStringField;
    cdsCadastroPadraoendereco: TWideStringField;
    cdsCadastroPadraobairro: TWideStringField;
    cdsCadastroPadraocomplemento: TWideStringField;
    cdsCadastroPadraocidade: TWideStringField;
    cdsCadastroPadraotelefone2: TWideStringField;
    cdsCadastroPadraouf: TWideStringField;
    cdsCadastroPadraonumero: TWideStringField;
    edtTelefone: TSWHMaskEdit;
    edteirg: TSWHDBEdit;
    qryValidaRegistro: TFDQuery;
    cdsCadastroPadraocnpjcpf: TWideStringField;
    Label3: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    cdsEndereco: TClientDataSet;
    edtTelefone2: TSWHMaskEdit;
    Label2: TLabel;
    edtDtNasc: TSWHMaskEdit;
    Label4: TLabel;
    cdsCadastroPadraodatanasc: TDateField;
    pnlCnpj: TPanel;
    RestCnpj: TRESTClient;
    RestReqCNPJ: TRESTRequest;
    RestResponseCNPJ: TRESTResponse;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    cdsBuscaCNPJ: TClientDataSet;
    SpeedButton1: TSpeedButton;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter;
    ClientDataSet1: TClientDataSet;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtCpfCnpjExit(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rbFisicaClick(Sender: TObject);
    procedure spb_pesquisaClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnConsCnpjCpfClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure SalvaReg;
    procedure ValidaExiste;
    procedure ValidaPessoa;
    procedure InseriCNPJ;
    procedure InseriCPF;
    procedure BuscaCPFCNPJ;
    { Private declarations }
  public
    procedure OpenScreen; override;
    procedure BloqueiaCampo;  override;
    procedure LiberaCampo; override;
    procedure ValidaRegistro; override;
    procedure ClearField; override;
    procedure ExcluiAcesso;override;
    procedure AlimentaCampoCep;
    function IsCNPJValid(const CNPJ: string): Boolean;
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

uses
  uDM, uConsultaPessoa, uUtils, uEscurecerFundo, uRealizandoBusca;

{$R *.dfm}

procedure TfrmCadastroCliente.AlimentaCampoCep;
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('endereco').AsString
    := cdsEndereco.FieldByName('logradouro').AsString;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('complemento').AsString
    := cdsEndereco.FieldByName('complemento').AsString;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('bairro').AsString
    := cdsEndereco.FieldByName('bairro').AsString;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('cidade').AsString
    := cdsEndereco.FieldByName('localidade').AsString;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('uf').AsString
    := cdsEndereco.FieldByName('uf').AsString;
end;

procedure TfrmCadastroCliente.BloqueiaCampo;
begin
  inherited;
  cbxTipoClientes.Enabled := False;
  cbxAtivo.Enabled        := False;
  edtNome.Enabled         := False;
  edtCpfCnpj.Enabled      := False;
  edtEmail.Enabled        := False;
  edteirg.Enabled         := False;
  edtTelefone.Enabled     := False;
  edtContato.Enabled      := False;
  edtNomeFantasia.Enabled := False;
  edtEstado.Enabled       := False;
  edtNumero.Enabled       := False;
  edtComplemento.Enabled  := False;
  edtEndereco.Enabled     := False;
  edtTelefone2.Enabled    := False;
  edtCep.Enabled          := False;
  edtBairro.Enabled       := False;
  edtCidade.Enabled       := False;
  pnl_pessoa.Enabled      := False;
  rbFisica.Enabled        := False;
  rbJuridica.Enabled      := False;
  lbl_cpf_cnpj.Enabled    := False;
  lbl_ie_rg.Enabled       := False;
  lbl_razao.Enabled       := False;
  lblAtivo.Enabled        := False;
  lblNumero.Enabled       := False;
  lblComplemento.Enabled  := False;
  lblEndereco.Enabled     := False;
  lblCep.Enabled          := False;
  lblEstado.Enabled       := False;
  lblBairro.Enabled       := False;
  lblCidade.Enabled       := False;
  Label1.Enabled          := False;
  Label2.Enabled          := False;
  Label9.Enabled          := False;
  Label10.Enabled         := False;
  Label8.Enabled          := False;
  spb_pesquisa.Enabled    := False;
  lblNome.Enabled         := False;
  edtDtNasc.Enabled       := False;
  Label4.Enabled          := False;
  pnlCnpj.Enabled         := False;
end;

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

procedure TfrmCadastroCliente.btnConfirmarClick(Sender: TObject);
begin
  Self.SalvaReg;
  Self.ValidaExiste;
  inherited;
end;

procedure TfrmCadastroCliente.btnConsCnpjCpfClick(Sender: TObject);
begin
  inherited;
  if rbJuridica.Checked = True then
  begin

  end;
end;

procedure TfrmCadastroCliente.btnInserirClick(Sender: TObject);
begin
  inherited;
  edtContato.Enabled   := False;
  edtTelefone.Enabled  := False;
  edtTelefone2.Enabled := False;
  edtEmail.Enabled     := False;
  label8.Enabled       := False;
  label9.Enabled       := False;
  label10.Enabled      := False;
  label2.Enabled       := False;
end;

procedure TfrmCadastroCliente.BuscaCPFCNPJ;
begin
if rbJuridica.Checked = True then
  begin
    RestReqCNPJ.Params.ParameterByName('CNPJ').Value  := edtCpfCnpj.Text;
    RestReqCNPJ.Params.ParameterByName('TOKEN').Value := uUtils.FTokenSintegra;
    try
      RestReqCNPJ.Execute;

      if RestResponseCNPJ.StatusCode in [200, 201] then
      begin
        Self.InseriCNPJ;
      end;
    except
      uUtils.MsgOk('Erro ao consultar CNPJ!',
        'Favor verificar CNPJ informado');
        abort;
    end;
  end
  else
  if rbFisica.Checked = True then
  begin
    RESTRequest2.Params.ParameterByName('CPF').Value   := edtCpfCnpj.Text;
    RESTRequest2.Params.ParameterByName('TOKEN').Value := uUtils.FTokenSintegra;
    RESTRequest2.Params.ParameterByName('DATA').Value  := edtDtNasc.Text;
    try
      RESTRequest2.Execute;

      if RESTResponse2.StatusCode in [200, 201] then
      begin
        Self.InseriCPF;
      end;
    except
      uUtils.MsgOk('Erro ao consultar CPF!',
        'Favor verificar CPF informado');
        abort;
    end;
  end;
end;

procedure TfrmCadastroCliente.ClearField;
begin
  inherited;
  cbxTipoClientes.ItemIndex := -1;
  cbxAtivo.ItemIndex        := -1; 
  edtNome.Clear;         
  edtCpfCnpj.Clear;      
  edtEmail.Clear;
  edteirg.Clear;         
  edtTelefone.Clear;
  edtContato.Clear;      
  edtNomeFantasia.Clear;
  edtEstado.Clear;       
  edtNumero.Clear;       
  edtComplemento.Clear;
  edtEndereco.Clear;     
  edtTelefone2.Clear;    
  edtCep.Clear;          
  edtBairro.Clear;       
  edtCidade.Clear;      
  rbFisica.Checked;
  edtDtNasc.Clear;
end;

procedure TfrmCadastroCliente.edtCpfCnpjExit(Sender: TObject);
var
  Valida: string;
begin
  inherited;
  Valida := edtCpfCnpj.Text;
  if rbFisica.Checked then
  begin
    if edtCpfCnpj.Text <> EmptyStr then
    begin
      if Valida.Length <> 11 then
      begin
        ShowMessage('Esse CPF não é valido, favor verificar!');
        edtCpfCnpj.SetFocus;
        Abort;
      end;
    end;
  end;

  if rbJuridica.Checked then
  begin
    if edtCpfCnpj.Text <> EmptyStr then
    begin
      if Valida.Length <> 14 then
      begin
        ShowMessage('Esse CNPJ não é valido, favor verificar!');
        edtCpfCnpj.SetFocus;
        Abort;
      end;

      if IsCNPJValid(edtCpfCnpj.Text) = False then
      begin
        ShowMessage('Esse CNPJ não é valido, favor verificar!');
        edtCpfCnpj.SetFocus;
        Abort;
      end;
    end;
  end;

  if edtCpfCnpj.Text <> EmptyStr then
  begin
    edtContato.Enabled   := True;
    edtTelefone.Enabled  := True;
    edtTelefone2.Enabled := True;
    edtEmail.Enabled     := True;
    label8.Enabled       := True;
    label9.Enabled       := True;
    label10.Enabled      := True;
    label2.Enabled       := True;

  end;
end;

procedure TfrmCadastroCliente.ExcluiAcesso;
begin
  inherited;
end;

procedure TfrmCadastroCliente.FormResize(Sender: TObject);
begin
  pnlCentralDados.Left := Round(pnlSubTop.Width / 2 - pnlCentralDados.Width / 2);
  pnlEndereco.Left     := Round(pnlSubTop.Width / 2 - pnlEndereco.Width / 2);
end;

procedure TfrmCadastroCliente.InseriCNPJ;
begin
  cdsCadastroPadraonomerazao.AsString    := cdsBuscaCNPJ.FieldByName('nome_empresarial').AsString;
  cdsCadastroPadraonomefantasia.AsString := cdsBuscaCNPJ.FieldByName('nome_fantasia').AsString;
  cdsCadastroPadraoierg.AsString         := cdsBuscaCNPJ.FieldByName('inscricao_estadual').AsString;
  cdsCadastroPadraodatanasc.AsDateTime   := StrToDateDef(StringReplace(cdsBuscaCNPJ.FieldByName('data_situacao_cadastral').AsString, '-', '/', [rfReplaceAll]), 0);
  cdsCadastroPadraouf.AsString           := cdsBuscaCNPJ.FieldByName('uf').AsString;
  cdsCadastroPadraocidade.AsString       := cdsBuscaCNPJ.FieldByName('municipio').AsString;
  cdsCadastroPadraoendereco.AsString     := cdsBuscaCNPJ.FieldByName('logradouro').AsString;
  cdsCadastroPadraocomplemento.AsString  := cdsBuscaCNPJ.FieldByName('complemento').AsString;
  edtCep.Text                            := cdsBuscaCNPJ.FieldByName('cep').AsString;
  cdsCadastroPadraonumero.AsString       := cdsBuscaCNPJ.FieldByName('numero').AsString;
  cdsCadastroPadraobairro.AsString       := cdsBuscaCNPJ.FieldByName('bairro').AsString;
  edtDtNasc.Text                         := cdsBuscaCNPJ.FieldByName('data_inicio_atividade').AsString;

  if cdsBuscaCNPJ.FieldByName('situacao_cnpj').AsString <> 'Ativo' then
  begin
    uUtils.MsgOk('AVISO ESSE CNPJ ESTÁ COM A SITUAÇÃO CADASTRAL: ' + cdsBuscaCNPJ.FieldByName('situacao_cnpj').AsString,
     'Situação cadastral do CNPJ diferente de ativo');
  end;
end;

procedure TfrmCadastroCliente.InseriCPF;
begin
  cdsCadastroPadraonomerazao.AsString := ClientDataSet1.FieldByName('nome').AsString;

  if ClientDataSet1.FieldByName('situacao_cadastral').AsString <> 'Regular' then
  begin
    uUtils.MsgOk('AVISO CPF COM SITUAÇÃO CADASTRAL: ' + ClientDataSet1.FieldByName('situacao_cadastral').AsString,
     'Situação cadastral do CPF diferente de regular');
  end;
end;

function TfrmCadastroCliente.IsCNPJValid(const CNPJ: string): Boolean;
  var
  i, j, soma, resto: Integer;
  peso: array [0..1] of array of Integer;
  cnpjNumeros: array [1..14] of Integer;
begin
  Result := False;

  // Remova caracteres não numéricos do CNPJ
  var cnpjCleaned := CNPJ.Replace('.', '').Replace('/', '').Replace('-', '');

  // Verifique se o CNPJ tem 14 dígitos
  if Length(cnpjCleaned) <> 14 then
    Exit;

  // Preencha o array cnpjNumeros com os dígitos do CNPJ
  for i := 1 to 14 do
  begin
    if not TryStrToInt(cnpjCleaned[i], cnpjNumeros[i]) then
      Exit;
  end;

  // Definição dos pesos para cálculo dos dígitos verificadores
  peso[0] := [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
  peso[1] := [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

  // Verifica o primeiro dígito verificador
  soma := 0;
  for i := 1 to 12 do
    soma := soma + cnpjNumeros[i] * peso[0][i - 1];

  resto := soma mod 11;
  if (resto < 2) then
    j := 0
  else
    j := 11 - resto;

  if j <> cnpjNumeros[13] then
    Exit;

  // Verifica o segundo dígito verificador
  soma := 0;
  for i := 1 to 13 do
    soma := soma + cnpjNumeros[i] * peso[1][i - 1];

  resto := soma mod 11;
  if (resto < 2) then
    j := 0
  else
    j := 11 - resto;

  Result := j = cnpjNumeros[14];
end;

procedure TfrmCadastroCliente.LiberaCampo;
begin
  inherited;
  cbxTipoClientes.Enabled := True;
  cbxAtivo.Enabled        := True;
  edtNome.Enabled         := True;
  edtCpfCnpj.Enabled      := True;
  edtEmail.Enabled        := True;
  edteirg.Enabled         := True;
  edtTelefone.Enabled     := True;
  edtContato.Enabled      := True;
  edtNomeFantasia.Enabled := True;
  edtEstado.Enabled       := True;
  edtNumero.Enabled       := True;
  edtComplemento.Enabled  := True;
  edtEndereco.Enabled     := True;
  edtTelefone2.Enabled    := True;
  edtCep.Enabled          := True;
  edtBairro.Enabled       := True;
  edtCidade.Enabled       := True;
  pnl_pessoa.Enabled      := True;
  rbFisica.Enabled        := True;
  rbJuridica.Enabled      := True;
  lbl_cpf_cnpj.Enabled    := True;
  lbl_ie_rg.Enabled       := True;
  lbl_razao.Enabled       := True;
  lblAtivo.Enabled        := True;
  lblNumero.Enabled       := True;
  lblComplemento.Enabled  := True;
  lblEndereco.Enabled     := True;
  lblCep.Enabled          := True;
  lblEstado.Enabled       := True;
  lblBairro.Enabled       := True;
  lblCidade.Enabled       := True;
  Label1.Enabled          := True;
  Label2.Enabled          := True;
  Label9.Enabled          := True;
  Label10.Enabled         := True;
  Label8.Enabled          := True;
  spb_pesquisa.Enabled    := True;
  lblNome.Enabled         := True;
  edtDtNasc.Enabled       := True;
  Label4.Enabled          := True;
  pnlCnpj.Enabled         := True;
end;

procedure TfrmCadastroCliente.OpenScreen;
begin
  inherited;
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmEscurecerFundo.Show;
  
  frmConsultaPessoa := TfrmConsultaPessoa.Create(Self);
  try
    frmConsultaPessoa.Showmodal;
    if frmConsultaPessoa.ModalResult = mrOk then
    begin
      cbxAtivo.ItemIndex        := cdsCadastroPadraosituacao.AsInteger;
      cbxTipoClientes.ItemIndex := cdsCadastroPadraotipopessoa.AsInteger;
      if cdsCadastroPadraofisicojuridico.AsInteger = 0 then
      begin
        rbFisica.Checked   := True;
        rbJuridica.Checked := False;
      end
      else
      begin
        rbFisica.Checked   := False;
        rbJuridica.Checked := True;
      end;
      edtCpfCnpj.EditText := cdsCadastroPadraocnpjcpf.AsString;
      edtTelefone.Text    := cdsCadastroPadraotelefone.AsString;
      edtTelefone2.Text   := cdsCadastroPadraotelefone2.AsString;
      edtCep.Text         := cdsCadastroPadraocep.AsString;
      edtDtNasc.Text      := DateToStr(cdsCadastroPadraodatanasc.AsDateTime);
      rbFisicaClick(Self);
      Self.LiberaCampo;
    end;
  finally
    frmConsultaPessoa.Free;
    frmEscurecerFundo.Free;
  end;
end;

procedure TfrmCadastroCliente.rbFisicaClick(Sender: TObject);
begin
  inherited;
  Self.ValidaPessoa;
end;

procedure TfrmCadastroCliente.SalvaReg;
begin
  cdsCadastroPadraosituacao.AsInteger   := cbxAtivo.ItemIndex;
  cdsCadastroPadraotipopessoa.AsInteger := cbxTipoClientes.ItemIndex;
  if rbFisica.Checked then
  begin
    cdsCadastroPadraofisicojuridico.AsInteger := 0;
  end
  else
  begin
    cdsCadastroPadraofisicojuridico.AsInteger := 1;
  end;
  cdsCadastroPadraocnpjcpf.AsString    := edtCpfCnpj.EditText;
  cdsCadastroPadraotelefone.AsString   := edtTelefone.Text;
  cdsCadastroPadraotelefone2.AsString  := edtTelefone2.Text;
  cdsCadastroPadraocep.AsString        := edtCep.Text;
  cdsCadastroPadraodatanasc.AsDateTime := StrToDate(edtDtNasc.EditText);
end;

procedure TfrmCadastroCliente.spb_pesquisaClick(Sender: TObject);
begin
  inherited;
  if Length(edtCep.Text) <> 8 then
  begin
    uUtils.MsgOk('CEP inválido! Por favor, insira um CEP com 8 dígitos.', '');
    Abort;
  end;

  RESTRequest1.Params.ParameterByName('cep').Value := edtCep.Text;
  try
    RESTRequest1.Execute;

    if RESTResponse1.StatusCode = 200 then
    begin
      Self.AlimentaCampoCep;
    end;
  except
    uUtils.MsgOk('Erro ao consultar CEP!',
    'Favor verificar CEP informado');
    abort;
  end;

end;

procedure TfrmCadastroCliente.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Self.BuscaCPFCNPJ;
end;

procedure TfrmCadastroCliente.ValidaExiste;
begin
  if cdsCadastroPadrao.State in [dsInsert] then
  begin
    qryValidaRegistro.Close;
    qryValidaRegistro.ParamByName('tipopessoa').AsInteger := cbxTipoClientes.ItemIndex;
    if rbFisica.Checked then
    begin
      qryValidaRegistro.ParamByName('fiscojuridico').AsInteger := 0;
    end
    else
    begin
      qryValidaRegistro.ParamByName('fiscojuridico').AsInteger := 1;
    end;
    qryValidaRegistro.ParamByName('cnpjcpf').AsString := cdsCadastroPadraocnpjcpf.AsString;
    qryValidaRegistro.Open;

    if not qryValidaRegistro.IsEmpty then
    begin
      uUtils.MsgOk('Já possui uma pessoa cadastrada com esse CNPJ. Id do cadastro: ' + IntToStr(qryValidaRegistro.FieldByName('id').AsInteger),
      'Pessoa já cadastrada no sistema.');
      Abort;
    end;
  end;
end;

procedure TfrmCadastroCliente.ValidaPessoa;
begin
  if rbFisica.Checked then
  begin
    lbl_cpf_cnpj.Caption   := 'CPF*';
    lbl_ie_rg.Caption      := 'RG*';
    lblNome.Caption        := 'Nome*';
    Label4.Caption         := 'Dt. Nascimento*';

    edtCpfCnpj.TipoMascara := tmCpf;

    lbl_razao.Visible       := False;
    edtNomeFantasia.Visible := False;
  end;

  if rbJuridica.Checked then
  begin
    lbl_cpf_cnpj.Caption   := 'CNPJ*';
    lbl_ie_rg.Caption      := 'Inscrição Estadual*';
    lblNome.Caption        := 'Razão Social*';
    Label4.Caption         := 'Dt. Cadastral*';

    edtCpfCnpj.TipoMascara := tmCNPJ;

    lbl_razao.Visible       := True;
    edtNomeFantasia.Visible := True;
  end;
end;

procedure TfrmCadastroCliente.ValidaRegistro;
begin
  inherited;
  if cbxTipoClientes.Text = EmptyStr then
  begin
    uUtils.MsgOk('Tipo pessoa não pode ser vazio!',
    'Favor escolher tipo do cadastro');
    cbxTipoClientes.SetFocus;
    Abort;
  end;

  if edtNome.Text = EmptyStr then
  begin
    uUtils.MsgOk('Nome não pode ser vazio!',
    'Favor informar um nome');
    edtNome.SetFocus;
    Abort;
  end;

  if edtCpfCnpj.Text = EmptyStr then
  begin
    uUtils.MsgOk('CNPJ ou CPF não pode ser vazio!',
    'Favor informar CNPJ ou CPF');
    edtCpfCnpj.SetFocus;
    Abort;
  end;

  if cbxAtivo.Text = EmptyStr then
  begin
    uUtils.MsgOk('Informar se o cadastro está ativo ou não!',
    'Cadastro tem que estar ativo ou desativado');
    cbxAtivo.SetFocus;
    Abort;
  end;

  if edtCep.Text = EmptyStr then
  begin
    uUtils.MsgOk('Favor informar CEP do cadastro!',
    'CEP é obrigatório para os cadastros');
    edtCep.SetFocus;
    Abort;
  end;

  if edtEndereco.Text = EmptyStr then
  begin
    uUtils.MsgOk('Favor informar endereço!',
    'Endereço é obrigatório para os cadastros');
    edtEndereco.SetFocus;
    Abort;
  end;

  if edtBairro.Text = EmptyStr then
  begin
    uUtils.MsgOk('Favor informar bairro!',
    'Bairro é obrigatório para os cadastros');
    edtBairro.SetFocus;
    Abort;
  end;

  if edtNumero.Text = EmptyStr then
  begin
    uUtils.MsgOk('Favor informar numero!',
    'Número é obrigatório para os cadastros');
    edtNumero.SetFocus;
    Abort;
  end;

  if edtEstado.Text = EmptyStr then
  begin
    uUtils.MsgOk('Favor informar estado!',
    'Estado é obrigatório para os cadastros');
    edtEstado.SetFocus;
    Abort;
  end;

  if edtCidade.Text = EmptyStr then
  begin
    uUtils.MsgOk('Favor informar cidade!',
    'Cidade é obrigatório para os cadastros');
    edtCidade.SetFocus;
    Abort;
  end;

  if edtTelefone.Text = EmptyStr then
  begin
    uUtils.MsgOk('Favor informar telefone!',
    'Telefone é obrigatório para os cadastros');
    edtTelefone.SetFocus;
    Abort;
  end;
end;

end.
