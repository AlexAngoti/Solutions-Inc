inherited frmRelatorioVendas: TfrmRelatorioVendas
  Caption = 'frmRelatorioVendas'
  OnCreate = FormCreate
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
      inherited btnExportar: TSpeedButton
        OnClick = btnExportarClick
      end
      inherited btnImprimir: TSpeedButton
        OnClick = btnImprimirClick
      end
      inherited SWHEdit1: TSWHEdit
        Top = 60
        ExplicitTop = 60
      end
      inherited SWHComboBox1: TSWHComboBox
        ItemIndex = 0
        Text = 'ID'
        Items.Strings = (
          'ID')
      end
      inherited SWHDBLookupComboBox1: TSWHDBLookupComboBox
        Left = 293
        KeyField = 'id'
        ListField = 'nomerazao'
        ListSource = dsFornecedor
        ExplicitLeft = 293
      end
    end
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'id'
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          Width = 55
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'nomerazao'
          Width = 348
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Data da Venda'
          DataBinding.FieldName = 'datavenda'
          Width = 125
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valortotal'
          Width = 104
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Forma de Pagamento'
          DataBinding.FieldName = 'nome'
          Width = 180
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView [1]
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsItens
        DataController.DetailKeyFieldNames = 'idvenda'
        DataController.MasterKeyFieldNames = 'id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView2Column1: TcxGridDBColumn
          Caption = 'ID do Produto'
          DataBinding.FieldName = 'produto'
          Width = 91
        end
        object cxGrid1DBTableView2Column2: TcxGridDBColumn
          Caption = 'Nome do Produto'
          DataBinding.FieldName = 'nome'
          Width = 560
        end
        object cxGrid1DBTableView2Column3: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'quantidade'
          Width = 71
        end
        object cxGrid1DBTableView2Column4: TcxGridDBColumn
          Caption = 'Valor Unit'#225'rio'
          DataBinding.FieldName = 'valorunitario'
          Width = 80
        end
        object cxGrid1DBTableView2Column5: TcxGridDBColumn
          Caption = 'Total do Produto'
          DataBinding.FieldName = 'totalitem'
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
      'select v.*, p.nomerazao, f.nome '
      '  from vendas v'
      ' inner join pessoa p ON v.cliente = p.id '
      ' inner join formapgto f on v.formapgto = f.id'
      ' where v.situacao = 0'
      '   and v.datavenda between :dataini and :datafin')
    Left = 308
    ParamData = <
      item
        Position = 1
        Name = 'dataini'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'datafin'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryRelPadraoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryRelPadraodatavenda: TDateField
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object qryRelPadraocliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object qryRelPadraoformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object qryRelPadraovalortotal: TBCDField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      Precision = 15
      Size = 2
    end
    object qryRelPadraousuario: TIntegerField
      FieldName = 'usuario'
      Origin = 'usuario'
    end
    object qryRelPadraoobervacao: TWideStringField
      FieldName = 'obervacao'
      Origin = 'obervacao'
      Size = 255
    end
    object qryRelPadraosituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object qryRelPadraonomerazao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomerazao'
      Origin = 'nomerazao'
      Size = 255
    end
    object qryRelPadraonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
  end
  inherited cdsRelPadrao: TClientDataSet
    Params = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'datafin'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspRelData'
    object cdsRelPadraoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object cdsRelPadraodatavenda: TDateField
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object cdsRelPadraocliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object cdsRelPadraoformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object cdsRelPadraovalortotal: TBCDField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsRelPadraousuario: TIntegerField
      FieldName = 'usuario'
      Origin = 'usuario'
    end
    object cdsRelPadraoobervacao: TWideStringField
      FieldName = 'obervacao'
      Origin = 'obervacao'
      Size = 255
    end
    object cdsRelPadraosituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object cdsRelPadraonomerazao: TWideStringField
      FieldName = 'nomerazao'
      Origin = 'nomerazao'
      Size = 255
    end
    object cdsRelPadraonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
  end
  inherited dsRelPadrao: TDataSource
    DataSet = cdsRelPadrao
  end
  inherited dspRelData: TDataSetProvider
    DataSet = qryRelPadrao
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 565
    Top = 13
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens'
    Left = 533
    Top = 13
    object cdsItensid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsItensidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object cdsItensproduto: TIntegerField
      FieldName = 'produto'
      Origin = 'produto'
    end
    object cdsItensquantidade: TBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 15
      Size = 2
    end
    object cdsItensvalorunitario: TBCDField
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object cdsItenstotalitem: TBCDField
      FieldName = 'totalitem'
      Origin = 'totalitem'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsItensnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
  end
  object dspItens: TDataSetProvider
    DataSet = qryItens
    Left = 501
    Top = 13
  end
  object qryItens: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select v.*, p.nome'
      '  from itensvenda v'
      ' inner join produto p ON v.produto = p.id ')
    Left = 468
    Top = 13
  end
  object ppReport1: TppReport
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
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        Brush.Style = bsClear
        mmHeight = 5821
        mmLeft = 160955
        mmTop = 7144
        mmWidth = 36957
        BandType = 0
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        Brush.Style = bsClear
        mmHeight = 5821
        mmLeft = 127107
        mmTop = 7144
        mmWidth = 33867
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        Brush.Style = bsClear
        mmHeight = 5821
        mmLeft = 96349
        mmTop = 7144
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        Brush.Style = bsClear
        mmHeight = 5821
        mmLeft = 8476
        mmTop = 7144
        mmWidth = 87887
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        Brush.Style = bsClear
        mmHeight = 5821
        mmLeft = -5
        mmTop = 7144
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de Compras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Rounded MT Bold'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4762
        mmLeft = 69586
        mmTop = 794
        mmWidth = 51064
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 524
        mmTop = 7673
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 9005
        mmTop = 7673
        mmWidth = 86828
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data da Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 96878
        mmTop = 7673
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor Totall'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 127637
        mmTop = 7673
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Forma de Pgamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 161484
        mmTop = 7673
        mmWidth = 35898
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'nomeproduto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 8986
        mmTop = 529
        mmWidth = 85303
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'quantidade'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 95240
        mmTop = 529
        mmWidth = 32193
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'valorunitario'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 128578
        mmTop = 529
        mmWidth = 29008
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'totalitem'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 158740
        mmTop = 529
        mmWidth = 30248
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'id'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'id'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 529
          mmTop = 529
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'nomerazao'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 8996
          mmTop = 529
          mmWidth = 86828
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'valortotal'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 127529
          mmTop = 529
          mmWidth = 32808
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          Border.mmPadding = 0
          DataField = 'nome'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 161396
          mmTop = 529
          mmWidth = 35898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppShape4: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape4'
          Brush.Style = bsClear
          mmHeight = 4181
          mmLeft = 158211
          mmTop = 6884
          mmWidth = 31307
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppShape3: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape3'
          Brush.Style = bsClear
          mmHeight = 4181
          mmLeft = 128048
          mmTop = 6884
          mmWidth = 30067
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppShape2: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape2'
          Brush.Style = bsClear
          mmHeight = 4181
          mmLeft = 94711
          mmTop = 6884
          mmWidth = 33252
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape1'
          Brush.Style = bsClear
          mmHeight = 4181
          mmLeft = 8457
          mmTop = 6884
          mmWidth = 86362
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 8986
          mmTop = 7058
          mmWidth = 85303
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 95240
          mmTop = 7058
          mmWidth = 32193
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Valor Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 128578
          mmTop = 7058
          mmWidth = 29008
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Total do Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 158740
          mmTop = 7058
          mmWidth = 30248
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'datavenda'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 96838
          mmTop = 529
          mmWidth = 29633
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
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
    DataSource = dsRel
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 506
    Top = 83
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'datavenda'
      FieldName = 'datavenda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'cliente'
      FieldName = 'cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'formapgto'
      FieldName = 'formapgto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'valortotal'
      FieldName = 'valortotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'usuario'
      FieldName = 'usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'obervacao'
      FieldName = 'obervacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'situacao'
      FieldName = 'situacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'nomerazao'
      FieldName = 'nomerazao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'nome'
      FieldName = 'nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'id_1'
      FieldName = 'id_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'idvenda'
      FieldName = 'idvenda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'produto'
      FieldName = 'produto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'quantidade'
      FieldName = 'quantidade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'valorunitario'
      FieldName = 'valorunitario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'totalitem'
      FieldName = 'totalitem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'nomeproduto'
      FieldName = 'nomeproduto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object dsRel: TDataSource
    DataSet = qryRel
    Left = 445
    Top = 269
  end
  object qryRel: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select v.*, p.nomerazao, f.nome,'
      '       i.*, p2.nome as NomeProduto'
      '  from vendas v'
      ' inner join itensvenda i on v.id = i.idvenda'
      ' inner join produto p2 on i.produto = p2.id '
      ' inner join pessoa p ON v.cliente = p.id '
      ' inner join formapgto f on v.formapgto = f.id'
      ' where v.situacao = 0'
      ' and v.datavenda between :dataini and :datafin')
    Left = 412
    Top = 269
    ParamData = <
      item
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    object qryRelid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryReldatavenda: TDateField
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object qryRelcliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object qryRelformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object qryRelvalortotal: TBCDField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      Precision = 15
      Size = 2
    end
    object qryRelusuario: TIntegerField
      FieldName = 'usuario'
      Origin = 'usuario'
    end
    object qryRelobervacao: TWideStringField
      FieldName = 'obervacao'
      Origin = 'obervacao'
      Size = 255
    end
    object qryRelsituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object qryRelnomerazao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomerazao'
      Origin = 'nomerazao'
      Size = 255
    end
    object qryRelnome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object qryRelid_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
    end
    object qryRelidvenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object qryRelproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
    end
    object qryRelquantidade: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 15
      Size = 2
    end
    object qryRelvalorunitario: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
      Precision = 15
    end
    object qryReltotalitem: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'totalitem'
      Origin = 'totalitem'
      Precision = 15
      Size = 2
    end
    object qryRelnomeproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeproduto'
      Origin = 'nomeproduto'
      Size = 255
    end
  end
  object qryFornecedor: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from ('
      '  select p.id, p.nomerazao'
      '    from pessoa p'
      '   where p.situacao = 0'
      '     and p.tipopessoa = 0'
      '    union all'
      '    select '#39'0'#39' as id, '#39'Todos...'#39' as nomerazao'
      ') subquery'
      'order by id;')
    Left = 386
    Top = 75
    object qryFornecedorid: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object qryFornecedornomerazao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomerazao'
      Origin = 'nomerazao'
      Size = 8190
    end
  end
  object dsFornecedor: TDataSource
    DataSet = qryFornecedor
    Left = 418
    Top = 75
  end
end
