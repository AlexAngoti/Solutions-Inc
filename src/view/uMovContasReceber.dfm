object frmMovReceber: TfrmMovReceber
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Movimenta'#231#227'o Contas Receber'
  ClientHeight = 379
  ClientWidth = 724
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
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
    ExplicitLeft = 0
    ExplicitTop = 68
    ExplicitWidth = 724
    ExplicitHeight = 312
    object lblDataVencimento: TLabel
      Left = 33
      Top = 42
      Width = 87
      Height = 13
      Caption = 'Data Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblValor: TLabel
      Left = 333
      Top = 42
      Width = 76
      Height = 13
      Caption = 'Valor do Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblFormaPgto: TLabel
      Left = 485
      Top = 42
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
    object lblDescricao: TLabel
      Left = 33
      Top = 112
      Width = 99
      Height = 13
      Caption = 'Descri'#231#227'o do Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblCliente: TLabel
      Left = 33
      Top = 182
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
      Left = 650
      Top = 197
      Width = 27
      Height = 25
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
    object Label1: TLabel
      Left = 183
      Top = 42
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
    object pnlSubBot: TPanel
      Left = 1
      Top = 265
      Width = 712
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      ExplicitTop = 286
      ExplicitWidth = 722
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
        ExplicitLeft = 592
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
        ExplicitLeft = 462
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
          Font.Color = 5855577
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
    object edtDescricao: TSWHDBEdit
      Left = 33
      Top = 131
      Width = 644
      Height = 25
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'descricao'
      DataSource = dsMovContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      MudarColor = 14087422
    end
    object dtpDataVencimento: TDateTimePicker
      Left = 33
      Top = 61
      Width = 128
      Height = 25
      Date = 45208.000000000000000000
      Time = 0.336747800924058500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object pnlSubTop: TPanel
      Left = 1
      Top = 1
      Width = 712
      Height = 43
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      ExplicitLeft = 138
      ExplicitTop = 82
      ExplicitWidth = 722
    end
    object edtValor: TSWHMaskEdit
      Left = 333
      Top = 61
      Width = 136
      Height = 25
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = ''
      TipoMascara = tmValor
      MudarColor = 14087422
      CasasDecimais = Duas
    end
    object cbxCliente: TSWHDBLookupComboBox
      Left = 33
      Top = 197
      Width = 611
      Height = 25
      BevelInner = bvNone
      BevelKind = bkSoft
      DataField = 'idcliente'
      DataSource = dsMovContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id'
      ListField = 'nomerazao'
      ListSource = dsCliente
      ParentFont = False
      TabOrder = 5
      MudarColor = 14087422
    end
    object cxFormaPgto: TSWHDBLookupComboBox
      Left = 481
      Top = 61
      Width = 196
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
      TabOrder = 6
      MudarColor = 14087422
    end
    object edtNumDoc: TSWHDBEdit
      Left = 183
      Top = 61
      Width = 124
      Height = 25
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'numerodoc'
      DataSource = dsMovContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      MudarColor = 14087422
    end
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
    TabOrder = 1
    ExplicitLeft = -211
    ExplicitWidth = 935
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
    Left = 361
    Top = 9
  end
  object qryCliente: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from pessoa p '
      'where p.situacao = 0'
      '  and p.tipopessoa = 0 '
      'order by p.nomerazao asc ')
    Left = 501
    Top = 29
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
    Left = 549
    Top = 29
  end
  object qryFormaPgto: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from formapgto f '
      'where f.ativo = 0')
    Left = 501
    Top = 77
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
  object dsFormaPgto: TDataSource
    DataSet = qryFormaPgto
    Left = 549
    Top = 77
  end
end
