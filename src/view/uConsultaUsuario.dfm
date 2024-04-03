inherited frmConsultaUsuario: TfrmConsultaUsuario
  Caption = 'frmConsultaUsuario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCentral: TPanel
    inherited pnlBarraPesquisa: TPanel
      OnResize = nil
    end
    inherited dbGrdPesquisa: TDBGrid
      OnDrawColumnCell = nil
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = frmCadastroUsuario.cdsCadastroPadrao
  end
end
