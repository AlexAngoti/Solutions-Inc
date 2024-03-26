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
  uCadastroUsuario in 'src\view\uCadastroUsuario.pas' {frmCadastroPadrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmEscurecerFundo, frmEscurecerFundo);
  Application.CreateForm(TfrmMsgConfirmar, frmMsgConfirmar);
  Application.CreateForm(TfrmMsgOk, frmMsgOk);
  Application.CreateForm(TfrmConfiguracao, frmConfiguracao);
  Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroPadrao1, frmCadastroPadrao1);
  Application.Run;
end.
