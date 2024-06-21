inherited frmConsultaProdutos: TfrmConsultaProdutos
  Caption = 'frmConsultaProdutos'
  ExplicitLeft = -175
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSubTop: TPanel
    inherited lblNomeLogoTop: TLabel
      Width = 235
      Caption = 'SOLUTIONS INC / Consulta de Produto'
      ExplicitWidth = 235
    end
  end
  inherited pnlCentral: TPanel
    inherited dbGrdPesquisa: TcxGrid
      ExplicitTop = 63
      inherited dbGrdPesquisaDBTableView1: TcxGridDBTableView
        OnDblClick = dbGrdPesquisaDBTableView1DblClick
        object dbGrdPesquisaDBTableView1Column1: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          DataBinding.IsNullValueType = True
          Width = 72
        end
        object dbGrdPesquisaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Nome do Produto'
          DataBinding.FieldName = 'nome'
          DataBinding.IsNullValueType = True
          Width = 526
        end
        object dbGrdPesquisaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Valor Unit'#225'rio'
          DataBinding.FieldName = 'valorunitario'
          DataBinding.IsNullValueType = True
          Width = 124
        end
      end
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = frmEntradaEstoque.qryProduto
  end
end
