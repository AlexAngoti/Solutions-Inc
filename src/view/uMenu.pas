unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uUsuario, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg;

type
  TfrmMenu = class(TForm)
    pnlMenulateral: TPanel;
    SpeedButton4: TSpeedButton;
    btnConfiguracao: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnPedido: TSpeedButton;
    btnCadastros: TSpeedButton;
    btnMenuLateral: TSpeedButton;
    Panel3: TPanel;
    pnlCentral: TPanel;
    pnlTop: TPanel;
    btnDashBoard: TSpeedButton;
    btnFechar: TSpeedButton;
    btnMinimizar: TSpeedButton;
    btnUsuario: TSpeedButton;
    pnlPesquisaTelas: TPanel;
    btnPesquisa: TSpeedButton;
    edtDigitarTela: TEdit;
    pnlSubCentral: TPanel;
    pnlSubCadastro: TPanel;
    btnCadProduto: TSpeedButton;
    btnCadClientes: TSpeedButton;
    btnCadFormaPag: TSpeedButton;
    btnCadUsuario: TSpeedButton;
    qryValidaLogin: TFDQuery;
    dspValidaLogin: TDataSetProvider;
    cdsValidaAcesso: TClientDataSet;
    dsValidaAcesso: TDataSource;
    qryPesquisaTela: TFDQuery;
    dspPesquisaTela: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    ds: TDataSource;
    pnlTela: TPanel;
    dbGrdPesquisa: TDBGrid;
    cdsPesquisadescricao: TWideStringField;
    cdsPesquisanometela: TWideStringField;
    btnContasReceber: TSpeedButton;
    btnContasPagar: TSpeedButton;
    pnlMovimentacao: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    btnEstoque: TSpeedButton;
    pnlEstoque: TPanel;
    SpeedButton7: TSpeedButton;
    Image1: TImage;
    pnlRelatorio: TPanel;
    SpeedButton5: TSpeedButton;
    btnRelContasPagar: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnMenuLateralClick(Sender: TObject);
    procedure btnConfiguracaoClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnDashBoardClick(Sender: TObject);
    procedure btnRelContasPagarClick(Sender: TObject);
    procedure btnCadastrosClick(Sender: TObject);
    procedure pnlSubCadastroMouseEnter(Sender: TObject);
    procedure btnCadClientesClick(Sender: TObject);
    procedure btnCadUsuarioClick(Sender: TObject);
    procedure dbGrdPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGrdPesquisaDblClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure pnlTelaMouseEnter(Sender: TObject);
    procedure btnCadFormaPagClick(Sender: TObject);
    procedure btnContasReceberClick(Sender: TObject);
    procedure btnContasPagarClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);
    procedure pnlMovimentacaoMouseEnter(Sender: TObject);
    procedure btnEstoqueClick(Sender: TObject);
    procedure pnlEstoqueMouseEnter(Sender: TObject);
    procedure btnCadastrosMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnCadProdutoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    procedure EscondeLateral;
    procedure FazLogin;
    procedure EncerraProg;
    procedure MudaCorAcesso;
    { Private declarations }
  public
    AUsuario: TUsuario;
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;
  bMenuLateral: Boolean;

implementation

uses
  uLogin, uDM, uEscurecerFundo, uConfiguracao, uCadastroCliente, uUtils, uCadastroUsuario, uCadastroFormaPgto,
  UContasReceber, uContasPagar, uVendas, uCompras, uEntradaEstoque, uCadastroProduto, uRelatorioContasReceber,
  uRelatorioContasPagar, uRelatorioVendas, uRelatorioEstoque;

{$R *.dfm}

procedure TfrmMenu.btnDashBoardClick(Sender: TObject);
begin
  AUsuario.Free;
  Self.FazLogin;
end;

procedure TfrmMenu.btnEstoqueClick(Sender: TObject);
begin
  pnlEstoque.Visible := not pnlEstoque.Visible;
end;

procedure TfrmMenu.btnFecharClick(Sender: TObject);
begin
  Self.EncerraProg;
end;

procedure TfrmMenu.btnMenuLateralClick(Sender: TObject);
begin
  Self.EscondeLateral;
end;

procedure TfrmMenu.btnPedidoClick(Sender: TObject);
begin
  pnlMovimentacao.Visible := not pnlMovimentacao.Visible;
end;

procedure TfrmMenu.btnPesquisaClick(Sender: TObject);
begin
  cdsPesquisa.Close;
  cdsPesquisa.Open;

  if edtDigitarTela.Text <> EmptyStr then
  begin
    ds.DataSet.Filtered := False;
    if edtDigitarTela.Text <> EmptyStr then
    begin
      ds.DataSet.Filter := 'UPPER(descricao) LIKE ' +
        QuotedStr('%' + UpperCase(edtDigitarTela.Text) + '%');
      ds.DataSet.Filtered := True;
    end;
  end;
  pnlTela.BringToFront;
  pnlTela.Visible := True;
end;

procedure TfrmMenu.dbGrdPesquisaDblClick(Sender: TObject);
begin
  if 'frmCadastroCliente' = cdsPesquisanometela.AsString then
  begin
    btnCadClientesClick(Self);
  end;

  if 'frmConfiguracao' = cdsPesquisanometela.AsString then
  begin
    btnConfiguracaoClick(Self);
  end;

  if 'frmCadastroUsuario' = cdsPesquisanometela.AsString then
  begin
    btnCadUsuarioClick(Self);
  end;
end;

procedure TfrmMenu.dbGrdPesquisaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd( dbGrdPesquisa.DataSource.DataSet.RecNo) then
  begin
    dbGrdPesquisa.Canvas.Brush.Color :=  $00FBFBFB;
  end
  else
  begin
    dbGrdPesquisa.Canvas.Brush.Color := clwhite;
  end;

  if ( gdSelected in State ) then
  begin
    dbGrdPesquisa.Canvas.Brush.Color := $00FFE8CC;
    dbGrdPesquisa.Canvas.Font.Color  := clBlack;
    dbGrdPesquisa.Canvas.Font.Style  := [fsBold];
  end;

  dbGrdPesquisa.Canvas.FillRect(Rect);
  dbGrdPesquisa.DefaultDrawColumnCell( Rect, DataCol, Column, State);
end;

procedure TfrmMenu.EncerraProg;
begin
  AUsuario.Free;
  Application.Terminate;
end;

procedure TfrmMenu.EscondeLateral;
begin
  if bMenuLateral then
  begin
    pnlMenulateral.Width := 150;
  end
  else
  begin
    pnlMenulateral.Width := 43;
  end;

  bMenuLateral := not bMenuLateral;
end;

procedure TfrmMenu.FazLogin;
begin
  frmLogin := TfrmLogin.Create(Self);
  try
    frmLogin.ShowModal;
    if frmLogin.ModalResult <> 1 then
    begin
      Application.Terminate;
    end
    else
    begin
      AUsuario := TUsuario.Create;
      try
        AUsuario.IdUsuario   := (dm.dsLogin.DataSet as TClientDataSet).FieldByName('id').AsInteger;
        AUsuario.NomeUsuario := frmLogin.edtUsuario.Text;
        AUsuario.NivelAcesso := (dm.dsLogin.DataSet as TClientDataSet).FieldByName('master').AsString;
        btnUsuario.Caption   := AUsuario.NomeUsuario;
        //Self.MudaCorAcesso;
      except
        Application.MessageBox('Não foi possivel realizar login', 'ATENÇÃO', MB_ICONERROR + MB_OK);
        Application.Terminate;
      end;
    end;
  finally
    frmLogin.Free;
  end;
end;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
  Self.FazLogin;
end;

procedure TfrmMenu.MudaCorAcesso;
begin
  if AUsuario.NivelAcesso <> 'S' then
  begin
    (dm.dsValidaAcesso.DataSet as TClientDataSet).Close;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).ParamByName('idlogin').AsInteger
      := AUsuario.IdUsuario;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).Open;

    btnCadClientes.Font.Color  := clRed;
    btnCadProduto.Font.Color   := clRed;
    btnCadFormaPag.Font.Color  := clRed;
    btnCadUsuario.Font.Color   := clRed;
    btnConfiguracao.Font.Color := clRed;
    (dm.dsValidaAcesso.DataSet as TClientDataSet).First;
    while not (dm.dsValidaAcesso.DataSet as TClientDataSet).Eof do
    begin
      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadClientes.Name then
      begin
        btnCadClientes.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadProduto.Name then
      begin
        btnCadProduto.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadFormaPag.Name then
      begin
        btnCadFormaPag.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnCadUsuario.Name then
      begin
        btnCadUsuario.Font.Color := $00404040;
      end;

      if (dm.dsValidaAcesso.DataSet as TClientDataSet).FieldByName('botaomenu').AsString = btnConfiguracao.Name then
      begin
        btnConfiguracao.Font.Color := clWhite;
      end;

      (dm.dsValidaAcesso.DataSet as TClientDataSet).Next;
    end;
  end;
end;

procedure TfrmMenu.pnlEstoqueMouseEnter(Sender: TObject);
begin
  pnlEstoque.Visible := False;
end;

procedure TfrmMenu.pnlMovimentacaoMouseEnter(Sender: TObject);
begin
  pnlMovimentacao.Visible := False;
end;

procedure TfrmMenu.pnlSubCadastroMouseEnter(Sender: TObject);
begin
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.pnlTelaMouseEnter(Sender: TObject);
begin
  pnlTela.Visible := False;
end;

procedure TfrmMenu.SpeedButton10Click(Sender: TObject);
begin
  frmRelatorioVendas := TfrmRelatorioVendas.Create(Self);
  frmRelatorioVendas.Parent := pnlSubCentral;
  frmRelatorioVendas.Align  := alClient;
  frmRelatorioVendas.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.SpeedButton1Click(Sender: TObject);
begin
  frmVendas := TfrmVendas.Create(Self);
  frmVendas.Parent := pnlSubCentral;
  frmVendas.Align  := alClient;
  frmVendas.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.SpeedButton2Click(Sender: TObject);
begin
  pnlRelatorio.Visible := not pnlRelatorio.Visible;
end;

procedure TfrmMenu.SpeedButton3Click(Sender: TObject);
begin
  frmCompras := TfrmCompras.Create(Self);
  frmCompras.Parent := pnlSubCentral;
  frmCompras.Align  := alClient;
  frmCompras.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.SpeedButton4Click(Sender: TObject);
begin
  Self.EncerraProg;
end;

procedure TfrmMenu.SpeedButton5Click(Sender: TObject);
begin
  frmRelatorioEstoque := TfrmRelatorioEstoque.Create(Self);
  frmRelatorioEstoque.Parent := pnlSubCentral;
  frmRelatorioEstoque.Align  := alClient;
  frmRelatorioEstoque.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnRelContasPagarClick(Sender: TObject);
begin
  frmRelatorioContasPagar := TfrmRelatorioContasPagar.Create(Self);
  frmRelatorioContasPagar.Parent := pnlSubCentral;
  frmRelatorioContasPagar.Align  := alClient;
  frmRelatorioContasPagar.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.SpeedButton7Click(Sender: TObject);
begin
  frmEntradaEstoque := TfrmEntradaEstoque.Create(Self);
  frmEntradaEstoque.Parent := pnlSubCentral;
  frmEntradaEstoque.Align  := alClient;
  frmEntradaEstoque.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.SpeedButton8Click(Sender: TObject);
begin
  frmRelatorioContasReceber := TfrmRelatorioContasReceber.Create(Self);
  frmRelatorioContasReceber.Parent := pnlSubCentral;
  frmRelatorioContasReceber.Align  := alClient;
  frmRelatorioContasReceber.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnCadastrosClick(Sender: TObject);
begin
  pnlSubCadastro.Visible := not pnlSubCadastro.Visible;
end;

procedure TfrmMenu.btnCadastrosMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  Font.Color := clBlack
end;

procedure TfrmMenu.btnCadClientesClick(Sender: TObject);
begin
  ValidaAcesso(AUsuario.IdUsuario, 'frmCadastroCliente');

  frmCadastroCliente := TfrmCadastroCliente.Create(Self);
  frmCadastroCliente.Parent := pnlSubCentral;
  frmCadastroCliente.Align  := alClient;
  frmCadastroCliente.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnCadFormaPagClick(Sender: TObject);
begin
  frmCadastroPagamento := TfrmCadastroPagamento.Create(Self);
  frmCadastroPagamento.Parent := pnlSubCentral;
  frmCadastroPagamento.Align  := alClient;
  frmCadastroPagamento.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnCadProdutoClick(Sender: TObject);
begin
  frmCadastroProduto := TfrmCadastroProduto.Create(Self);
  frmCadastroProduto.Parent := pnlSubCentral;
  frmCadastroProduto.Align  := alClient;
  frmCadastroProduto.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnCadUsuarioClick(Sender: TObject);
begin
  ValidaAcesso(AUsuario.IdUsuario, 'frmCadastroUsuario');

  frmCadastroUsuario := TfrmCadastroUsuario.Create(Self);
  frmCadastroUsuario.Parent := pnlSubCentral;
  frmCadastroUsuario.Align  := alClient;
  frmCadastroUsuario.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnConfiguracaoClick(Sender: TObject);
begin
  ValidaAcesso(AUsuario.IdUsuario, 'frmConfiguracao');

  frmEscurecerFundo := TfrmEscurecerFundo.Create(Self);
  frmEscurecerFundo.Show;

  frmConfiguracao := TfrmConfiguracao.Create(Self);
  try
    frmConfiguracao.ShowModal;
  finally
    frmConfiguracao.Free;
    frmEscurecerFundo.Free;
  end;
end;

procedure TfrmMenu.btnContasPagarClick(Sender: TObject);
begin
  frmContasPagar := TfrmContasPagar.Create(Self);
  frmContasPagar.Parent := pnlSubCentral;
  frmContasPagar.Align  := alClient;
  frmContasPagar.Show;
  pnlSubCadastro.Visible := False;
end;

procedure TfrmMenu.btnContasReceberClick(Sender: TObject);
begin
  frmContasReceber := TfrmContasReceber.Create(Self);
  frmContasReceber.Parent := pnlSubCentral;
  frmContasReceber.Align  := alClient;
  frmContasReceber.Show;
end;

end.
