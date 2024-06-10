inherited frmConsultaPagamento: TfrmConsultaPagamento
  Caption = 'frmConsultaPagamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSubTop: TPanel
    inherited lblNomeLogoTop: TLabel
      Width = 298
      Caption = 'SOLUTIONS INC / Consulta Forma de Pagamento'
      ExplicitWidth = 298
    end
  end
  inherited pnlCentral: TPanel
    inherited pnlBarraPesquisa: TPanel
      inherited btnPesquisa: TSpeedButton
        OnClick = btnPesquisaClick
      end
    end
    inherited dbGrdPesquisa: TcxGrid
      ExplicitLeft = 0
      ExplicitTop = 57
      ExplicitWidth = 935
      ExplicitHeight = 342
      inherited dbGrdPesquisaDBTableView1: TcxGridDBTableView
        OnDblClick = dbGrdPesquisaDBTableView1DblClick
        OptionsView.ColumnAutoWidth = True
        object dbGrdPesquisaDBTableView1id: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          Width = 53
        end
        object dbGrdPesquisaDBTableView1nome: TcxGridDBColumn
          Caption = 'Forma de Pagamento'
          DataBinding.FieldName = 'nome'
          Width = 753
        end
        object dbGrdPesquisaDBTableView1abreviao: TcxGridDBColumn
          Caption = 'Abrevia'#231#227'o'
          DataBinding.FieldName = 'abrevia'#231#227'o'
          Width = 129
        end
      end
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = frmCadastroPagamento.cdsCadastroPadrao
  end
end
