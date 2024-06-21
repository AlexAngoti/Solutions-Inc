inherited frmRelatorioVendas: TfrmRelatorioVendas
  Caption = 'frmRelatorioVendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    inherited lblNomeLogoTop: TLabel
      Width = 229
      Caption = 'SOLUTIONS INC / Relat'#243'rio de Vendas'
      ExplicitWidth = 229
    end
  end
  inherited pnlCentral: TPanel
    inherited Panel1: TPanel
      inherited Label3: TLabel
        Top = 63
        ExplicitTop = 63
      end
      inherited Label4: TLabel
        Caption = 'Cliente:'
      end
      inherited btnImprimir: TSpeedButton
        OnClick = btnImprimirClick
      end
      inherited SWHEdit1: TSWHEdit
        Top = 60
        ExplicitTop = 60
      end
      inherited SWHDBComboBox1: TSWHDBComboBox
        Items.Strings = (
          'Todos...')
      end
    end
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsRelPadrao
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          Width = 55
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'cliente'
          Width = 348
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Data da Venda'
          DataBinding.FieldName = 'datadevenda'
          Width = 125
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          Width = 104
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Forma de Pagamento'
          DataBinding.FieldName = 'formapgto'
          Width = 180
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView [1]
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.DetailKeyFieldNames = 'id'
        DataController.KeyFieldNames = 'id'
        DataController.MasterKeyFieldNames = 'id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView2Column1: TcxGridDBColumn
          Caption = 'ID do Produto'
          DataBinding.FieldName = 'idproduto'
          Width = 91
        end
        object cxGrid1DBTableView2Column2: TcxGridDBColumn
          Caption = 'Nome do Produto'
          DataBinding.FieldName = 'cliente'
          Width = 560
        end
        object cxGrid1DBTableView2Column3: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'datadevenda'
          Width = 71
        end
        object cxGrid1DBTableView2Column4: TcxGridDBColumn
          Caption = 'Valor Unit'#225'rio'
          DataBinding.FieldName = 'valor'
          Width = 80
        end
        object cxGrid1DBTableView2Column5: TcxGridDBColumn
          Caption = 'Total do Produto'
          DataBinding.FieldName = 'formapgto'
          Width = 284
        end
      end
      inherited cxGrid1Level1: TcxGridLevel
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
  end
  inherited qryRelPadrao: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'SELECT '
      '    CAST(1 AS INT) AS id, '
      '    CAST('#39'Alex Angoti Junior'#39' AS VARCHAR(255)) AS cliente, '
      '    CAST('#39'13/06/2024'#39' AS DATE) AS datadevenda, '
      '    CAST('#39'95.00'#39' AS DECIMAL(10,2)) AS valor, '
      '    CAST('#39'boleto'#39' AS VARCHAR(50)) AS formapgto;')
    Left = 308
  end
  inherited cdsRelPadrao: TClientDataSet
    Active = True
    ProviderName = 'dspRelData'
    object cdsRelPadraoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object cdsRelPadraocliente: TWideStringField
      FieldName = 'cliente'
      Origin = 'cliente'
      ReadOnly = True
      Size = 255
    end
    object cdsRelPadraodatadevenda: TDateField
      FieldName = 'datadevenda'
      Origin = 'datadevenda'
      ReadOnly = True
    end
    object cdsRelPadraovalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object cdsRelPadraoformapgto: TWideStringField
      FieldName = 'formapgto'
      Origin = 'formapgto'
      ReadOnly = True
      Size = 50
    end
  end
  inherited dsRelPadrao: TDataSource
    DataSet = cdsRelPadrao
  end
  inherited dspRelData: TDataSetProvider
    DataSet = qryRelPadrao
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 565
    Top = 13
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 533
    Top = 13
    object ClientDataSet1id: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object ClientDataSet1idproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ReadOnly = True
    end
    object ClientDataSet1cliente: TWideStringField
      FieldName = 'cliente'
      Origin = 'cliente'
      ReadOnly = True
      Size = 255
    end
    object ClientDataSet1datadevenda: TIntegerField
      FieldName = 'datadevenda'
      Origin = 'datadevenda'
      ReadOnly = True
    end
    object ClientDataSet1valor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object ClientDataSet1formapgto: TWideStringField
      FieldName = 'formapgto'
      Origin = 'formapgto'
      ReadOnly = True
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 501
    Top = 13
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = dm.FDConnection
    SQL.Strings = (
      'SELECT '
      '    cast(1 as int) as id,'
      '    CAST(4 AS INT) AS idproduto, '
      '    CAST('#39'Teste de Produto'#39' AS VARCHAR(255)) AS cliente, '
      '    CAST('#39'4'#39' AS integer) AS datadevenda, '
      '    CAST('#39'23.75'#39' AS DECIMAL(10,2)) AS valor, '
      '    CAST('#39'95.00'#39' AS VARCHAR(50)) AS formapgto;')
    Left = 468
    Top = 13
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
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
    OutlineSettings.Visible = True
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
    Left = 546
    Top = 83
    Version = '22.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Rounded MT Bold'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4762
        mmLeft = 69608
        mmTop = 794
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 259
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline1
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '22.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppShape4: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape4'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 174096
              mmTop = 518
              mmWidth = 22527
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape5: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape5'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 123561
              mmTop = 518
              mmWidth = 50800
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape3: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape3'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 89694
              mmTop = 518
              mmWidth = 33867
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape2: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape2'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 13758
              mmTop = 518
              mmWidth = 76200
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape1'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = -265
              mmTop = 518
              mmWidth = 13977
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel2: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label2'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'ID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4762
              mmLeft = 265
              mmTop = 1577
              mmWidth = 12918
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label3'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Nome do Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4763
              mmLeft = 14023
              mmTop = 1577
              mmWidth = 76200
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label4'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Data de Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4763
              mmLeft = 90223
              mmTop = 1577
              mmWidth = 32808
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label6'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Forma Pagamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4763
              mmLeft = 124090
              mmTop = 1577
              mmWidth = 50800
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel5: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label5'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4762
              mmLeft = 174625
              mmTop = 1577
              mmWidth = 22527
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'id'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 4763
              mmLeft = 265
              mmTop = 529
              mmWidth = 12918
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'cliente'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 4763
              mmLeft = 14288
              mmTop = 529
              mmWidth = 74875
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'datadevenda'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 4763
              mmLeft = 90488
              mmTop = 529
              mmWidth = 32366
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'formapgto'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 4763
              mmLeft = 124090
              mmTop = 529
              mmWidth = 48590
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'valor'
              DataPipeline = ppDBPipeline1
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 4763
              mmLeft = 174625
              mmTop = 529
              mmWidth = 22527
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label7'
              Border.mmPadding = 0
              Caption = 'Total de Vendas ----->'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5027
              mmLeft = 120649
              mmTop = 265
              mmWidth = 42598
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'valor'
              DataPipeline = ppDBPipeline1
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 4763
              mmLeft = 165628
              mmTop = 265
              mmWidth = 30956
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsRelPadrao
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 506
    Top = 83
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'cliente'
      FieldName = 'cliente'
      FieldLength = 255
      DisplayWidth = 255
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'datadevenda'
      FieldName = 'datadevenda'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 11
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'formapgto'
      FieldName = 'formapgto'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource1
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 466
    Top = 83
  end
end
