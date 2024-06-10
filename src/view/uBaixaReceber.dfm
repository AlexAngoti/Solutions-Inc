object frmMovBaixaReceber: TfrmMovBaixaReceber
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmMovBaixaReceber'
  ClientHeight = 379
  ClientWidth = 724
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentral: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 67
    Width = 714
    Height = 307
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 10
    object lblFormaPgto: TLabel
      Left = 103
      Top = 40
      Width = 109
      Height = 13
      Caption = 'Forma de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblDataPagamento: TLabel
      Left = 391
      Top = 40
      Width = 85
      Height = 13
      Caption = 'Data Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 103
      Top = 112
      Width = 105
      Height = 13
      Caption = 'Observa'#231#227'o da Baixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnlSubBot: TPanel
      Left = 1
      Top = 265
      Width = 712
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      ExplicitTop = 267
      ExplicitWidth = 560
      object pnlNovoLanc: TPanel
        AlignWithMargins = True
        Left = 582
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
        TabOrder = 0
        ExplicitLeft = 430
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
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnNovoLancamentoClick
          ExplicitLeft = 3
        end
      end
      object pnlCancelar: TPanel
        AlignWithMargins = True
        Left = 452
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
        TabOrder = 1
        ExplicitLeft = 300
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
          Font.Color = -1
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
    object DBMemo1: TDBMemo
      Left = 103
      Top = 131
      Width = 488
      Height = 89
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'observaobaixa'
      DataSource = frmContasReceber.dsContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cxFormaPgto: TSWHDBLookupComboBox
      Left = 103
      Top = 59
      Width = 203
      Height = 25
      BevelInner = bvNone
      BevelKind = bkSoft
      DataField = 'formapgto'
      DataSource = dsMovContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsFormaPgto
      ParentFont = False
      TabOrder = 2
      MudarColor = 14087422
    end
  end
  object dtpDataPgto: TDateTimePicker
    Left = 379
    Top = 126
    Width = 200
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 714
    Height = 57
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -152
    object imgLogoTop: TImage
      Left = 0
      Top = 0
      Width = 57
      Height = 57
      Align = alLeft
      ExplicitLeft = 1
      ExplicitTop = 2
    end
    object lblNomeLogoTop: TLabel
      Left = 63
      Top = 19
      Width = 246
      Height = 17
      Caption = 'SOLUTIONS INC / Lan'#231'amento de Titulos'
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
      Left = 654
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
      OnClick = btnFecharClick
      ExplicitLeft = 904
      ExplicitTop = 0
      ExplicitHeight = 57
    end
  end
  object dsMovContasReceber: TDataSource
    DataSet = frmContasReceber.cdsContasReceber
    Left = 249
    Top = 9
  end
  object dsFormaPgto: TDataSource
    DataSet = qryFormaPgto
    Left = 533
    Top = 29
  end
  object qryFormaPgto: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from formapgto f '
      'where f.ativo = 0')
    Left = 485
    Top = 29
    object qryFormaPgtoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFormaPgtonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object qryFormaPgtoabreviação: TWideStringField
      FieldName = 'abrevia'#231#227'o'
      Origin = '"abrevia'#231#227'o"'
      Size = 3
    end
    object qryFormaPgtotipopgto: TIntegerField
      FieldName = 'tipopgto'
      Origin = 'tipopgto'
    end
    object qryFormaPgtoativo: TIntegerField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
  end
end
