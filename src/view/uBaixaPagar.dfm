object frmBaixaPagar: TfrmBaixaPagar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmBaixaPagar'
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
      Left = 374
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
      Width = 471
      Height = 89
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'observaobaixa'
      DataSource = dsMovContasReceber
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
    object imgLogoTop: TImage
      Left = 0
      Top = 0
      Width = 57
      Height = 57
      Align = alLeft
      Picture.Data = {
        0A544A504547496D61676518020000FFD8FFE000104A46494600010100000000
        000000FFDB004300100B0C0E0C0A100E0D0E1211101318281A18161618312325
        1D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71
        797064785C656763FFC0000B080040004001011100FFC4001B00000203010101
        000000000000000000000001030506040207FFC4002D10000104010204040505
        0000000000000001000203041105213141517112222361133242B1D106528191
        A1FFDA0008010100003F00FA0210921342108505AB70D488C93BC3472EA7B059
        9D475C9EDE638730C3EC7CCEEE52D3F5D9A900C9CFC580753BB7B15A5A37AB6A
        10096ACA1EDE7D4771C974A1092C86BD019B5399ED91CD7B70064E4631C30A1D
        2F4CB37DEE0E68898C3873C9C8FE028356D12DD3799263F1A007CAE60D8771C9
        7AFD3AE7375AAE1A480E24100F1182B749A1259DD629CCCB3258F0E6271CE472
        DB9AE0865920903E2796B8730AF296B11CC047680638EDE2FA4FE136E895E3D4
        62BB5BD3F0925CC1F29C83C3A2B44D09280DA6099D149B63607915C377468E5C
        C958863F8F87E93F8543641A8F2C9DA58EFDA789ECBBF43B37059646F21B03B6
        11BB723DFD96913424AAAE022D3F238A20B4F876F99BD0AAED42F4B2CE05A89A
        C603E9B86E3FBEAA6D34175E8881900E4E3B2D026842F1244C95BE178C8FB2AE
        9E9BE2CB99E76FFA1286899DBEA8C46788238AEFAB561A9108E060637EEA6421
        084909A10BFFD9}
      ExplicitLeft = 1
      ExplicitTop = 2
    end
    object lblNomeLogoTop: TLabel
      Left = 63
      Top = 19
      Width = 204
      Height = 17
      Caption = 'SOLUTIONS INC / Baixa de Titulos'
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
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = btnFecharClick
      ExplicitLeft = 904
      ExplicitTop = 0
      ExplicitHeight = 57
    end
  end
  object dsMovContasReceber: TDataSource
    DataSet = frmContasPagar.cdsContasPagar
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
