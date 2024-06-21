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
  uCadastroProduto in 'src\view\uCadastroProduto.pas' {frmCadastroProduto},
  uPesquisaPadrao in 'src\view\uPesquisaPadrao.pas' {frmPesquisaPadrao},
  uBaixaReceber in 'src\view\uBaixaReceber.pas' {frmMovBaixaReceber},
  uBaixaPagar in 'src\view\uBaixaPagar.pas' {frmBaixaPagar},
  uMovContasPagar in 'src\view\uMovContasPagar.pas' {frmMovPagar},
  uPesquisaPadraoForn in 'src\view\uPesquisaPadraoForn.pas' {frmPesquisaPadraoForn},
  uEntradaEstoque in 'src\view\uEntradaEstoque.pas' {frmEntradaEstoque},
  uConsultaProduto in 'src\view\uConsultaProduto.pas' {frmConsultaProduto},
  uRelatorioPadrao in 'src\view\uRelatorioPadrao.pas' {frmRelatorioPadrao},
  uRelatorioContasReceber in 'src\view\uRelatorioContasReceber.pas' {frmRelatorioContasReceber},
  uRelatorioContasPagar in 'src\view\uRelatorioContasPagar.pas' {frmRelatorioContasPagar},
  uRelatorioVendas in 'src\view\uRelatorioVendas.pas' {frmRelatorioVendas},
  uRelatorioEstoque in '..\..\..\Downloads\uRelatorioEstoque.pas' {frmRelatorioEstoque},
  uFrenteVendas in 'src\view\uFrenteVendas.pas' {frmFrenteVendas},
  uParcelas in 'src\view\uParcelas.pas' {frmParcelas},
  uCancelmaentoVendas in 'src\view\uCancelmaentoVendas.pas' {frmCancelamentoVenda},
  uConsultaVenda in 'src\view\uConsultaVenda.pas' {frmConsultaVenda},
  uPedidoCompra in 'src\view\uPedidoCompra.pas' {frmPedidoCompra},
  uConsultaVendedor in 'src\view\uConsultaVendedor.pas' {frmConsultaVendedor},
  uRealizandoBusca in 'src\view\uRealizandoBusca.pas' {frmRealizandoBusca},
  uPesquisaProduto in 'src\view\uPesquisaProduto.pas' {frmConsultaProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
