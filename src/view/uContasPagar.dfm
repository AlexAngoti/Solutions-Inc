object frmContasPagar: TfrmContasPagar
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 566
  ClientWidth = 1183
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentral: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 70
    Width = 1173
    Height = 491
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlCentTop: TPanel
      Left = 1
      Top = 1
      Width = 1171
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnlNovoLanc: TPanel
        AlignWithMargins = True
        Left = 1041
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
        Width = 1171
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = 13750737
        ParentBackground = False
        TabOrder = 1
      end
      object pnlBaixaLanc: TPanel
        AlignWithMargins = True
        Left = 911
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
      Top = 208
      Width = 1161
      Height = 260
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object pnlLinha3: TPanel
        Left = 0
        Top = 73
        Width = 1161
        Height = 1
        Align = alTop
        Color = 13750737
        ParentBackground = False
        TabOrder = 0
      end
      object pnlSubPesquisa: TPanel
        Left = 0
        Top = 0
        Width = 1161
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
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
            Left = 27
            Top = 0
            Width = 606
            Height = 28
            Align = alClient
            Pen.Color = clSilver
            ExplicitLeft = 4
            ExplicitTop = 5
            ExplicitWidth = 633
          end
          object spbPesquisa: TSpeedButton
            Left = 0
            Top = 0
            Width = 27
            Height = 28
            Cursor = crHandPoint
            Align = alLeft
            Flat = True
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000020202091B1B1B8E0D0D0D45000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000202
              0209232323BC303030FF1B1B1B8D000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000020202092222
              22BB303030FF242424C10202020C000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000002020209222222BB3030
              30FF242424C10202020C00000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000090909321B1B1B8D2222
              22BB242424C61F1F1FA61111115C0101010702020209232323BC303030FF2323
              23BC020202090000000000000000000000000000000000000000000000000000
              00000000000000000000000000000202020B1E1E1EA2303030FE303030FF3030
              30FF303030FF303030FF303030FF282828DB252525C3303030FF232323BC0202
              0209000000000000000000000000000000000000000000000000000000000000
              0000000000000000000001010106232323C0303030FF282828D4101010570404
              0413020202080A0A0A351D1D1DA0303030FE303030FF252525C3020202090000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000001818187E303030FF232323B802020209000000000000
              000000000000000000000000000012121260303030FE282828D3010101030000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000020202082D2D2DEE2D2D2DEF0404041300000000000000000000
              0000000000000000000000000000000000001E1E1E9F303030FF101010570000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000C0C0C41303030FF1D1D1D990000000000000000000000000000
              0000000000000000000000000000000000000A0A0A36303030FF1D1D1D9B0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000012121260303030FF1515156E0000000000000000000000000000
              00000000000000000000000000000000000002020209303030FF242424BF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000011111158303030FF171717780000000000000000000000000000
              00000000000000000000000000000000000004040414303030FF212121B50000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000008080828303030FF222222BB0000000000000000000000000000
              00000000000000000000000000000000000010101057303030FF191919840000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000272727CD303030FE0C0C0C4200000000000000000000
              000000000000000000000000000002020209282828D4303030FE0909092E0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000C0C0C41303030FD2D2D2DED0C0C0C42000000000000
              0000000000000000000004040413232323B9303030FF1C1C1C96000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000014141469303030FD303030FE222222BB1717
              17781515156E1D1D1D992D2D2DEF303030FF222222B70202020B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000C0C0C40272727CE303030FF3030
              30FF303030FF303030FF2B2B2BE7171717780101010300000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000080808291010
              10571111115B0A0A0A3701010107000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OnClick = spbPesquisaClick
            ExplicitLeft = 2
            ExplicitHeight = 26
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
      object dbgRegistros: TDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 84
        Width = 1161
        Height = 176
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsGridPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 2
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
    end
    object pnlCentralInfo: TPanel
      Left = 1
      Top = 42
      Width = 1171
      Height = 161
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
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
        object lblRecebimentoAtrasado: TLabel
          Left = 39
          Top = 44
          Width = 172
          Height = 21
          Caption = 'Pagamentos atrasados'
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
        object lblRecebimentoHoje: TLabel
          Left = 44
          Top = 43
          Width = 158
          Height = 21
          Caption = 'Pagamentos de Hoje'
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
        object lblTotalaReceber: TLabel
          Left = 66
          Top = 44
          Width = 99
          Height = 21
          Caption = 'Total a Pagar'
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
        object lblRecebimentosFuturos: TLabel
          Left = 42
          Top = 44
          Width = 154
          Height = 21
          Caption = 'Pagamentos futuros'
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
      Top = 473
      Width = 1171
      Height = 17
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
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
        Left = 901
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
        ExplicitHeight = 15
      end
    end
  end
  object pnlSubTop: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1173
    Height = 60
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object btnFechar: TSpeedButton
      AlignWithMargins = True
      Left = 1117
      Top = 10
      Width = 46
      Height = 40
      Margins.Left = 15
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Flat = True
      Glyph.Data = {
        42090000424D4209000000000000420000002800000018000000180000000100
        20000300000000090000130B0000130B000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000C30000
        00CC000000160000000000000000000000000000000000000000000000000000
        00000000000000000016000000CC000000C30000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000CA0000
        00FF000000D30000001600000000000000000000000000000000000000000000
        000000000016000000D3000000FF000000CA0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000150000
        00D2000000FF000000D700000018000000000000000000000000000000000000
        0015000000D2000000FF000000D7000000190000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0015000000D2000000FF000000D7000000180000000000000000000000150000
        00D2000000FF000000D700000019000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000015000000D2000000FF000000D70000001800000015000000D20000
        00FF000000D70000001900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000015000000D2000000FF000000DA000000D6000000FF0000
        00D7000000190000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000015000000D6000000FF000000FF000000DB0000
        0019000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000015000000D6000000FF000000FF000000DB0000
        0018000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000015000000D2000000FF000000DA000000D6000000FF0000
        00D7000000180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000015000000D2000000FF000000D70000001900000015000000D20000
        00FF000000D70000001800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0015000000D2000000FF000000D7000000190000000000000000000000150000
        00D2000000FF000000D700000018000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000150000
        00D2000000FF000000D700000019000000000000000000000000000000000000
        0015000000D2000000FF000000D7000000180000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000CA0000
        00FF000000D30000001600000000000000000000000000000000000000000000
        000000000016000000D3000000FF000000CA0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000C30000
        00CC000000160000000000000000000000000000000000000000000000000000
        00000000000000000016000000CC000000C30000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = btnFecharClick
      ExplicitLeft = 887
      ExplicitTop = 0
      ExplicitHeight = 52
    end
    object imgLogoTop: TImage
      Left = 0
      Top = 0
      Width = 57
      Height = 60
      Align = alLeft
      Center = True
      Picture.Data = {
        0D546478536D617274496D616765FFD8FFE000104A4649460001010000000000
        0000FFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D
        283A333D3C3933383740485C4E404457453738506D51575F626768673E4D7179
        7064785C656763FFC0000B080040004001011100FFC4001B0000020301010100
        0000000000000000000001030506040207FFC4002D1000010401020404050500
        00000000000001000203041105213141517112222361133242B1D106528191A1
        FFDA0008010100003F00FA0210921342108505AB70D488C93BC3472EA7B0599D
        475C9EDE638730C3EC7CCEEE52D3F5D9A900C9CFC580753BB7B15A5A37AB6A10
        096ACA1EDE7D4771C974A1092C86BD019B5399ED91CD7B70064E4631C30A1D2F
        4CB37DEE0E68898C3873C9C8FE028356D12DD3799263F1A007CAE60D8771C97A
        FD3AE7375AAE1A480E24100F1182B749A1259DD629CCCB3258F0E6271CE472DB
        9AE0865920903E2796B8730AF296B11CC047680638EDE2FA4FE136E895E3D462
        BB5BD3F0925CC1F29C83C3A2B44D09280DA6099D149B63607915C377468E5CC9
        58863F8F87E93F8543641A8F2C9DA58EFDA789ECBBF43B37059646F21B03B611
        BB723DFD96913424AAAE022D3F238A20B4F876F99BD0AAED42F4B2CE05A89AC6
        03E9B86E3FBEAA6D34175E8881900E4E3B2D026842F1244C95BE178C8FB2AE9E
        9BE2CB99E76FFA1286899DBEA8C46788238AEFAB561A9108E060637EEA642108
        4909A10BFFD9}
      ExplicitLeft = 8
      ExplicitHeight = 44
    end
    object lblNomeLogoTop: TLabel
      Left = 63
      Top = 20
      Width = 201
      Height = 17
      Caption = 'SOLUTIONS INC / Contas a Pagar'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object dspContasPagar: TDataSetProvider
    DataSet = dm.qryPagar
    Left = 531
    Top = 7
  end
  object cdsContasPagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspContasPagar'
    Left = 563
    Top = 3
    object cdsContasPagarid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object cdsContasPagardataemissao: TDateField
      FieldName = 'dataemissao'
      Origin = 'dataemissao'
    end
    object cdsContasPagardatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
    object cdsContasPagarvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsContasPagarformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object cdsContasPagardatabaixa: TDateField
      FieldName = 'databaixa'
      Origin = 'databaixa'
    end
    object cdsContasPagardescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object cdsContasPagarnumerodoc: TWideStringField
      FieldName = 'numerodoc'
      Origin = 'numerodoc'
      Size = 60
    end
    object cdsContasPagarobservaobaixa: TWideStringField
      FieldName = 'observaobaixa'
      Size = 255
    end
    object cdsContasPagaridfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsContasPagarnumeroorigem: TIntegerField
      FieldName = 'numeroorigem'
    end
  end
  object dsContasPagar: TDataSource
    DataSet = cdsContasPagar
    Left = 590
    Top = 7
  end
  object dsGridPagar: TDataSource
    DataSet = qryGridPagar
    Left = 590
    Top = 55
  end
  object qryGridPagar: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'SELECT * FROM contaspagar a'
      'where a.dataemissao between :dataini and :datafin'
      '  and case when :tipo = 0 then a.databaixa is null '
      '           when :tipo = 1 then a.databaixa is not null'
      '           end ')
    Left = 563
    Top = 54
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
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
    object qryGridPagarid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryGridPagardataemissao: TDateField
      FieldName = 'dataemissao'
      Origin = 'dataemissao'
    end
    object qryGridPagardatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
    object qryGridPagarvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object qryGridPagarformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object qryGridPagardatabaixa: TDateField
      FieldName = 'databaixa'
      Origin = 'databaixa'
    end
    object qryGridPagardescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object qryGridPagarnumerodoc: TWideStringField
      FieldName = 'numerodoc'
      Origin = 'numerodoc'
      Size = 60
    end
    object qryGridPagarobservaobaixa: TWideStringField
      FieldName = 'observaobaixa'
      Origin = 'observaobaixa'
      Size = 255
    end
    object qryGridPagaridfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
    object qryGridPagarnumeroorigem: TIntegerField
      FieldName = 'numeroorigem'
      Origin = 'numeroorigem'
    end
  end
end
