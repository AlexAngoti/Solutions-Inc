inherited frmConsultaProduto: TfrmConsultaProduto
  Caption = 'frmConsultaProduto'
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
      inherited dbGrdPesquisaDBTableView1: TcxGridDBTableView
        OnCellDblClick = dbGrdPesquisaDBTableView1CellDblClick
        object dbGrdPesquisaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'id'
        end
        object dbGrdPesquisaDBTableView1Column2: TcxGridDBColumn
          AlternateCaption = 'Id'
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
          Width = 484
        end
        object dbGrdPesquisaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Valor Unit'#225'rio'
          DataBinding.FieldName = 'valorunitario'
          Width = 126
        end
        object dbGrdPesquisaDBTableView1Column4: TcxGridDBColumn
          AlternateCaption = 'Situa'#231#227'o'
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'situacao'
          Width = 137
        end
      end
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = frmCadastroProduto.cdsCadastroPadrao
  end
end
