inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'frmCadastroCliente'
  ClientHeight = 624
  ClientWidth = 1028
  ExplicitLeft = -2
  ExplicitWidth = 1028
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBarraPesquisa: TPanel
    Width = 1028
    Height = 624
    ExplicitWidth = 1028
    ExplicitHeight = 624
    inherited pnlSubButtonTop: TPanel
      Width = 1028
      ExplicitWidth = 1028
      inherited pnlCancelar: TPanel
        Left = 899
        ExplicitLeft = 899
      end
      inherited pnlConfirmar: TPanel
        Left = 767
        ExplicitLeft = 767
      end
      inherited pnlConsulta: TPanel
        Left = 635
        ExplicitLeft = 635
      end
      inherited pnlExcluir: TPanel
        Left = 492
        ExplicitLeft = 492
      end
      inherited pnlInserir: TPanel
        Left = 564
        ExplicitLeft = 564
      end
    end
    inherited pnlSubBot: TPanel
      Top = 337
      Width = 998
      Height = 287
      ExplicitTop = 337
      ExplicitWidth = 998
      ExplicitHeight = 287
      inherited pnllinha1: TPanel
        Width = 998
        ExplicitWidth = 998
      end
      object pnlEndereco: TPanel
        Left = 0
        Top = 7
        Width = 993
        Height = 282
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object lblNumero: TLabel
          Left = 876
          Top = 67
          Width = 49
          Height = 13
          Caption = 'N'#250'mero *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblComplemento: TLabel
          Left = 500
          Top = 67
          Width = 72
          Height = 13
          Caption = 'Complemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblEndereco: TLabel
          Left = 8
          Top = 67
          Width = 56
          Height = 13
          Caption = 'Endere'#231'o *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblCep: TLabel
          Left = 8
          Top = 10
          Width = 27
          Height = 13
          Caption = 'CEP *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblEstado: TLabel
          Left = 876
          Top = 130
          Width = 58
          Height = 13
          Caption = 'Estado (UF)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblBairro: TLabel
          Left = 6
          Top = 130
          Width = 38
          Height = 13
          Caption = 'Bairro *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblCidade: TLabel
          Left = 500
          Top = 130
          Width = 36
          Height = 13
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblTelefone3: TLabel
          Left = 8
          Top = 187
          Width = 53
          Height = 13
          Caption = 'Telefone 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtEstado: TSWHDBEdit
          Left = 876
          Top = 146
          Width = 113
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'estado'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 14087422
        end
        object edtNumero: TSWHDBEdit
          Left = 876
          Top = 86
          Width = 113
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'numero'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          MudarColor = 14087422
        end
        object edtComplemento: TSWHDBEdit
          Left = 500
          Top = 86
          Width = 360
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'complemento'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          MudarColor = 14087422
        end
        object edtEndereco: TSWHDBEdit
          Left = 8
          Top = 86
          Width = 471
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'endereco'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          MudarColor = 14087422
        end
        object edtFone3: TSWHDBEdit
          Left = 8
          Top = 203
          Width = 232
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'telefone2'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          MudarColor = 14087422
        end
        object pnl_cep: TPanel
          Left = 8
          Top = 29
          Width = 113
          Height = 25
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 5
          object spb_pesquisa: TSpeedButton
            Left = 82
            Top = 0
            Width = 27
            Height = 21
            Cursor = crHandPoint
            Align = alRight
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
            ExplicitLeft = 144
            ExplicitTop = -2
            ExplicitHeight = 26
          end
          object edtCep: TSWHMaskEdit
            Left = 2
            Top = 0
            Width = 80
            Height = 21
            BorderStyle = bsNone
            EditMask = '99.999-999;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = ''
            TipoMascara = tmCEP
            MudarColor = 14087422
            CasasDecimais = Uma
          end
        end
        object edtBairro: TSWHDBEdit
          Left = 8
          Top = 146
          Width = 471
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'bairro'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          MudarColor = 14087422
        end
        object edtCidade: TSWHDBEdit
          Left = 500
          Top = 146
          Width = 360
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'cidade'
          DataSource = dsCadastroPadrao
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
    end
    inherited pnlSubTop: TPanel
      Width = 998
      Height = 260
      ExplicitWidth = 998
      ExplicitHeight = 260
      inherited lblInvisivel: TLabel
        Top = 236
        Width = 69
        Caption = 'ENDERE'#199'O'
        ExplicitTop = 236
        ExplicitWidth = 69
      end
      inherited pnlLinha2: TPanel
        Width = 998
        ExplicitWidth = 998
      end
      object pnlCentralDados: TPanel
        Left = 0
        Top = 7
        Width = 993
        Height = 223
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 149
          Height = 17
          Caption = 'Qual o tipo de Pessoa ? *'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 64
          Width = 132
          Height = 17
          Caption = 'Nome / Raz'#227'o Social *'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbl_cpf_cnpj: TLabel
          Left = 8
          Top = 117
          Width = 38
          Height = 17
          Caption = 'CNPJ *'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 170
          Width = 36
          Height = 17
          Caption = 'E-mail'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbl_ie_rg: TLabel
          Left = 261
          Top = 117
          Width = 104
          Height = 17
          Caption = 'Inscri'#231#227'o Estadual'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 489
          Top = 170
          Width = 49
          Height = 17
          Caption = 'Telefone'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 489
          Top = 117
          Width = 116
          Height = 17
          Caption = 'Falar com / Contato'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbl_razao: TLabel
          Left = 489
          Top = 64
          Width = 87
          Height = 17
          Caption = 'Nome Fantasia'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 489
          Top = 10
          Width = 113
          Height = 17
          Caption = 'Fisica ou Jur'#237'dica ?*'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lblAtivo: TLabel
          Left = 261
          Top = 10
          Width = 105
          Height = 17
          Caption = 'Cadastro Ativo ? *'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object edtNome: TSWHDBEdit
          Left = 8
          Top = 86
          Width = 457
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'nomerazao'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 14087422
        end
        object edtCpfCnpj: TSWHMaskEdit
          Left = 8
          Top = 140
          Width = 229
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          EditMask = '99.999.999/9999-99;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 18
          ParentFont = False
          TabOrder = 1
          Text = ''
          TipoMascara = tmCNPJ
          MudarColor = 14087422
          CasasDecimais = Uma
        end
        object edtEmail: TSWHDBEdit
          Left = 8
          Top = 193
          Width = 457
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'email'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          MudarColor = 14087422
        end
        object edtIeRg: TSWHMaskEdit
          Left = 261
          Top = 140
          Width = 204
          Height = 25
          BevelInner = bvNone
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
          TipoMascara = tmNone
          MudarColor = 14087422
          CasasDecimais = Uma
        end
        object edtTelefone: TSWHDBEdit
          Left = 489
          Top = 193
          Width = 488
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'telefone'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          MudarColor = 14087422
        end
        object edtContato: TSWHDBEdit
          Left = 489
          Top = 140
          Width = 488
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'nomecontato'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          MudarColor = 14087422
        end
        object edtNomeFantasia: TSWHDBEdit
          Left = 489
          Top = 86
          Width = 488
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'nomefantasia'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          MudarColor = 14087422
        end
        object pnl_pessoa: TPanel
          Left = 489
          Top = 32
          Width = 488
          Height = 25
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 7
          object rbFisica: TRadioButton
            Left = 13
            Top = 3
            Width = 120
            Height = 17
            Caption = 'Pessoa F'#237'sica - CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object rbJuridica: TRadioButton
            Left = 217
            Top = 3
            Width = 133
            Height = 17
            Caption = 'Pessoa Jur'#237'dica CNPJ'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
          end
        end
        object cbxTipoClientes: TSWHComboBox
          Left = 8
          Top = 32
          Width = 229
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Text = 'CLIENTES'
          Items.Strings = (
            'CLIENTES'
            'FUNCIONARIOS'
            'FORNECEDORES')
          MudarColor = 14087422
        end
        object cbxAtivo: TSWHComboBox
          Left = 261
          Top = 32
          Width = 204
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Text = 'SITUA'#199#195'O'
          Items.Strings = (
            'SIM'
            'N'#195'O')
          MudarColor = 14087422
        end
      end
    end
  end
  inherited cdsCadastroPadrao: TClientDataSet
    ProviderName = 'dspCadastroPadrao'
    object cdsCadastroPadraoid: TLargeintField
      FieldName = 'id'
    end
    object cdsCadastroPadraotipopessoa: TWideStringField
      FieldName = 'tipopessoa'
    end
    object cdsCadastroPadraonomerazao: TWideStringField
      FieldName = 'nomerazao'
      Size = 255
    end
    object cdsCadastroPadraocpfcnpj: TWideStringField
      FieldName = 'cpfcnpj'
      Size = 25
    end
    object cdsCadastroPadraomodelopessoa: TWideStringField
      FieldName = 'modelopessoa'
      Size = 2
    end
    object cdsCadastroPadraorgie: TWideStringField
      FieldName = 'rgie'
      Size = 255
    end
    object cdsCadastroPadraonomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Size = 255
    end
    object cdsCadastroPadraonomecontato: TWideStringField
      FieldName = 'nomecontato'
      Size = 255
    end
    object cdsCadastroPadraoemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object cdsCadastroPadraotelefone: TWideStringField
      FieldName = 'telefone'
    end
    object cdsCadastroPadraocep: TWideStringField
      FieldName = 'cep'
      Size = 12
    end
    object cdsCadastroPadraoendereco: TWideStringField
      FieldName = 'endereco'
      Size = 255
    end
    object cdsCadastroPadraocomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object cdsCadastroPadraobairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object cdsCadastroPadraocidade: TWideStringField
      FieldName = 'cidade'
      Size = 255
    end
    object cdsCadastroPadraonumero: TWideStringField
      FieldName = 'numero'
      Size = 255
    end
    object cdsCadastroPadraoestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object cdsCadastroPadraotelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object cdsCadastroPadraosituacao: TIntegerField
      FieldName = 'situacao'
    end
  end
  inherited dspCadastroPadrao: TDataSetProvider
    DataSet = dm.qryPessoa
  end
end
