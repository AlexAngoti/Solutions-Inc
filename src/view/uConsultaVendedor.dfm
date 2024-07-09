inherited frmConsultaVendedor: TfrmConsultaVendedor
  Caption = 'frmConsultaVendedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSubTop: TPanel
    inherited lblNomeLogoTop: TLabel
      Width = 243
      Caption = 'SOLUTIONS INC / Consulta de Vendedor'
      ExplicitWidth = 243
    end
  end
  inherited pnlCentral: TPanel
    inherited dbGrdPesquisa: TcxGrid
      inherited dbGrdPesquisaDBTableView1: TcxGridDBTableView
        OnDblClick = dbGrdPesquisaDBTableView1DblClick
        object dbGrdPesquisaDBTableView1Column1: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
        end
        object dbGrdPesquisaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nomerazao'
          Width = 450
        end
        object dbGrdPesquisaDBTableView1Column3: TcxGridDBColumn
          Caption = 'CPF / CNPJ'
          DataBinding.FieldName = 'cnpjcpf'
          Width = 200
        end
      end
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = frmFrenteVendas.qryVendedor
  end
end
