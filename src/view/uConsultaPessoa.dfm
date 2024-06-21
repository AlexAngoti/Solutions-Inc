inherited frmConsultaPessoa: TfrmConsultaPessoa
  Caption = 'frmConsultaPessoa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSubTop: TPanel
    inherited lblNomeLogoTop: TLabel
      Left = 63
      Width = 227
      Caption = 'SOLUTIONS INC / Consulta de Pessoa'
      ExplicitLeft = 63
      ExplicitWidth = 227
    end
  end
  inherited pnlCentral: TPanel
    inherited pnlBarraPesquisa: TPanel
      inherited btnPesquisa: TSpeedButton
        OnClick = btnPesquisaClick
      end
      object rgpTipoPessoa: TRadioGroup
        Left = 500
        Top = 2
        Width = 413
        Height = 44
        Caption = 'Tipo de Pessoa'
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Cliente'
          'Fornecedor'
          'Funcionario')
        TabOrder = 1
        Visible = False
        OnClick = rgpTipoPessoaClick
      end
    end
    inherited dbGrdPesquisa: TcxGrid
      inherited dbGrdPesquisaDBTableView1: TcxGridDBTableView
        OnDblClick = dbGrdPesquisaDblClick
        OptionsView.ColumnAutoWidth = True
        object dbGrdPesquisaDBTableView1id: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          DataBinding.IsNullValueType = True
          Width = 66
        end
        object dbGrdPesquisaDBTableView1tipopessoa: TcxGridDBColumn
          Caption = 'Tipo do Cadastro'
          DataBinding.FieldName = 'tipopessoa'
          DataBinding.IsNullValueType = True
          Width = 106
        end
        object dbGrdPesquisaDBTableView1nomerazao: TcxGridDBColumn
          Caption = 'Nome da Pessoa'
          DataBinding.FieldName = 'nomerazao'
          DataBinding.IsNullValueType = True
          Width = 524
        end
        object dbGrdPesquisaDBTableView1cnpjcpf: TcxGridDBColumn
          Caption = 'CNPJ / CPF'
          DataBinding.FieldName = 'cnpjcpf'
          DataBinding.IsNullValueType = True
          Width = 239
        end
      end
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = frmCadastroCliente.cdsCadastroPadrao
  end
end
