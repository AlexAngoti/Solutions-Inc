object frmEntradaEstoque: TfrmEntradaEstoque
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmEntradaEstoque'
  ClientHeight = 458
  ClientWidth = 776
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 766
    Height = 57
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object imgLogoTop: TImage
      Left = 0
      Top = 0
      Width = 57
      Height = 57
      Align = alLeft
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
      ExplicitLeft = 1
      ExplicitTop = 2
    end
    object lblNomeLogoTop: TLabel
      Left = 63
      Top = 19
      Width = 232
      Height = 17
      Caption = 'SOLUTIONS INC / Entrada de Estoque '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 706
      Top = 5
      Width = 55
      Height = 47
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'X'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = 904
      ExplicitTop = 0
      ExplicitHeight = 57
    end
  end
  object pnlCentral: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 67
    Width = 766
    Height = 386
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnlSubBot: TPanel
      Left = 1
      Top = 344
      Width = 764
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object pnlNovoLanc: TPanel
        AlignWithMargins = True
        Left = 634
        Top = 5
        Width = 127
        Height = 31
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = 16024898
        ParentBackground = False
        TabOrder = 1
        object btnNovoLancamento: TSpeedButton
          Left = 0
          Top = 0
          Width = 127
          Height = 31
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Confirmar'
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
          ExplicitHeight = 30
        end
      end
      object pnlCancelar: TPanel
        AlignWithMargins = True
        Left = 504
        Top = 5
        Width = 127
        Height = 31
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 127
          Height = 31
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4210752
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnCancelarClick
          ExplicitLeft = 3
          ExplicitTop = -1
          ExplicitHeight = 30
        end
      end
    end
    object pnlSubCentral: TPanel
      Left = 26
      Top = 25
      Width = 703
      Height = 313
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lblDataVencimento: TLabel
        Left = 217
        Top = 18
        Width = 104
        Height = 13
        Caption = 'Data do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblCliente: TLabel
        Left = 25
        Top = 75
        Width = 36
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object spbPesquisa: TSpeedButton
        Left = 642
        Top = 90
        Width = 27
        Height = 25
        Cursor = crHandPoint
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
      end
      object lblDoc: TLabel
        Left = 393
        Top = 18
        Width = 121
        Height = 13
        Caption = 'Numero do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblMovimento: TLabel
        Left = 25
        Top = 18
        Width = 117
        Height = 13
        Caption = 'Tipo da Movimenta'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblFornecedor: TLabel
        Left = 25
        Top = 129
        Width = 59
        Height = 13
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object btnFornecedor: TSpeedButton
        Left = 642
        Top = 144
        Width = 27
        Height = 25
        Cursor = crHandPoint
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
        OnClick = btnFornecedorClick
      end
      object lblProduto: TLabel
        Left = 25
        Top = 185
        Width = 47
        Height = 13
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object btnProdutos: TSpeedButton
        Left = 642
        Top = 200
        Width = 27
        Height = 25
        Cursor = crHandPoint
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
        OnClick = btnProdutosClick
      end
      object lblValor: TLabel
        Left = 25
        Top = 239
        Width = 61
        Height = 13
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblUni: TLabel
        Left = 213
        Top = 239
        Width = 71
        Height = 13
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblTotal: TLabel
        Left = 415
        Top = 239
        Width = 54
        Height = 13
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblValorTotal: TLabel
        Left = 562
        Top = 18
        Width = 106
        Height = 13
        Caption = 'Valor do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dtpDataVencimento: TDateTimePicker
        Left = 217
        Top = 37
        Width = 152
        Height = 25
        Date = 45208.000000000000000000
        Time = 0.336747800924058500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbxCliente: TSWHDBLookupComboBox
        Left = 25
        Top = 90
        Width = 611
        Height = 25
        BevelInner = bvNone
        BevelKind = bkSoft
        DataField = 'cliente'
        DataSource = dsEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'id'
        ListField = 'nomerazao'
        ListSource = dsCliente
        ParentFont = False
        TabOrder = 4
        MudarColor = 14087422
      end
      object edtNumDoc: TSWHDBEdit
        Left = 393
        Top = 37
        Width = 143
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'numerodocumento'
        DataSource = dsEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        MudarColor = 14087422
      end
      object cbxTipoMovimento: TSWHComboBox
        Left = 25
        Top = 37
        Width = 176
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = cbxTipoMovimentoChange
        Items.Strings = (
          'ENT - Entrada de Estoque'
          'SAI -  Saida de Estoque ')
        MudarColor = 14087422
      end
      object cbFornecedor: TSWHDBLookupComboBox
        Left = 25
        Top = 144
        Width = 611
        Height = 25
        BevelInner = bvNone
        BevelKind = bkSoft
        DataField = 'fornecedor'
        DataSource = dsEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'id'
        ListField = 'nomerazao'
        ListSource = dsFornecedor
        ParentFont = False
        TabOrder = 5
        MudarColor = 14087422
      end
      object cbxProdutos: TSWHDBLookupComboBox
        Left = 25
        Top = 200
        Width = 611
        Height = 25
        BevelInner = bvNone
        BevelKind = bkSoft
        DataField = 'produto'
        DataSource = dsEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'id'
        ListField = 'nome'
        ListSource = dsProduto
        ParentFont = False
        TabOrder = 6
        MudarColor = 14087422
      end
      object edtValor: TSWHMaskEdit
        Left = 25
        Top = 258
        Width = 152
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = ''
        TipoMascara = tmValor
        MudarColor = 14087422
        CasasDecimais = Duas
      end
      object edtUnitario: TSWHMaskEdit
        Left = 213
        Top = 258
        Width = 164
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Text = ''
        OnExit = edtUnitarioExit
        TipoMascara = tmValor
        MudarColor = 14087422
        CasasDecimais = Quatro
      end
      object edtTotal: TSWHMaskEdit
        Left = 415
        Top = 258
        Width = 152
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Text = ''
        TipoMascara = tmValor
        MudarColor = 14087422
        CasasDecimais = Duas
      end
      object edtValorTotal: TSWHMaskEdit
        Left = 562
        Top = 37
        Width = 133
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = ''
        TipoMascara = tmValor
        MudarColor = 14087422
        CasasDecimais = Duas
      end
    end
  end
  object qryEstoque: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from estoque'
      'limit 1')
    Left = 293
    Top = 13
    object qryEstoqueid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryEstoquetipomovimento: TWideStringField
      FieldName = 'tipomovimento'
      Origin = 'tipomovimento'
      Size = 3
    end
    object qryEstoquenumerodocumento: TWideStringField
      FieldName = 'numerodocumento'
      Origin = 'numerodocumento'
      Size = 30
    end
    object qryEstoquefornecedor: TIntegerField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
    end
    object qryEstoquecliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object qryEstoquedatamovimento: TDateField
      FieldName = 'datamovimento'
      Origin = 'datamovimento'
    end
    object qryEstoqueproduto: TIntegerField
      FieldName = 'produto'
      Origin = 'produto'
    end
    object qryEstoquequantidade: TBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 15
      Size = 2
    end
    object qryEstoquevalorunitario: TBCDField
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
      Precision = 15
    end
    object qryEstoquevalortotal: TBCDField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      Precision = 15
      Size = 2
    end
    object qryEstoquesituacao: TWideStringField
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 1
    end
    object qryEstoquevalordoc: TBCDField
      FieldName = 'valordoc'
      Origin = 'valordoc'
      Precision = 15
      Size = 2
    end
  end
  object dsEstoque: TDataSource
    DataSet = qryEstoque
    Left = 325
    Top = 13
  end
  object qryCliente: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from pessoa p'
      'where p.tipopessoa = 0 ')
    Left = 263
    Top = 180
    object qryClienteid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryClientesituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object qryClientetipopessoa: TIntegerField
      FieldName = 'tipopessoa'
      Origin = 'tipopessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryClientefisicojuridico: TIntegerField
      FieldName = 'fisicojuridico'
      Origin = 'fisicojuridico'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryClientecnpjcpf: TWideStringField
      FieldName = 'cnpjcpf'
      Origin = 'cnpjcpf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8190
    end
    object qryClientenomerazao: TWideStringField
      FieldName = 'nomerazao'
      Origin = 'nomerazao'
      Size = 255
    end
    object qryClienteierg: TWideStringField
      FieldName = 'ierg'
      Origin = 'ierg'
      Size = 255
    end
    object qryClientenomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 255
    end
    object qryClienteemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 255
    end
    object qryClientecontato: TWideStringField
      FieldName = 'contato'
      Origin = 'contato'
      Size = 255
    end
    object qryClientetelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object qryClientecep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 11
    end
    object qryClienteendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 255
    end
    object qryClientebairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 255
    end
    object qryClientecomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 255
    end
    object qryClientecidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 255
    end
    object qryClientetelefone2: TWideStringField
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 15
    end
    object qryClienteuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object qryClientenumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 255
    end
    object qryClientedatanasc: TDateField
      FieldName = 'datanasc'
      Origin = 'datanasc'
    end
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 295
    Top = 180
  end
  object qryFornecedor: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from pessoa p'
      'where p.tipopessoa = 1')
    Left = 399
    Top = 236
    object LargeintField1: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object IntegerField1: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object IntegerField2: TIntegerField
      FieldName = 'tipopessoa'
      Origin = 'tipopessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField3: TIntegerField
      FieldName = 'fisicojuridico'
      Origin = 'fisicojuridico'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object WideStringField1: TWideStringField
      FieldName = 'cnpjcpf'
      Origin = 'cnpjcpf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8190
    end
    object WideStringField2: TWideStringField
      FieldName = 'nomerazao'
      Origin = 'nomerazao'
      Size = 255
    end
    object WideStringField3: TWideStringField
      FieldName = 'ierg'
      Origin = 'ierg'
      Size = 255
    end
    object WideStringField4: TWideStringField
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 255
    end
    object WideStringField5: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 255
    end
    object WideStringField6: TWideStringField
      FieldName = 'contato'
      Origin = 'contato'
      Size = 255
    end
    object WideStringField7: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object WideStringField8: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 11
    end
    object WideStringField9: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 255
    end
    object WideStringField10: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 255
    end
    object WideStringField11: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 255
    end
    object WideStringField12: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 255
    end
    object WideStringField13: TWideStringField
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 15
    end
    object WideStringField14: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object WideStringField15: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 255
    end
    object DateField1: TDateField
      FieldName = 'datanasc'
      Origin = 'datanasc'
    end
  end
  object dsFornecedor: TDataSource
    DataSet = qryFornecedor
    Left = 431
    Top = 236
  end
  object qryProduto: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from produto p'
      'where p.situacao = 0')
    Left = 167
    Top = 292
    object qryProdutoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryProdutonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object qryProdutosituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object qryProdutopresobruto: TBCDField
      FieldName = 'presobruto'
      Origin = 'presobruto'
      Precision = 15
    end
    object qryProdutopesoliquedo: TBCDField
      FieldName = 'pesoliquedo'
      Origin = 'pesoliquedo'
      Precision = 15
    end
    object qryProdutodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 1000
    end
    object qryProdutovalorunitario: TBCDField
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
      Precision = 15
    end
    object qryProdutoimagem: TBlobField
      FieldName = 'imagem'
      Origin = 'imagem'
    end
  end
  object dsProduto: TDataSource
    DataSet = qryProduto
    Left = 199
    Top = 292
  end
end
