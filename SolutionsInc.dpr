program SolutionsInc;

uses
  Vcl.Forms,
  uMenu in 'src\view\uMenu.pas' {frmMenu},
  uLogin in 'src\view\uLogin.pas' {frmLogin},
  uUsuario in 'src\model\uUsuario.pas',
  uDM in 'src\model\uDM.pas' {dm: TDataModule},
  uEscurecerFundo in 'src\view\uEscurecerFundo.pas' {frmEscurecerFundo},
  uUtils in 'src\model\uUtils.pas',
  uMsgConfirmar in 'src\view\uMsgConfirmar.pas' {frmMsgConfirmar},
  uMsgOk in 'src\view\uMsgOk.pas' {frmMsgOk},
  uConfiguracao in 'src\view\uConfiguracao.pas' {frmConfiguracao},
  uCadastroPadrao in 'src\view\uCadastroPadrao.pas' {frmCadastroPadrao},
  uCadastroCliente in 'src\view\uCadastroCliente.pas' {frmCadastroCliente},
  uCadastroUsuario in 'src\view\uCadastroUsuario.pas' {frmCadastroUsuario},
  uConsultaPadrao in 'src\view\uConsultaPadrao.pas' {frmConsultaPadrao},
  uConsultaUsuario in 'src\view\uConsultaUsuario.pas' {frmConsultaUsuario},
  uConsultaPessoa in 'src\view\uConsultaPessoa.pas' {frmConsultaPessoa},
  uCadastroFormaPgto in 'src\view\uCadastroFormaPgto.pas' {frmCadastroPagamento},
  uConsultaPgto in 'src\view\uConsultaPgto.pas' {frmConsultaPagamento},
  UContasReceber in 'src\view\UContasReceber.pas' {frmContasReceber},
  uContasPagar in 'src\view\uContasPagar.pas' {frmContasPagar},
  uMovContasReceber in 'src\view\uMovContasReceber.pas' {frmMovReceber},
  uVendas in 'src\view\uVendas.pas' {frmVendas},
  uCompras in 'src\view\uCompras.pas' {frmCompras},
  uCadastroProduto in 'src\view\uCadastroProduto.pas' {frmCadastroPadrao1},
  uPesquisaPadrao in 'src\view\uPesquisaPadrao.pas' {frmPesquisaPadrao},
  uBaixaReceber in 'src\view\uBaixaReceber.pas' {frmMovBaixaReceber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
