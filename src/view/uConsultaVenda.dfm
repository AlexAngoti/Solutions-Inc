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
        OnDblClick = dbGrdPesquisaDBTableView1DblClick
        object dbGrdPesquisaDBTableView1Column1: TcxGridDBColumn
          Caption = 'N'#250'mero da Venda'
          DataBinding.FieldName = 'id'
          Width = 117
        end
        object dbGrdPesquisaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'nomerazao'
          Width = 332
        end
        object dbGrdPesquisaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valortotal'
          Width = 91
        end
        object dbGrdPesquisaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Data da Venda'
          DataBinding.FieldName = 'datavenda'
          Width = 222
        end
      end
    end
  end
  inherited dsConsultaPadrao: TDataSource
    DataSet = qryConsultaVenda
  end
  object qryConsultaVenda: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select v.*, f.abrevia'#231#227'o, p.nomerazao from vendas v'
      'inner join formapgto f on v.formapgto = f.id '
      'inner join pessoa p on v.cliente = p.id '
      'where v.situacao = 0'
      'order by id desc')
    Left = 357
    Top = 13
    object qryConsultaVendaid: TLargeintField
      FieldName = 'id'
    end
    object qryConsultaVendadatavenda: TDateField
      FieldName = 'datavenda'
    end
    object qryConsultaVendacliente: TIntegerField
      FieldName = 'cliente'
    end
    object qryConsultaVendaformapgto: TIntegerField
      FieldName = 'formapgto'
    end
    object qryConsultaVendavalortotal: TBCDField
      FieldName = 'valortotal'
      Precision = 15
      Size = 2
    end
    object qryConsultaVendausuario: TIntegerField
      FieldName = 'usuario'
    end
    object qryConsultaVendaobervacao: TWideStringField
      FieldName = 'obervacao'
      Size = 255
    end
    object qryConsultaVendasituacao: TIntegerField
      FieldName = 'situacao'
    end
    object qryConsultaVendaabreviação: TWideStringField
      FieldName = 'abrevia'#231#227'o'
      Size = 3
    end
    object qryConsultaVendanomerazao: TWideStringField
      FieldName = 'nomerazao'
      Size = 255
    end
  end
end
