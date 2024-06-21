inherited frmConsultaVenda: TfrmConsultaVenda
  Caption = 'frmConsultaVenda'
  ClientHeight = 397
  ClientWidth = 802
  Font.Name = 'Segoe UI'
  ExplicitWidth = 802
  ExplicitHeight = 397
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSubTop: TPanel
    Width = 792
    ExplicitLeft = 0
    ExplicitTop = 4
    ExplicitWidth = 792
    inherited lblNomeLogoTop: TLabel
      Left = 63
      Width = 222
      Caption = 'SOLUTIONS INC / Consulta de Venda'
      ExplicitLeft = 63
      ExplicitWidth = 222
    end
    inherited btnFechar: TSpeedButton
      Left = 732
      ExplicitLeft = 732
    end
  end
  inherited pnlCentral: TPanel
    Width = 792
    Height = 325
    ExplicitWidth = 792
    ExplicitHeight = 325
    inherited pnlBarraPesquisa: TPanel
      Width = 792
      ExplicitWidth = 792
    end
    inherited dbGrdPesquisa: TcxGrid
      Width = 792
      Height = 268
      ExplicitWidth = 792
      ExplicitHeight = 268
      inherited dbGrdPesquisaDBTableView1: TcxGridDBTableView
        object dbGrdPesquisaDBTableView1Column1: TcxGridDBColumn
          Caption = 'N'#250'mero da Venda'
          DataBinding.IsNullValueType = True
          Width = 138
        end
        object dbGrdPesquisaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.IsNullValueType = True
          Width = 298
        end
        object dbGrdPesquisaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.IsNullValueType = True
          Width = 91
        end
        object dbGrdPesquisaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Data da Venda'
          DataBinding.IsNullValueType = True
          Width = 222
        end
      end
    end
  end
end
