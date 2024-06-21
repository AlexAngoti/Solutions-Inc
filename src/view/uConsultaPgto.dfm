inherited frmConsultaPagamento: TfrmConsultaPagamento
  Caption = 'frmConsultaPagamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSubTop: TPanel
    ExplicitLeft = 0
    ExplicitTop = 4
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
      inherited dbGrdPesquisaDBTableView1: TcxGridDBTableView
        OnDblClick = dbGrdPesquisaDBTableView1DblClick
        OptionsView.ColumnAutoWidth = True
        object dbGrdPesquisaDBTableView1id: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          DataBinding.IsNullValueType = True
          Width = 53
        end
        object dbGrdPesquisaDBTableView1nome: TcxGridDBColumn
          Caption = 'Forma de Pagamento'
          DataBinding.FieldName = 'nome'
          DataBinding.IsNullValueType = True
          Width = 753
        end
        object dbGrdPesquisaDBTableView1abreviao: TcxGridDBColumn
          Caption = 'Abrevia'#231#227'o'
          DataBinding.FieldName = 'abrevia'#231#227'o'
          DataBinding.IsNullValueType = True
          Width = 129
        end
      end
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = frmCadastroPagamento.cdsCadastroPadrao
  end
end
