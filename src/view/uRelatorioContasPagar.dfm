inherited frmRelatorioContasPagar: TfrmRelatorioContasPagar
  Caption = 'frmRelatorioContasPagar'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    inherited lblNomeLogoTop: TLabel
      Width = 259
      Caption = 'SOLUTIONS INC / Relat'#243'rio Contas a Pagar'
      ExplicitWidth = 259
    end
  end
  inherited pnlCentral: TPanel
    inherited Panel1: TPanel
      inherited Label3: TLabel
        Top = 63
        ExplicitTop = 63
      end
      inherited Label4: TLabel
        Left = 236
        Width = 62
        Caption = 'Fornecedor:'
        ExplicitLeft = 236
        ExplicitWidth = 62
      end
      inherited btnExportar: TSpeedButton
        OnClick = btnExportarClick
      end
      inherited btnImprimir: TSpeedButton
        OnClick = btnImprimirClick
      end
      inherited SWHEdit1: TSWHEdit
        Top = 60
        Width = 446
        ExplicitTop = 60
        ExplicitWidth = 446
      end
      inherited SWHComboBox1: TSWHComboBox
        Width = 196
        Text = ''
        Items.Strings = (
          'ID'
          'Num. Documento')
        ExplicitWidth = 196
      end
      inherited SWHDBLookupComboBox1: TSWHDBLookupComboBox
        Left = 310
        BevelInner = bvNone
        BevelKind = bkSoft
        Font.Name = 'Segoe UI'
        KeyField = 'id'
        ListField = 'nomerazao'
        ListSource = dsFornecedor
        NullValueKey = 48
        ParentFont = False
        ExplicitLeft = 310
      end
    end
    inherited cxGrid1: TcxGrid
      ExplicitTop = 89
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          Width = 50
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Num. Documento'
          DataBinding.FieldName = 'numerodoc'
          Width = 104
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Fornecedor'
          DataBinding.FieldName = 'nomerazao'
          Width = 231
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Data de Emiss'#227'o'
          DataBinding.FieldName = 'dataemissao'
          Width = 101
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Data de Vencimento'
          DataBinding.FieldName = 'datavencimento'
          Width = 112
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = 'Data da Baixa'
          DataBinding.FieldName = 'databaixa'
          Width = 92
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          Width = 70
        end
        object cxGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = 'Forma de Pagamento'
          DataBinding.FieldName = 'abrevia'#231#227'o'
          Width = 109
        end
      end
    end
  end
  inherited qryRelPadrao: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select c.*,'
      '       f.abrevia'#231#227'o,'
      '       p.nomerazao'
      '  from contaspagar c '
      ' inner join formapgto f on c.formapgto = f.id'
      ' inner join pessoa p on c.idfornecedor = p.id '
      '   and p.tipopessoa = 1 '
      ' where c.dataemissao between :dataini and :datafin'
      '   and (c.idfornecedor = :idfornecedor) or (:idfornecedor = 0)'
      '   and c.dataemissao is not null')
    ParamData = <
      item
        Name = 'DATAINI'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIN'
        ParamType = ptInput
      end
      item
        Name = 'IDFORNECEDOR'
        ParamType = ptInput
      end>
  end
  inherited cdsRelPadrao: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'dataini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datafin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDFORNECEDOR'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspRelData'
    object cdsRelPadraoid: TLargeintField
      FieldName = 'id'
    end
    object cdsRelPadraodataemissao: TDateField
      FieldName = 'dataemissao'
    end
    object cdsRelPadraodatavencimento: TDateField
      FieldName = 'datavencimento'
    end
    object cdsRelPadraovalor: TBCDField
      FieldName = 'valor'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsRelPadraoformapgto: TIntegerField
      FieldName = 'formapgto'
    end
    object cdsRelPadraoidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsRelPadraodatabaixa: TDateField
      FieldName = 'databaixa'
    end
    object cdsRelPadraodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 255
    end
    object cdsRelPadraonumerodoc: TWideStringField
      FieldName = 'numerodoc'
      Size = 60
    end
    object cdsRelPadraoobservaobaixa: TWideStringField
      FieldName = 'observaobaixa'
      Size = 255
    end
    object cdsRelPadraonumeroorigem: TIntegerField
      FieldName = 'numeroorigem'
    end
    object cdsRelPadraoabreviação: TWideStringField
      FieldName = 'abrevia'#231#227'o'
      Size = 3
    end
    object cdsRelPadraonomerazao: TWideStringField
      FieldName = 'nomerazao'
      Size = 255
    end
  end
  inherited dsRelPadrao: TDataSource
    DataSet = cdsRelPadrao
  end
  inherited dspRelData: TDataSetProvider
    DataSet = qryRelPadrao
  end
  object qryFornecedor: TFDQuery
    Active = True
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from ('
      '  select p.id, p.nomerazao'
      '    from pessoa p'
      '   where p.situacao = 0'
      '     and p.tipopessoa = 1'
      '    union all'
      '    select '#39'0'#39' as id, '#39'Todos...'#39' as nomerazao'
      ') subquery'
      'order by id;')
    Left = 546
    Top = 11
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
    Left = 578
    Top = 11
  end
  object ppReport: TppReport
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
    Left = 645
    Top = 13
    Version = '22.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio Contas a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 76026
        mmTop = 529
        mmWidth = 50271
        BandType = 0
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDbReport'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10545
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDbReport
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
          DataPipelineName = 'ppDbReport'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppShape7: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape7'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 79233
              mmTop = 1323
              mmWidth = 81944
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape1'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 41
              mmTop = 1323
              mmWidth = 15544
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape6: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape6'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 60028
              mmTop = 1323
              mmWidth = 19254
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape5: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape5'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 160867
              mmTop = 1323
              mmWidth = 18862
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape4: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape4'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 179363
              mmTop = 1323
              mmWidth = 17894
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape3: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape3'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 35906
              mmTop = 1323
              mmWidth = 24223
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape2: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape2'
              Brush.Style = bsClear
              mmHeight = 5821
              mmLeft = 15603
              mmTop = 1323
              mmWidth = 20344
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label3'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Dt. Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 16132
              mmTop = 1852
              mmWidth = 19285
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label4'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Dt. Vencimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 36435
              mmTop = 1852
              mmWidth = 23164
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
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 179887
              mmTop = 1852
              mmWidth = 16835
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label6'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Forma Pgto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 161200
              mmTop = 1852
              mmWidth = 17803
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label7'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Dt. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 60558
              mmTop = 1852
              mmWidth = 18195
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel2: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label2'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Num. Doc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 570
              mmTop = 1852
              mmWidth = 14485
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label8'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Fornecedor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 79762
              mmTop = 1852
              mmWidth = 80885
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'dataemissao'
              DataPipeline = ppDbReport
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDbReport'
              mmHeight = 3704
              mmLeft = 16132
              mmTop = 529
              mmWidth = 19285
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'datavencimento'
              DataPipeline = ppDbReport
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDbReport'
              mmHeight = 3704
              mmLeft = 36435
              mmTop = 529
              mmWidth = 22674
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'valor'
              DataPipeline = ppDbReport
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDbReport'
              mmHeight = 3704
              mmLeft = 179887
              mmTop = 529
              mmWidth = 16835
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'abrevia'#231#227'o'
              DataPipeline = ppDbReport
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDbReport'
              mmHeight = 3704
              mmLeft = 161200
              mmTop = 529
              mmWidth = 17803
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'databaixa'
              DataPipeline = ppDbReport
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDbReport'
              mmHeight = 3704
              mmLeft = 60558
              mmTop = 529
              mmWidth = 18195
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'numerodoc'
              DataPipeline = ppDbReport
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDbReport'
              mmHeight = 3704
              mmLeft = 570
              mmTop = 529
              mmWidth = 14485
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'nomerazao'
              DataPipeline = ppDbReport
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDbReport'
              mmHeight = 3704
              mmLeft = 79762
              mmTop = 529
              mmWidth = 80885
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'valor'
              DataPipeline = ppDbReport
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDbReport'
              mmHeight = 3704
              mmLeft = 175288
              mmTop = 529
              mmWidth = 22190
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label9'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Valor Total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 156589
              mmTop = 592
              mmWidth = 16835
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
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
  object ppDbReport: TppDBPipeline
    DataSource = dsRelPadrao
    OpenDataSource = False
    UserName = 'DbReport'
    Left = 685
    Top = 13
    object ppDbReportppField1: TppField
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField2: TppField
      FieldAlias = 'dataemissao'
      FieldName = 'dataemissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField3: TppField
      FieldAlias = 'datavencimento'
      FieldName = 'datavencimento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField4: TppField
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField5: TppField
      FieldAlias = 'formapgto'
      FieldName = 'formapgto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField6: TppField
      FieldAlias = 'idfornecedor'
      FieldName = 'idfornecedor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField7: TppField
      FieldAlias = 'databaixa'
      FieldName = 'databaixa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField8: TppField
      FieldAlias = 'descricao'
      FieldName = 'descricao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField9: TppField
      FieldAlias = 'numerodoc'
      FieldName = 'numerodoc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField10: TppField
      FieldAlias = 'observaobaixa'
      FieldName = 'observaobaixa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField11: TppField
      FieldAlias = 'numeroorigem'
      FieldName = 'numeroorigem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField12: TppField
      FieldAlias = 'abrevia'#231#227'o'
      FieldName = 'abrevia'#231#227'o'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDbReportppField13: TppField
      FieldAlias = 'nomerazao'
      FieldName = 'nomerazao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
end
