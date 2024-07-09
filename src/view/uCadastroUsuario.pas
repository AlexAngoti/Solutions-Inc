unit uCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, SWHDBEdit, SWHDBComboBox, SWHComboBox, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadastroUsuario = class(TfrmCadastroPadrao)
    pnlTopCentral: TPanel;
    edtNome: TSWHDBEdit;
    Label2: TLabel;
    lblSenha: TLabel;
    edtSenha: TSWHDBEdit;
    lblAtivo: TLabel;
    cbxAtivo: TSWHComboBox;
    pnlBotCentral: TPanel;
    cdsControleAcesso: TClientDataSet;
    cdsControleAcessoidtela: TIntegerField;
    cdsControleAcessonometela: TStringField;
    cdsControleAcessoselecionado: TStringField;
    dbGrdPesquisa: TDBGrid;
    dsControleAcesso: TDataSource;
    qryTelas: TFDQuery;
    dsLiberacao: TDataSource;
    cdsLiberacao: TClientDataSet;
    dspLiberacao: TDataSetProvider;
    qryLiberacao: TFDQuery;
    cbxMaster: TDBCheckBox;
    cbxTodos: TCheckBox;
    qryValidaNome: TFDQuery;
    qryLogin: TFDQuery;
    cdsCadastroPadraoid: TLargeintField;
    cdsCadastroPadraoacesso: TWideStringField;
    cdsCadastroPadraosenha: TWideStringField;
    cdsCadastroPadraomaster: TWideStringField;
    cdsCadastroPadraoativo: TIntegerField;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    qryDeletaAcessos: TFDQuery;
    Label3: TLabel;
    procedure edtSenhaExit(Sender: TObject);
    procedure dbGrdPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGrdPesquisaDblClick(Sender: TObject);
    procedure cbxTodosClick(Sender: TObject);
    procedure cbxMasterClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    procedure CarregaAcessos;
    procedure SalvaAcessos;
    function ValidaSenha(const senha: string): Boolean;
    { Private declarations }
  public
    procedure BloqueiaCampo; override;
    procedure LiberaCampo; override;
    procedure ClearField; override;
    procedure ValidaRegistro; override;
    procedure OpenScreen; override;
    procedure ExcluiAcesso; override;
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

uses
  uDM, uUtils, uConsultaUsuario, uEscurecerFundo;
{$R *.dfm}

procedure TfrmCadastroUsuario.BloqueiaCampo;
begin
  inherited;
  dbGrdPesquisa.Enabled := False;
  cbxAtivo.Enabled      := False;
  cbxMaster.Enabled     := False;
  cbxTodos.Enabled      := False;
  pnlSalvar.Enabled     := False;
  edtSenha.Enabled      := False;
  edtNome.Enabled       := False;
  lblAtivo.Enabled      := False;
  Label2.Enabled        := False;
  btnExcluir.Enabled    := False;
  btnConfirmar.Enabled  := False;
  btnInserir.Enabled    := True;
  lblSenha.Enabled      := False;
end;

procedure TfrmCadastroUsuario.btnCancelarClick(Sender: TObject);
begin
  inherited;

  if ValidaMsg = False then
  begin
    if (dsControleAcesso.DataSet as TClientDataSet).Active then
    begin
      (dsControleAcesso.DataSet as TClientDataSet).EmptyDataSet;
      (dsControleAcesso.DataSet as TClientDataSet).Close;
    end;
  end;

  btnConsulta.Enabled := True;
end;

procedure TfrmCadastroUsuario.btnConfirmarClick(Sender: TObject);
begin
  Self.ValidaRegistro;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('ativo').AsInteger := cbxAtivo.ItemIndex;
  if cdsCadastroPadrao.State in [dsInsert] then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('master').AsString := 'N';
  end;
  if (dsCadastroPadrao.DataSet as TClientDataSet).State in [dsEdit] then
  begin
    (dsLiberacao.DataSet as TClientDataSet).ApplyUpdates(-1);
    (dsControleAcesso.DataSet as TClientDataSet).EmptyDataSet;
    (dsControleAcesso.DataSet as TClientDataSet).Close;
  end;

  inherited;
  btnConsulta.Enabled := True;
end;

procedure TfrmCadastroUsuario.btnExcluirClick(Sender: TObject);
begin
  inherited;
  btnConsulta.Enabled := True;
end;

procedure TfrmCadastroUsuario.btnInserirClick(Sender: TObject);
begin
  inherited;
  dbGrdPesquisa.Enabled := False;
  cbxMaster.Enabled     := False;
  cbxTodos.Enabled      := False;
  btnSalvar.Enabled     := False;
  btnConsulta.Enabled   := False;
end;

procedure TfrmCadastroUsuario.btnSalvarClick(Sender: TObject);
begin
  Self.SalvaAcessos;
end;

procedure TfrmCadastroUsuario.CarregaAcessos;
begin
  qryTelas.Close;
  qryTelas.Open;

  qryTelas.First;
  (dsControleAcesso.DataSet as TClientDataSet).CreateDataSet;
  while not qryTelas.Eof do
  begin
    (dsControleAcesso.DataSet as TClientDataSet).Insert;
    (dsControleAcesso.DataSet as TClientDataSet).FieldByName('idtela').AsInteger
      := qryTelas.FieldByName('id').AsInteger;
    (dsControleAcesso.DataSet as TClientDataSet).FieldByName('nometela').AsString
      := qryTelas.FieldByName('descricao').AsString;

    (dsLiberacao.DataSet as TClientDataSet).Close;
    (dsLiberacao.DataSet as TClientDataSet).ParamByName('idTelas').AsInteger
      := qryTelas.FieldByName('id').AsInteger;
    (dsLiberacao.DataSet as TClientDataSet).ParamByName('idLogin').AsInteger
      := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('id').AsInteger;
    (dsLiberacao.DataSet as TClientDataSet).Open;

    if not (dsLiberacao.DataSet as TClientDataSet).IsEmpty then
    begin
      if (dsLiberacao.DataSet as TClientDataSet).FieldByName('liberado').AsInteger = 0 then
      begin
        (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString
          := 'S';
      end
      else
      begin
        (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString
          := 'N';
      end;
    end
    else
    begin
      (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString
        := 'N';
    end;
    (dsControleAcesso.DataSet as TClientDataSet).Post;
    qryTelas.Next;
  end;
end;

procedure TfrmCadastroUsuario.cbxMasterClick(Sender: TObject);
begin
  if cbxMaster.Checked = True then
  begin
    dbGrdPesquisa.Enabled := False;
    cbxTodos.Enabled      := False;
    btnSalvar.Enabled     := False;
  end
  else
  begin
    dbGrdPesquisa.Enabled := True;
    cbxTodos.Enabled      := True;
    btnSalvar.Enabled     := True;
  end;
end;

procedure TfrmCadastroUsuario.cbxTodosClick(Sender: TObject);
begin
  (dsControleAcesso.DataSet as TClientDataSet).First;
  while not (dsControleAcesso.DataSet as TClientDataSet).Eof do
  begin
    (dsControleAcesso.DataSet as TClientDataSet).Edit;
    if cbxTodos.Checked = False then
    begin
      (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString := 'N';
    end
    else
    begin
      (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString := 'S';
    end;
    (dsControleAcesso.DataSet as TClientDataSet).Post;
    (dsControleAcesso.DataSet as TClientDataSet).Next;
  end;
end;

procedure TfrmCadastroUsuario.ClearField;
begin
  inherited;
  edtNome.Clear;
  edtSenha.Clear;
  cbxAtivo.ItemIndex := -1
end;

procedure TfrmCadastroUsuario.dbGrdPesquisaDblClick(Sender: TObject);
begin
  if (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString = 'N' then
  begin
    (dsControleAcesso.DataSet as TClientDataSet).Edit;
    (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString
      := 'S';
    (dsControleAcesso.DataSet as TClientDataSet).Post;
  end
  else
  begin
    (dsControleAcesso.DataSet as TClientDataSet).Edit;
    (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString
      := 'N';
    (dsControleAcesso.DataSet as TClientDataSet).Post;
  end;
end;

procedure TfrmCadastroUsuario.dbGrdPesquisaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (dsControleAcesso.DataSet as TClientDataSet).FieldByName('selecionado').AsString <> 'S' then
  begin
    dbGrdPesquisa.Canvas.Brush.Color := clWhite;
    dbGrdPesquisa.Canvas.Font.Color  := clWindowText;
    dbGrdPesquisa.DefaultDrawDataCell(Rect, Column.Field, State);
  end
  else
  begin
    dbGrdPesquisa.Canvas.Brush.Color := clRed;
    dbGrdPesquisa.Canvas.Font.Color  := clWhite;
    dbGrdPesquisa.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCadastroUsuario.edtNomeExit(Sender: TObject);
begin
  if (dsCadastroPadrao.DataSet as TClientDataSet).State in [dsInsert] then
  begin
    if edtNome.Text <> EmptyStr then
    begin
      qryValidaNome.Close;
      qryValidaNome.ParamByName('LOGIN').AsString := edtNome.Text;
      qryValidaNome.Open;

      if not qryValidaNome.IsEmpty then
      begin
        ShowMessage('Esse nome de usuario ja existe, favor informar usuario diferente do atual.');
        Abort;
      end;
    end;
  end;
end;

procedure TfrmCadastroUsuario.edtSenhaExit(Sender: TObject);
begin
  if edtSenha.Text <> EmptyStr then
  begin
    if ValidaSenha(edtSenha.Text) = False then
    begin
      edtSenha.SetFocus;
    end;
  end;
end;

procedure TfrmCadastroUsuario.ExcluiAcesso;
begin
  inherited;
  qryDeletaAcessos.Close;
  qryDeletaAcessos.ParamByName('ID').AsInteger := cdsCadastroPadraoid.AsInteger;
  qryDeletaAcessos.ExecSQL;

  (dsControleAcesso.DataSet as TClientDataSet).EmptyDataSet;
  (dsControleAcesso.DataSet as TClientDataSet).Close;
end;

procedure TfrmCadastroUsuario.FormResize(Sender: TObject);
begin
  pnlTopCentral.Left := Round(pnlSubTop.Width / 2 - pnlTopCentral.Width / 2);
  pnlBotCentral.Left := Round(pnlSubTop.Width / 2 - pnlBotCentral.Width / 2);
end;

procedure TfrmCadastroUsuario.LiberaCampo;
begin
  inherited;
  dbGrdPesquisa.Enabled := True;
  cbxAtivo.Enabled      := True;
  cbxMaster.Enabled     := True;
  cbxTodos.Enabled      := True;
  pnlSalvar.Enabled     := True;
  edtSenha.Enabled      := True;
  edtNome.Enabled       := True;
  lblSenha.Enabled      := True;
  lblAtivo.Enabled      := True;
  Label2.Enabled        := True;
  btnExcluir.Enabled    := True;
  btnConfirmar.Enabled  := True;
  btnInserir.Enabled    := False;
  lblSenha.Enabled      := True;
end;

procedure TfrmCadastroUsuario.OpenScreen;
begin
  inherited;
  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmEscurecerFundo.Show;

  frmConsultaUsuario := TfrmConsultaUsuario.Create(Self);
  try
    frmConsultaUsuario.ShowModal;

    if frmConsultaUsuario.ModalResult = mrOk then
    begin
      cdsCadastroPadrao.Edit;
      Self.CarregaAcessos;
      Self.LiberaCampo;
      btnConsulta.Enabled := False;
      if cdsCadastroPadraoativo.AsInteger = 0 then
      begin
        cbxAtivo.ItemIndex := 0;
      end
      else
      begin
        cbxAtivo.ItemIndex := 1;
      end;
    end;
  finally
    frmConsultaUsuario.Free;
    frmEscurecerFundo.Free;
  end;
end;

procedure TfrmCadastroUsuario.SalvaAcessos;
begin
  (dsControleAcesso.DataSet as TClientDataSet).First;
  try
    while not (dsControleAcesso.DataSet as TClientDataSet).Eof do
    begin
      (dsLiberacao.DataSet as TClientDataSet).Close;
      (dsLiberacao.DataSet as TClientDataSet).ParamByName('IDTELAS').AsInteger
        := cdsControleAcessoidtela.AsInteger;
      (dsLiberacao.DataSet as TClientDataSet).ParamByName('IDLOGIN').AsInteger
        := cdsCadastroPadraoid.AsInteger;
      (dsLiberacao.DataSet as TClientDataSet).Open;

      if (dsLiberacao.DataSet as TClientDataSet).IsEmpty then
      begin
        (dsLiberacao.DataSet as TClientDataSet).Insert;
        (dsLiberacao.DataSet as TClientDataSet).FieldByName('idtelas').AsInteger
          := cdsControleAcessoidtela.AsInteger;
        (dsLiberacao.DataSet as TClientDataSet).FieldByName('idlogin').AsInteger
          := cdsCadastroPadraoid.AsInteger;
        if cdsControleAcessoselecionado.AsString = 'S' then
        begin
          (dsLiberacao.DataSet as TClientDataSet).FieldByName('liberado').AsInteger
            := 0;
        end
        else
        begin
          (dsLiberacao.DataSet as TClientDataSet).FieldByName('liberado').AsInteger
            := 1;
        end;
      end
      else
      begin
        (dsLiberacao.DataSet as TClientDataSet).Edit;
        if cdsControleAcessoselecionado.AsString = 'S' then
        begin
          (dsLiberacao.DataSet as TClientDataSet).FieldByName('liberado').AsInteger
            := 0;
        end
        else
        begin
          (dsLiberacao.DataSet as TClientDataSet).FieldByName('liberado').AsInteger
            := 1;
        end;
      end;
      (dsLiberacao.DataSet as TClientDataSet).Post;
      (dsLiberacao.DataSet as TClientDataSet).ApplyUpdates(-1);
      (dsControleAcesso.DataSet as TClientDataSet).Next;
    end;
  except
    MsgConfirmar('Erro ao liberar acesso para usuario!!', 'Favor entrar em contato com responsavel pelo sistema.');
    (dsLiberacao.DataSet as TClientDataSet).CancelUpdates;
    Abort;
  end;
end;

procedure TfrmCadastroUsuario.ValidaRegistro;
begin
  inherited;
  if edtNome.Text = EmptyStr then
  begin
    MsgOk('Nome de usuario não pode ser vazio!', 'Favor informar o nome de usuario.');
    Abort;
  end;

  if edtSenha.Text = EmptyStr then
  begin
    MsgOk('Senha do usuario não pode ser vazio!', 'Favor informar a senha do usuario.');
    Abort;
  end;

  if cbxAtivo.Text = EmptyStr then
  begin
    MsgOk('Informar se o usuario esta ativo ou não!', 'Selecionar se o usuario esta ativo para uso do sistema.');
    Abort;
  end;
end;

function TfrmCadastroUsuario.ValidaSenha(const senha: string): Boolean;
var
  i: Integer;
  temMaiuscula, temSimbolo: Boolean;
begin
  if Length(senha) < 8 then
  begin
    ShowMessage('A senha deve ter no mínimo 8 caracteres.');
    Result := False;
    Exit;
  end;

  temMaiuscula := False;
  temSimbolo   := False;

  for i := 1 to Length(senha) do
  begin
    if CharInSet(senha[i], ['A'..'Z']) then
    begin
      temMaiuscula := True
    end
    else
    begin
      if CharInSet(senha[i], ['!', '@', '#', '$', '%', '&', '*', '_', '+', '-', '=']) then
      begin
        temSimbolo := True;
      end;
    end;
  end;

  if not temMaiuscula then
  begin
    ShowMessage('A senha deve conter pelo menos uma letra maiúscula.');
  end;

  if not temSimbolo then
  begin
    ShowMessage('A senha deve conter pelo menos um símbolo (!@#$%&*_+-=).');
  end;

  Result := temMaiuscula and temSimbolo;
end;

end.
