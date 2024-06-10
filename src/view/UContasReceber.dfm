object frmContasReceber: TfrmContasReceber
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 620
  ClientWidth = 1196
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentral: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 0
    Width = 1186
    Height = 615
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitWidth = 1196
    ExplicitHeight = 620
    object pnlCentTop: TPanel
      Left = 1
      Top = 36
      Width = 1184
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 1
      ExplicitWidth = 1171
      object pnlNovoLanc: TPanel
        AlignWithMargins = True
        Left = 1054
        Top = 5
        Width = 127
        Height = 30
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = 16024898
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 1041
        object btnNovoLancamento: TSpeedButton
          Left = 0
          Top = 0
          Width = 127
          Height = 30
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Novo Lan'#231'amento'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnNovoLancamentoClick
          ExplicitLeft = 3
          ExplicitTop = -1
        end
      end
      object pnlLinha: TPanel
        Left = 0
        Top = 40
        Width = 1184
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = 13750737
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 1171
      end
      object pnlBaixaLanc: TPanel
        AlignWithMargins = True
        Left = 924
        Top = 5
        Width = 127
        Height = 30
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = clRed
        ParentBackground = False
        TabOrder = 2
        ExplicitLeft = 911
        object btnBaixarLancamento: TSpeedButton
          Left = 0
          Top = 0
          Width = 127
          Height = 30
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Baixar Lan'#231'amento'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnBaixarLancamentoClick
          ExplicitTop = -1
        end
      end
    end
    object pnlCentBot: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 243
      Width = 1174
      Height = 349
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 208
      ExplicitWidth = 1184
      ExplicitHeight = 389
      object pnlLinha3: TPanel
        Left = 0
        Top = 73
        Width = 1174
        Height = 1
        Align = alTop
        Color = 13750737
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1161
      end
      object dbgRegistros: TDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 84
        Width = 1174
        Height = 265
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsGridReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = -1
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = dbgRegistrosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'dataemissao'
            Title.Caption = 'Data Inclus'#227'o'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datavencimento'
            Title.Caption = 'Data Vencimento'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'databaixa'
            Title.Caption = 'Data Fechamento'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numerodoc'
            Title.Caption = 'Num. Documento'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'Lan'#231'amento'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Caption = 'Valor do Titulo'
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'formapgto'
            Title.Caption = 'Forma Pgto'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 431
            Visible = True
          end>
      end
      object pnlSubPesquisa: TPanel
        Left = 0
        Top = 0
        Width = 1174
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitTop = 1
        object Label1: TLabel
          Left = 10
          Top = 0
          Width = 57
          Height = 13
          Caption = 'Data Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 147
          Top = 0
          Width = 52
          Height = 13
          Caption = 'Data Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlPesquisa: TPanel
          Left = 8
          Top = 43
          Width = 633
          Height = 28
          BevelOuter = bvNone
          TabOrder = 0
          object shpPesquisa: TShape
            Left = 0
            Top = 0
            Width = 633
            Height = 28
            Align = alClient
            Pen.Color = clSilver
            ExplicitLeft = 4
            ExplicitTop = 5
          end
          object spbPesquisa: TSpeedButton
            Left = 2
            Top = 3
            Width = 27
            Height = 26
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              26040000424D2604000000000000360000002800000012000000120000000100
              180000000000F0030000120B0000120B00000000000000000000E6E1DEE6E1DE
              E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
              DEE6E1DEE6E1DEE6E1DEB3B0AECBC7C50000E6E1DEE6E1DEE6E1DEE6E1DEE6E1
              DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE9B
              99986C6C6CAFACAA0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
              E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE9F9D9B6C6C6C9D9B9ADED9D6
              0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              E6E1DEE6E1DEE6E1DE9E9C9B6C6C6CA19F9EE6E1DEE6E1DE0000E6E1DEE6E1DE
              E6E1DEE6E1DEE5E0DDC1BEBCA3A09FA09E9CBBB8B6DDD8D6E6E1DEE6E1DE9C9A
              996C6C6CA2A09FE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEE6E1DEBAB6B46D6D
              6D6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CB1AEACA6A4A36C6C6CA3A19FE6E1DEE6
              E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEAAA7A66C6C6C7B7B7ABCB9B7D9D5D2DD
              D8D6C5C1BF8D8C8B6C6C6C6C6C6CAEABA9E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              0000E6E1DEC7C3C16C6C6C92908FE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              B0AEAC6C6C6CB5B2B0E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E1DCD9767675
              6F6F6FE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE8B89896C6C
              6CDFDBD8E6E1DEE6E1DEE6E1DEE6E1DE0000BAB7B56C6C6CA8A5A4E6E1DEE6E1
              DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DECDC9C76C6C6CB8B5B3E6E1DEE6
              E1DEE6E1DEE6E1DE0000A2A09F6C6C6CC6C3C0E6E1DEE6E1DEE6E1DEE6E1DEE6
              E1DEE6E1DEE6E1DEE6E1DEE2DDDA6C6C6C9D9B9AE6E1DEE6E1DEE6E1DEE6E1DE
              0000A5A3A26C6C6CC4C0BEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              E6E1DEDFDBD86C6C6CA19F9EE6E1DEE6E1DEE6E1DEE6E1DE0000C4C0BE6C6C6C
              9A9897E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEC1BDBB6C6C
              6CC2BFBCE6E1DEE6E1DEE6E1DEE6E1DE0000E5E0DD8483826C6C6CDDD9D6E6E1
              DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE7979796C6C6CE5E0DDE6E1DEE6
              E1DEE6E1DEE6E1DE0000E6E1DED7D2D06C6C6C787777D9D4D1E6E1DEE6E1DEE6
              E1DEE6E1DEE6E1DE9492916C6C6CBCB9B7E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              0000E6E1DEE6E1DEC1BDBB6C6C6C6C6C6C999796BEBAB8C3C0BDA6A4A36D6D6D
              6C6C6CABA8A7E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DE
              E6E1DED1CDCA8A89886C6C6C6C6C6C6C6C6C6C6C6C7E7D7DC2BEBCE6E1DEE6E1
              DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1
              DEC4C0BEAAA8A6A6A4A2BDBAB8E1DCD9E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
              E1DEE6E1DEE6E1DE0000}
            OnClick = spbPesquisaClick
          end
          object edtPesquisa: TEdit
            Left = 35
            Top = 3
            Width = 572
            Height = 20
            TabStop = False
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = -1
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'DIGITE PARA PESQUISAR'
          end
          object pnlLinha4: TPanel
            Left = 624
            Top = 24
            Width = 185
            Height = 41
            Caption = 'pnlLinha4'
            TabOrder = 1
          end
        end
        object RadioGroup1: TRadioGroup
          Left = 290
          Top = 3
          Width = 194
          Height = 35
          Caption = 'Tipo da Pesquisa'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Descri'#231#227'o'
            'Numero Doc.')
          ParentFont = False
          TabOrder = 1
        end
        object dtpDataInicial: TDateTimePicker
          Left = 10
          Top = 17
          Width = 119
          Height = 21
          Date = 45452.000000000000000000
          Time = 0.462828981479106000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dtpDataFinal: TDateTimePicker
          Left = 147
          Top = 17
          Width = 126
          Height = 21
          Date = 45452.000000000000000000
          Time = 0.462828981479106000
          TabOrder = 3
        end
        object cbFaturados: TCheckBox
          Left = 507
          Top = 17
          Width = 114
          Height = 17
          Caption = 'Apenas Faturados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object pnlCentralInfo: TPanel
      Left = 1
      Top = 77
      Width = 1184
      Height = 161
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 42
      ExplicitWidth = 1171
      ExplicitHeight = 193
      object pnlQuantidade: TPanel
        Left = 0
        Top = 0
        Width = 235
        Height = 161
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 193
        object lblVlrQuantidade: TLabel
          Left = 111
          Top = 70
          Width = 14
          Height = 36
          Caption = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -26
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblQuantidade: TLabel
          Left = 77
          Top = 44
          Width = 90
          Height = 21
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnlRecebimentoAtrasado: TPanel
        Left = 235
        Top = 0
        Width = 235
        Height = 161
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitHeight = 193
        object lblRecebimentoAtrasado: TLabel
          Left = 39
          Top = 44
          Width = 173
          Height = 21
          Caption = 'Recebimento Atrasado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVlrRecebimentoAtrasado: TLabel
          Left = 110
          Top = 70
          Width = 14
          Height = 36
          Caption = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -26
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnlRecebimentoHoje: TPanel
        Left = 470
        Top = 0
        Width = 235
        Height = 161
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitHeight = 193
        object lblRecebimentoHoje: TLabel
          Left = 44
          Top = 44
          Width = 164
          Height = 21
          Caption = 'Recebimento de Hoje'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVlrRecebimentoHoje: TLabel
          Left = 110
          Top = 70
          Width = 14
          Height = 36
          Caption = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -26
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnlTotalReceber: TPanel
        Left = 940
        Top = 0
        Width = 235
        Height = 161
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        ExplicitHeight = 193
        object lblTotalaReceber: TLabel
          Left = 66
          Top = 44
          Width = 116
          Height = 21
          Caption = 'Total a Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotalReceber: TLabel
          Left = 110
          Top = 70
          Width = 14
          Height = 36
          Caption = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -26
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnlRecebimentosFuturos: TPanel
        Left = 705
        Top = 0
        Width = 235
        Height = 161
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 4
        ExplicitHeight = 193
        object lblRecebimentosFuturos: TLabel
          Left = 42
          Top = 44
          Width = 167
          Height = 21
          Caption = 'Recebimentos futuros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVlrRecebimentosFuturos: TLabel
          Left = 110
          Top = 70
          Width = 14
          Height = 36
          Caption = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -26
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 597
      Width = 1184
      Height = 17
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      ExplicitTop = 543
      ExplicitWidth = 1171
      object lblExcluir: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 443
        Height = 14
        Margins.Left = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 
          'Para excluir, selecione a linha desejada e pressione a tecla DEL' +
          ' ou DELETE no Teclado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 15
      end
      object lblAlterar: TLabel
        AlignWithMargins = True
        Left = 914
        Top = 0
        Width = 260
        Height = 17
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alRight
        Caption = 'Para alterar Clique Duas Vezes na linha que deseja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16725301
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 901
        ExplicitHeight = 15
      end
    end
    object pnlNomeDaTela: TPanel
      Left = 1
      Top = 1
      Width = 1184
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
      ExplicitTop = 0
      object Label3: TLabel
        Left = 15
        Top = 10
        Width = 128
        Height = 17
        Caption = 'CONTAS A RECEBER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Segoe UI Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dspContasReceber: TDataSetProvider
    DataSet = dm.qryReceber
    Left = 536
    Top = 12
  end
  object cdsContasReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspContasReceber'
    Left = 568
    Top = 8
    object cdsContasReceberid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object cdsContasReceberdataemissao: TDateField
      FieldName = 'dataemissao'
      Origin = 'dataemissao'
    end
    object cdsContasReceberdatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
    object cdsContasRecebervalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 15
      Size = 2
    end
    object cdsContasReceberformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object cdsContasReceberidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object cdsContasReceberdatabaixa: TDateField
      FieldName = 'databaixa'
      Origin = 'databaixa'
    end
    object cdsContasReceberdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object cdsContasRecebernumerodoc: TWideStringField
      FieldName = 'numerodoc'
      Origin = 'numerodoc'
      Size = 60
    end
    object cdsContasReceberobservaobaixa: TWideStringField
      FieldName = 'observaobaixa'
      Size = 255
    end
  end
  object dsContasReceber: TDataSource
    DataSet = cdsContasReceber
    Left = 595
    Top = 12
  end
  object dsGridReceber: TDataSource
    DataSet = qryGridReceber
    Left = 595
    Top = 60
  end
  object qryGridReceber: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'SELECT * FROM contasreceber a'
      'where a.dataemissao between :dataini and :datafin'
      '  and case when :tipo = 0 then a.databaixa is null '
      '           when :tipo = 1 then a.databaixa is not null'
      '           end ')
    Left = 568
    Top = 59
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryGridReceberid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryGridReceberdataemissao: TDateField
      FieldName = 'dataemissao'
      Origin = 'dataemissao'
    end
    object qryGridReceberdatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
    object qryGridRecebervalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 15
      Size = 2
    end
    object qryGridReceberformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object qryGridReceberidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object qryGridReceberdatabaixa: TDateField
      FieldName = 'databaixa'
      Origin = 'databaixa'
    end
    object qryGridReceberdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object qryGridRecebernumerodoc: TWideStringField
      FieldName = 'numerodoc'
      Origin = 'numerodoc'
      Size = 60
    end
    object qryGridReceberobservaobaixa: TWideStringField
      FieldName = 'observaobaixa'
      Origin = 'observaobaixa'
      Size = 255
    end
  end
end
