inherited frmConsultaUsuario: TfrmConsultaUsuario
  Caption = 'frmConsultaUsuario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSubTop: TPanel
    inherited lblNomeLogoTop: TLabel
      Width = 194
      Caption = 'Solutions Inc / Consulta Usuario'
      ExplicitWidth = 194
    end
  end
  inherited pnlCentral: TPanel
    inherited pnlBarraPesquisa: TPanel
      inherited btnPesquisa: TSpeedButton
        OnClick = btnPesquisaClick
      end
    end
    inherited dbGrdPesquisa: TcxGrid
      inherited dbGrdPesquisaDBTableView1: TcxGridDBTableView
        OnDblClick = dbGrdPesquisaDBTableView1DblClick
        OptionsView.ColumnAutoWidth = True
        object dbGrdPesquisaDBTableView1id: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          Width = 51
        end
        object dbGrdPesquisaDBTableView1acesso: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'acesso'
          Width = 632
        end
        object dbGrdPesquisaDBTableView1master: TcxGridDBColumn
          Caption = 'Master'
          DataBinding.FieldName = 'master'
          Width = 108
        end
        object dbGrdPesquisaDBTableView1ativo: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ativo'
          Width = 144
        end
      end
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = frmCadastroUsuario.cdsCadastroPadrao
  end
end
