object frmParcelas: TfrmParcelas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmParcelas'
  ClientHeight = 487
  ClientWidth = 312
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSubTop: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 302
    Height = 49
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 0
    object btnFechar: TSpeedButton
      AlignWithMargins = True
      Left = 242
      Top = 5
      Width = 55
      Height = 39
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
      OnClick = btnFecharClick
      ExplicitLeft = 904
      ExplicitTop = 0
      ExplicitHeight = 57
    end
    object imgLogoTop: TImage
      Left = 0
      Top = 0
      Width = 57
      Height = 49
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
    end
    object Label2: TLabel
      Left = 55
      Top = 17
      Width = 126
      Height = 15
      Caption = 'Pagamento de Compra'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 59
    Width = 302
    Height = 62
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object lblPesquisar: TLabel
      Left = 14
      Top = 3
      Width = 101
      Height = 15
      Caption = 'Forma Pagamento'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 14
      Top = 19
      Width = 45
      Height = 15
      Caption = 'Parcelas'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SWHDBComboBox1: TSWHDBComboBox
      Left = 14
      Top = 23
      Width = 275
      Height = 21
      TabOrder = 0
      Visible = False
      MudarColor = 14087422
    end
    object SWHEdit1: TSWHEdit
      Left = 14
      Top = 37
      Width = 83
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 1
      MudarColor = 14087422
      CampoObrigatorio = False
    end
    object pnlAdicionar: TPanel
      Left = 152
      Top = 26
      Width = 137
      Height = 32
      BevelOuter = bvNone
      Color = 16740690
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object SpeedButton5: TSpeedButton
        Left = 0
        Top = 0
        Width = 137
        Height = 32
        Align = alClient
        Caption = 'Calcular Parcela'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001010101091919191BFBFBFBF787878780404040400000000000000000000
          000000000000000000000000000000000000121212126B6B6B6B959595959999
          999999999999999999990D0D0D0D5E5E5E5E3232323200000000000000000000
          0000ACACACACCCCCCCCC74747474E5E5E5E57777777700000000000000000000
          000000000000000000000000000030303030E7E7E7E7FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF262626267F7F7F7FF0F0F0F036363636000000000000
          0000F2F2F2F2414141410000000075757575BFBFBFBF00000000000000000000
          0000000000000000000000000000D0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBCBCBCBC080808088C8C8C8CF0F0F0F0363636360000
          0000C5C5C5C5A8A8A8A840404040CCCCCCCC9191919100000000000000000000
          0000000000000000000019191919FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333000000008C8C8C8CF0F0F0F03636
          363627272727C5C5C5C5F2F2F2F2ACACACAC1010101000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF989898980D0D0D0D00000000000000008C8C8C8CF0F0
          F0F0363636360000000000000000000000000000000000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF888888881010101091919191BFBFBFBF78787878040404048C8C
          8C8CF0F0F0F03636363600000000000000000000000000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF6F6F6F60C0C0C0CACACACACCCCCCCCC74747474E5E5E5E5777777770000
          00008C8C8C8CF0F0F0F036363636000000000000000000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD6D6D6D600000000F2F2F2F2414141410000000075757575BFBFBFBF0202
          0202080808088C8C8C8CF0F0F0F0323232320000000000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0F0F0F003030303C5C5C5C5A8A8A8A840404040CCCCCCCC919191913030
          3030B8B8B8B8080808087F7F7F7F5E5E5E5E0000000000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF6464646427272727C5C5C5C5F2F2F2F2ACACACAC101010109D9D
          9D9DFFFFFFFF3333333300000000000000000000000000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F8F8F86464646403030303000000000C0C0C0C8D8D8D8DFFFF
          FFFFFFFFFFFF3333333300000000000000000000000000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333384848484FBFBFBFBFFFFFFFFFFFF
          FFFFFFFFFFFF3333333300000000000000000000000000000000000000000000
          0000000000000000000033333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333399999999FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF3333333300000000000000000000000000000000000000000000
          000000000000000000002F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333399999999FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF2F2F2F2F00000000000000000000000000000000000000000000
          0000000000000000000004040404A1A1A1A1CCCCCCCCF5F5F5F5E0E0E0E0CCCC
          CCCCCCCCCCCCCCCCCCCCFFFFFFFF333333337B7B7B7BE0E0E0E0F5F5F5F5CCCC
          CCCC9F9F9F9F0404040400000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000CCCCCCCC666666660000
          00000000000000000000FFFFFFFF333333330000000066666666CCCCCCCC0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C8C8C8C8686868680000
          00000000000004040404FFFFFFFF30303030000000006A6A6A6AC8C8C8C80000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000009B9B9B9BADADADAD0000
          0000000000004A4A4A4AF7F7F7F70F0F0F0F01010101AFAFAFAF9B9B9B9B0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001F1F1F1FE9E9E9E9C9C9
          C9C9A8A8A8A8F6F6F6F6F8F8F8F8A8A8A8A8C7C7C7C7EAEAEAEA252525250000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000161616167575
          75758B8B8B8B42424242414141418C8C8C8C7B7B7B7B1B1B1B1B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ExplicitLeft = 112
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 5
    Top = 126
    Width = 302
    Height = 307
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Parcelas'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Data Vencimento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 129
        Visible = True
      end>
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 438
    Width = 302
    Height = 44
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 0
    object lbTotalPedido: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 5
      Width = 37
      Height = 34
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 28
    end
    object Panel3: TPanel
      Left = 168
      Top = 7
      Width = 121
      Height = 32
      BevelOuter = bvNone
      Color = 16740690
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 32
        Align = alClient
        Caption = 'Finalizar Compra'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202023A3A
          3A3A717171718E8E8E8E8E8E8E8E717171713939393902020202000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000060606066E6E6E6EE6E6E6E6FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6E66C6C6C6C0505
          0505000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E1ECECECECEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
          CCCC1C1C1C1C0000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E1EE6E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE5E5E5E51D1D1D1D00000000000000000000000000000000000000000000
          00000000000006060606CFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCCCCCCCC05050505000000000000000000000000000000000000
          0000000000006F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF6B6B6B6B000000000000000000000000000000000000
          000002020202E7E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE5E5E5E5020202020000000000000000000000000000
          00003C3C3C3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5
          E5E52A2A2A2A74747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A3A0000000000000000000000000000
          000073737373FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E52626
          26263F3F3F3F1010101072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF727272720000000000000000000000000000
          00008D8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1262626264949
          4949F8F8F8F8CBCBCBCB1010101072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C8C0000000000000000000000000000
          00008D8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2F283838383F8F8
          F8F8FFFFFFFFFFFFFFFFCACACACA1010101072727272FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C8C0000000000000000000000000000
          000074747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACACA1010101072727272FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF727272720000000000000000000000000000
          00003C3C3C3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACACA1B1B1B1BE4E4E4E4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A3A0000000000000000000000000000
          000003030303E8E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE6E6E6E6020202020000000000000000000000000000
          00000000000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF6E6E6E6E000000000000000000000000000000000000
          00000000000007070707D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCECECECE06060606000000000000000000000000000000000000
          000000000000000000001F1F1F1FE7E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE6E6E6E61E1E1E1E00000000000000000000000000000000000000000000
          00000000000000000000000000001C1C1C1CCCCCCCCCFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1
          D1D1202020200000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000707070771717171E8E8E8E8FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E76F6F6F6F0606
          0606000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030303033C3C
          3C3C737373738E8E8E8E8E8E8E8E727272723C3C3C3C02020202000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ExplicitTop = -4
        ExplicitWidth = 137
      end
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 3000000
    PrinterSetup.mmPaperWidth = 89000
    PrinterSetup.PaperSize = 256
    Template.FileName = 
      'C:\Users\alexa\Documents\Projetos Pessoal\SolutionsInc\Report\RV' +
      'enda47.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 160
    Top = 13
    Version = '22.0'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 51329
      mmPrintPosition = 0
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'MOV_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 33602
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'MOV_CLIENTE'
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3378
        mmLeft = 19315
        mmTop = 10319
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText27'
        Border.mmPadding = 0
        DataField = 'MOV_NUMERO'
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 28705
        mmTop = 27252
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 10319
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 33602
        mmWidth = 8819
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText101'
        ReprintOnOverFlow = True
        Border.mmPadding = 0
        DataField = 'CLI_NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3378
        mmLeft = 30163
        mmTop = 10319
        mmWidth = 46302
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'ENDERECO_NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 12435
        mmTop = 16140
        mmWidth = 62706
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'CLI_FONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 12435
        mmTop = 20902
        mmWidth = 62706
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 16140
        mmWidth = 8819
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 20902
        mmWidth = 8819
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'VEN_APELIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3378
        mmLeft = 28840
        mmTop = 44979
        mmWidth = 46302
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'MOV_VENDEDOR'
        DisplayFormat = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3378
        mmLeft = 21431
        mmTop = 44979
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 44979
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 3305
        mmTop = 27252
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtTime
        DisplayFormat = 'h:nn'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 56092
        mmTop = 33602
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Label3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 529
        mmWidth = 8890
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label56'
        Border.mmPadding = 0
        Caption = 
          '----------------------------------------------------------------' +
          '----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 5292
        mmWidth = 119945
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label57'
        Border.mmPadding = 0
        Caption = 
          '----------------------------------------------------------------' +
          '----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 39158
        mmWidth = 119945
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand8: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'MOVI_QTDE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 65881
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'MOVI_VALOR'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 5292
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText28'
        Border.mmPadding = 0
        DataField = 'ITE_DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 5292
        mmWidth = 47096
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText66'
        Border.mmPadding = 0
        DataField = 'MOVI_CONTROLE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand3: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand7: TppSummaryBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label134'
        Border.mmPadding = 0
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 5182
        mmWidth = 8996
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label137'
        Border.mmPadding = 0
        Caption = 'Label137'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 50006
        mmTop = 5182
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label60'
        Border.mmPadding = 0
        Caption = 
          '----------------------------------------------------------------' +
          '----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2998
        mmTop = 0
        mmWidth = 119945
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label61'
        Border.mmPadding = 0
        Caption = 
          '----------------------------------------------------------------' +
          '----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 9807
        mmWidth = 119945
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label501'
        Border.mmPadding = 0
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 19332
        mmWidth = 8996
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label68'
        Border.mmPadding = 0
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 24359
        mmWidth = 8996
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label47'
        Border.mmPadding = 0
        Caption = 'SEM VALOR FISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3378
        mmLeft = 23333
        mmTop = 15628
        mmWidth = 27152
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'MOVI_NUMERO'
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Border.mmPadding = 0
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 22490
        mmPrintPosition = 0
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label11'
          Border.mmPadding = 0
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 68263
          mmTop = 4498
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label12'
          Border.mmPadding = 0
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 61913
          mmTop = 9525
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel55: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label13'
          Border.mmPadding = 0
          Caption = 'Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3378
          mmLeft = 2910
          mmTop = 4498
          mmWidth = 10635
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel58: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label58'
          Border.mmPadding = 0
          Caption = 
            '----------------------------------------------------------------' +
            '----'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 2910
          mmTop = 0
          mmWidth = 119856
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel59: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label59'
          Border.mmPadding = 0
          Caption = 
            '----------------------------------------------------------------' +
            '----'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 2910
          mmTop = 15081
          mmWidth = 119856
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
