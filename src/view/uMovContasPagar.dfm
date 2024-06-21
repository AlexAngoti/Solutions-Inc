object frmMovPagar: TfrmMovPagar
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
    object spbPesquisa: TSpeedButton
      Left = 650
      Top = 197
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
      TabOrder = 5
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
      TabOrder = 1
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
      TabOrder = 6
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
      TabOrder = 3
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
      DataField = 'idfornecedor'
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
      TabOrder = 7
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
      TabOrder = 4
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
      TabOrder = 2
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
    DataSet = frmContasPagar.cdsContasPagar
    Left = 361
    Top = 9
  end
  object qryCliente: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from pessoa p '
      'where p.situacao = 0'
      '  and p.tipopessoa = 1'
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
