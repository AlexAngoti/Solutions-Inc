inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'frmCadastroCliente'
  ClientHeight = 594
  ClientWidth = 1009
  OnResize = FormResize
  ExplicitWidth = 1009
  ExplicitHeight = 594
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 384
    Top = 258
    Width = 230
    Height = 84
    BevelOuter = bvNone
    Caption = 'Realizando busca. Carregando...'
    Color = 13750737
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  inherited pnlBarraPesquisa: TPanel
    Width = 1009
    Height = 594
    ExplicitWidth = 1009
    ExplicitHeight = 594
    inherited pnlSubButtonTop: TPanel
      Width = 1009
      ExplicitWidth = 1009
      object Label3: TLabel [1]
        Left = 15
        Top = 10
        Width = 147
        Height = 17
        Caption = 'CADASTRO DE PESSOA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Segoe UI Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited pnlConsulta: TPanel
        Left = 868
        ExplicitLeft = 868
      end
      inherited pnlExcluir: TPanel
        Left = 708
        ExplicitLeft = 708
      end
      inherited pnlInserir: TPanel
        Left = 788
        ExplicitLeft = 788
      end
    end
    inherited pnlSubBot: TPanel
      Top = 353
      Width = 979
      Height = 241
      ExplicitTop = 353
      ExplicitWidth = 979
      ExplicitHeight = 241
      inherited pnllinha1: TPanel
        Width = 979
        ExplicitWidth = 979
      end
      object pnlEndereco: TPanel
        Left = 0
        Top = 3
        Width = 969
        Height = 200
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object lblNumero: TLabel
          Left = 780
          Top = 56
          Width = 46
          Height = 13
          Caption = 'N'#250'mero*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblComplemento: TLabel
          Left = 493
          Top = 56
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
          Top = 56
          Width = 53
          Height = 13
          Caption = 'Endere'#231'o*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblCep: TLabel
          Left = 8
          Top = 4
          Width = 24
          Height = 13
          Caption = 'CEP*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblEstado: TLabel
          Left = 780
          Top = 109
          Width = 63
          Height = 13
          Caption = 'Estado (UF)*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblBairro: TLabel
          Left = 6
          Top = 109
          Width = 35
          Height = 13
          Caption = 'Bairro*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblCidade: TLabel
          Left = 493
          Top = 109
          Width = 41
          Height = 13
          Caption = 'Cidade*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtEstado: TSWHDBEdit
          Left = 780
          Top = 125
          Width = 113
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'uf'
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
          Left = 780
          Top = 72
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
          Left = 493
          Top = 72
          Width = 252
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
          Top = 72
          Width = 455
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
        object pnl_cep: TPanel
          Left = 8
          Top = 20
          Width = 139
          Height = 25
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 4
          object spb_pesquisa: TSpeedButton
            Left = 108
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
            OnClick = spb_pesquisaClick
            ExplicitLeft = 88
          end
          object edtCep: TSWHMaskEdit
            Left = -2
            Top = 0
            Width = 106
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
          Top = 125
          Width = 455
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
          TabOrder = 5
          MudarColor = 14087422
        end
        object edtCidade: TSWHDBEdit
          Left = 493
          Top = 125
          Width = 252
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
          TabOrder = 6
          MudarColor = 14087422
        end
      end
    end
    inherited pnlSubTop: TPanel
      Width = 979
      Height = 276
      ExplicitWidth = 979
      ExplicitHeight = 276
      inherited lblInvisivel: TLabel
        Top = 253
        Width = 69
        Caption = 'ENDERE'#199'O'
        ExplicitTop = 253
        ExplicitWidth = 69
      end
      inherited pnlLinha2: TPanel
        Width = 979
        ExplicitWidth = 979
      end
      object pnlCentralDados: TPanel
        Left = 0
        Top = 7
        Width = 969
        Height = 250
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 14
          Width = 95
          Height = 17
          Caption = 'Tipo de Pessoa*'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lblNome: TLabel
          Left = 8
          Top = 121
          Width = 79
          Height = 17
          Caption = 'Raz'#227'o Social*'
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
          Left = 118
          Top = 67
          Width = 34
          Height = 17
          Caption = 'CNPJ*'
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
          Left = 563
          Top = 174
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
          Left = 288
          Top = 67
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
          Left = 563
          Top = 121
          Width = 54
          Height = 17
          Caption = 'Telefone*'
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
          Left = 563
          Top = 67
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
          Left = 8
          Top = 174
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
        object lblAtivo: TLabel
          Left = 259
          Top = 14
          Width = 54
          Height = 17
          Caption = 'Situa'#231#227'o*'
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
          Left = 751
          Top = 121
          Width = 118
          Height = 17
          Caption = 'Telefone Secund'#225'rio'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 67
          Width = 92
          Height = 17
          Caption = 'Dt. de Cadastro'
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
          Top = 143
          Width = 471
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
        object edtEmail: TSWHDBEdit
          Left = 563
          Top = 194
          Width = 346
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
          TabOrder = 1
          MudarColor = 14087422
        end
        object edtContato: TSWHDBEdit
          Left = 563
          Top = 87
          Width = 346
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'contato'
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
        object edtNomeFantasia: TSWHDBEdit
          Left = 8
          Top = 194
          Width = 471
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
          TabOrder = 3
          MudarColor = 14087422
        end
        object pnl_pessoa: TPanel
          Left = 563
          Top = 32
          Width = 346
          Height = 25
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 4
          object rbFisica: TRadioButton
            Left = 21
            Top = 2
            Width = 120
            Height = 17
            Caption = 'Pessoa F'#237'sica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = rbFisicaClick
          end
          object rbJuridica: TRadioButton
            Left = 199
            Top = 2
            Width = 133
            Height = 17
            Caption = 'Pessoa Jur'#237'dica'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnClick = rbFisicaClick
          end
        end
        object cbxTipoClientes: TSWHComboBox
          Left = 8
          Top = 32
          Width = 210
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Items.Strings = (
            'CLIENTE'
            'FUNCION'#193'RIO'
            'FORNECEDOR')
          MudarColor = 14087422
        end
        object cbxAtivo: TSWHComboBox
          Left = 259
          Top = 32
          Width = 220
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 6
          Text = 'SIM'
          Items.Strings = (
            'SIM'
            'N'#195'O')
          MudarColor = 14087422
        end
        object edtTelefone: TSWHMaskEdit
          Left = 563
          Top = 141
          Width = 158
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          EditMask = '(99) 9 9999-9999;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 16
          ParentFont = False
          TabOrder = 7
          Text = ''
          TipoMascara = tmCelular
          MudarColor = 14087422
          CasasDecimais = Uma
        end
        object edteirg: TSWHDBEdit
          Left = 288
          Top = 87
          Width = 191
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'ierg'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          MudarColor = 14087422
        end
        object edtTelefone2: TSWHMaskEdit
          Left = 751
          Top = 141
          Width = 158
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          EditMask = '(99) 9 9999-9999;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 16
          ParentFont = False
          TabOrder = 9
          Text = ''
          TipoMascara = tmCelular
          MudarColor = 14087422
          CasasDecimais = Uma
        end
        object edtDtNasc: TSWHMaskEdit
          Left = 8
          Top = 87
          Width = 95
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          EditMask = '99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 10
          Text = '  /  /    '
          OnExit = edtCpfCnpjExit
          TipoMascara = tmData
          MudarColor = 14087422
          CasasDecimais = Uma
        end
        object pnlCnpj: TPanel
          AlignWithMargins = True
          Left = 118
          Top = 87
          Width = 156
          Height = 25
          Margins.Top = 39
          Margins.Right = 15
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          object SpeedButton1: TSpeedButton
            Left = 125
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
            OnClick = SpeedButton1Click
            ExplicitLeft = 131
          end
          object edtCpfCnpj: TSWHMaskEdit
            Left = 0
            Top = 0
            Width = 125
            Height = 21
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            EditMask = '99.999.999/9999-99;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 18
            ParentFont = False
            TabOrder = 0
            Text = ''
            OnExit = edtCpfCnpjExit
            TipoMascara = tmCNPJ
            MudarColor = 14087422
            CasasDecimais = Uma
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 123
            ExplicitHeight = 19
          end
        end
      end
    end
    inherited pnlBotaoSalvar: TPanel
      Top = 543
      Width = 979
      ExplicitTop = 543
      ExplicitWidth = 979
      inherited pnlCancelar: TPanel
        Left = 716
        ExplicitLeft = 716
        inherited btnCancelar: TSpeedButton
          ExplicitLeft = 0
          ExplicitTop = -4
          ExplicitWidth = 131
          ExplicitHeight = 32
        end
      end
      inherited pnlConfirmar: TPanel
        Left = 853
        ExplicitLeft = 853
      end
      inherited pnlLinhaBotao: TPanel
        Width = 979
        ExplicitWidth = 979
      end
    end
  end
  inherited cdsCadastroPadrao: TClientDataSet
    ProviderName = 'dspCadastroPadrao'
    object cdsCadastroPadraoid: TLargeintField
      FieldName = 'id'
    end
    object cdsCadastroPadraosituacao: TIntegerField
      FieldName = 'situacao'
    end
    object cdsCadastroPadraotipopessoa: TIntegerField
      FieldName = 'tipopessoa'
    end
    object cdsCadastroPadraofisicojuridico: TIntegerField
      FieldName = 'fisicojuridico'
    end
    object cdsCadastroPadraonomerazao: TWideStringField
      FieldName = 'nomerazao'
      Size = 255
    end
    object cdsCadastroPadraoierg: TWideStringField
      FieldName = 'ierg'
      Size = 255
    end
    object cdsCadastroPadraonomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Size = 255
    end
    object cdsCadastroPadraoemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object cdsCadastroPadraocontato: TWideStringField
      FieldName = 'contato'
      Size = 255
    end
    object cdsCadastroPadraotelefone: TWideStringField
      FieldName = 'telefone'
      Size = 15
    end
    object cdsCadastroPadraocep: TWideStringField
      FieldName = 'cep'
      Size = 11
    end
    object cdsCadastroPadraoendereco: TWideStringField
      FieldName = 'endereco'
      Size = 255
    end
    object cdsCadastroPadraobairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object cdsCadastroPadraocomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object cdsCadastroPadraocidade: TWideStringField
      FieldName = 'cidade'
      Size = 255
    end
    object cdsCadastroPadraotelefone2: TWideStringField
      FieldName = 'telefone2'
      Size = 15
    end
    object cdsCadastroPadraouf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object cdsCadastroPadraonumero: TWideStringField
      FieldName = 'numero'
      Size = 255
    end
    object cdsCadastroPadraocnpjcpf: TWideStringField
      FieldName = 'cnpjcpf'
      Size = 8190
    end
    object cdsCadastroPadraodatanasc: TDateField
      FieldName = 'datanasc'
    end
  end
  inherited dspCadastroPadrao: TDataSetProvider
    DataSet = dm.qryPessoa
  end
  object qryValidaRegistro: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from pessoa p '
      'where p.tipopessoa = :tipopessoa'
      '  and p.fisicojuridico = :fiscojuridico'
      '  and p.cnpjcpf = :cnpjcpf')
    Left = 376
    ParamData = <
      item
        Name = 'TIPOPESSOA'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FISCOJURIDICO'
        ParamType = ptInput
      end
      item
        Name = 'CNPJCPF'
        ParamType = ptInput
      end>
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 512
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'cep'
        Options = [poAutoCreated]
      end>
    Resource = 'ws/{cep}/json'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 560
    Top = 8
  end
  object RESTResponse1: TRESTResponse
    Left = 592
    Top = 8
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = cdsEndereco
    FieldDefs = <>
    Response = RESTResponse1
    Left = 632
    Top = 8
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 669
    Top = 11
  end
  object RestCnpj: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://www.sintegraws.com.br/api/v1'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 512
    Top = 56
  end
  object RestReqCNPJ: TRESTRequest
    Client = RestCnpj
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'TOKEN'
        Options = [poAutoCreated]
      end
      item
        Kind = pkURLSEGMENT
        Name = 'CNPJ'
        Options = [poAutoCreated]
      end>
    Resource = 'execute-api.php?token={TOKEN}&cnpj={CNPJ}&plugin=ST'
    Response = RestResponseCNPJ
    SynchronizedEvents = False
    Left = 544
    Top = 56
  end
  object RestResponseCNPJ: TRESTResponse
    ContentType = 'application/json'
    Left = 576
    Top = 56
  end
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Active = True
    Dataset = cdsBuscaCNPJ
    FieldDefs = <>
    Response = RestResponseCNPJ
    Left = 608
    Top = 56
  end
  object cdsBuscaCNPJ: TClientDataSet
    PersistDataPacket.Data = {
      430700009619E0BD0100000018000000190001000000030000004D0304636F64
      6502004A000000010005574944544802000200FE010673746174757302004A00
      0000010005574944544802000200FE01076D65737361676502004A0000000100
      05574944544802000200FE01106E6F6D655F656D70726573617269616C02004A
      000000010005574944544802000200FE0104636E706A02004A00000001000557
      4944544802000200FE0112696E7363726963616F5F657374616475616C02004A
      000000010005574944544802000200FE010E7469706F5F696E7363726963616F
      02004A000000010005574944544802000200FE0117646174615F736974756163
      616F5F63616461737472616C02004A000000010005574944544802000200FE01
      0D736974756163616F5F636E706A02004A000000010005574944544802000200
      FE010B736974756163616F5F696502004A000000010005574944544802000200
      FE010D6E6F6D655F66616E746173696102004A00000001000557494454480200
      0200FE0115646174615F696E6963696F5F61746976696461646502004A000000
      010005574944544802000200FE0111726567696D655F7472696275746163616F
      02004A000000010005574944544802000200FE011F696E666F726D6163616F5F
      69655F636F6D6F5F64657374696E61746172696F02004A000000010005574944
      544802000200FE010D706F7274655F656D707265736102004A00000001000557
      4944544802000200FE010E636E61655F7072696E636970616C02004A00000001
      0005574944544802000200FE0112646174615F66696D5F617469766964616465
      02004A000000010005574944544802000200FE0102756602004A000000010005
      574944544802000200FE01096D756E69636970696F02004A0000000100055749
      44544802000200FE010A6C6F677261646F75726F02004A000000010005574944
      544802000200FE010B636F6D706C656D656E746F02004A000000010005574944
      544802000200FE010363657002004A000000010005574944544802000200FE01
      066E756D65726F02004A000000010005574944544802000200FE010662616972
      726F02004A000000010005574944544802000200FE01046962676502004A0000
      00010005574944544802000200FE01000000000000000000000200300004004F
      004B003E005000650073007100750069007300610020007200650061006C0069
      007A00610064006100200063006F006D0020007300750063006500730073006F
      002E00380047006F006F0067006C0065002000620072006100730069006C0020
      0069006E007400650072006E006500740020006C007400640061002E001C0030
      0036003900390030003500390030003000300030003100320033001800310034
      00390038003400380034003000330031003100350000001400310036002D0031
      0030002D0032003000300037001A00530065006D002000720065007300740072
      006900E700E3006F000A0041007400690076006F0000001400310036002D0031
      0030002D0032003000300037004A004E006F0072006D0061006C0020002D0020
      0072006500670069006D00650020007000650072006900F3006400690063006F
      00200064006500200061007000750072006100E700E3006F001A004E00E3006F
      00200069006E0066006F0072006D00610064006F001A004E00E3006F00200069
      006E0066006F0072006D00610064006F00CE007B00220063006F006400650022
      003A002200360033003100390034003000300022002C00220074006500780074
      0022003A00220050006F00720074006100690073002C002000700072006F0076
      00650064006F00720065007300200064006500200063006F006E0074006500FA
      0064006F002000650020006F007500740072006F007300200073006500720076
      006900E7006F007300200064006500200069006E0066006F0072006D006100E7
      00E3006F0020006E006100200069006E007400650072006E006500740022007D
      00000004005300500012005300E3006F0020005000610075006C006F003A0041
      00760065006E0069006400610020006200720069006700610064006500690072
      006F0020006600610072006900610020006C0069006D0061009A0041006E0064
      006100720020003100370020006100200032003000200074006F007200720065
      002000730075006C0020002000200061006E0064006100720020003200200074
      006F0072007200650020006E006F007200740065002000200020002000200020
      00200061006E0064006100720020003100380020006100200032003000200074
      006F0072007200650020006E006F007200740065001000300034003500330038
      0031003300330008003300340037003700140049007400610069006D00200062
      006900620069005E007B00220063006F006400690067006F005F006D0075006E
      00690063006900700069006F0022003A00220033003500350030003300300038
      0022002C00220063006F006400690067006F005F007500660022003A00220033
      00350022007D00}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'code'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'status'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'message'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'nome_empresarial'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cnpj'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'inscricao_estadual'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'tipo_inscricao'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'data_situacao_cadastral'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'situacao_cnpj'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'situacao_ie'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'nome_fantasia'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'data_inicio_atividade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'regime_tributacao'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'informacao_ie_como_destinatario'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'porte_empresa'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cnae_principal'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'data_fim_atividade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'municipio'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'numero'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ibge'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 637
    Top = 59
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://www.sintegraws.com.br/api/v1'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 328
    Top = 56
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'TOKEN'
        Options = [poAutoCreated]
      end
      item
        Kind = pkURLSEGMENT
        Name = 'CPF'
        Options = [poAutoCreated]
      end
      item
        Kind = pkURLSEGMENT
        Name = 'DATA'
        Options = [poAutoCreated]
      end>
    Resource = 
      'execute-api.php?token={TOKEN}&cpf={CPF}&data-nascimento={DATA}&p' +
      'lugin=CPF'
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 360
    Top = 56
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    Left = 392
    Top = 56
  end
  object RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter
    Active = True
    Dataset = ClientDataSet1
    FieldDefs = <>
    Response = RESTResponse2
    Left = 424
    Top = 56
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      430700009619E0BD0100000018000000190001000000030000004D0304636F64
      6502004A000000010005574944544802000200FE010673746174757302004A00
      0000010005574944544802000200FE01076D65737361676502004A0000000100
      05574944544802000200FE01106E6F6D655F656D70726573617269616C02004A
      000000010005574944544802000200FE0104636E706A02004A00000001000557
      4944544802000200FE0112696E7363726963616F5F657374616475616C02004A
      000000010005574944544802000200FE010E7469706F5F696E7363726963616F
      02004A000000010005574944544802000200FE0117646174615F736974756163
      616F5F63616461737472616C02004A000000010005574944544802000200FE01
      0D736974756163616F5F636E706A02004A000000010005574944544802000200
      FE010B736974756163616F5F696502004A000000010005574944544802000200
      FE010D6E6F6D655F66616E746173696102004A00000001000557494454480200
      0200FE0115646174615F696E6963696F5F61746976696461646502004A000000
      010005574944544802000200FE0111726567696D655F7472696275746163616F
      02004A000000010005574944544802000200FE011F696E666F726D6163616F5F
      69655F636F6D6F5F64657374696E61746172696F02004A000000010005574944
      544802000200FE010D706F7274655F656D707265736102004A00000001000557
      4944544802000200FE010E636E61655F7072696E636970616C02004A00000001
      0005574944544802000200FE0112646174615F66696D5F617469766964616465
      02004A000000010005574944544802000200FE0102756602004A000000010005
      574944544802000200FE01096D756E69636970696F02004A0000000100055749
      44544802000200FE010A6C6F677261646F75726F02004A000000010005574944
      544802000200FE010B636F6D706C656D656E746F02004A000000010005574944
      544802000200FE010363657002004A000000010005574944544802000200FE01
      066E756D65726F02004A000000010005574944544802000200FE010662616972
      726F02004A000000010005574944544802000200FE01046962676502004A0000
      00010005574944544802000200FE01000000000000000000000200300004004F
      004B003E005000650073007100750069007300610020007200650061006C0069
      007A00610064006100200063006F006D0020007300750063006500730073006F
      002E00380047006F006F0067006C0065002000620072006100730069006C0020
      0069006E007400650072006E006500740020006C007400640061002E001C0030
      0036003900390030003500390030003000300030003100320033001800310034
      00390038003400380034003000330031003100350000001400310036002D0031
      0030002D0032003000300037001A00530065006D002000720065007300740072
      006900E700E3006F000A0041007400690076006F0000001400310036002D0031
      0030002D0032003000300037004A004E006F0072006D0061006C0020002D0020
      0072006500670069006D00650020007000650072006900F3006400690063006F
      00200064006500200061007000750072006100E700E3006F001A004E00E3006F
      00200069006E0066006F0072006D00610064006F001A004E00E3006F00200069
      006E0066006F0072006D00610064006F00CE007B00220063006F006400650022
      003A002200360033003100390034003000300022002C00220074006500780074
      0022003A00220050006F00720074006100690073002C002000700072006F0076
      00650064006F00720065007300200064006500200063006F006E0074006500FA
      0064006F002000650020006F007500740072006F007300200073006500720076
      006900E7006F007300200064006500200069006E0066006F0072006D006100E7
      00E3006F0020006E006100200069006E007400650072006E006500740022007D
      00000004005300500012005300E3006F0020005000610075006C006F003A0041
      00760065006E0069006400610020006200720069006700610064006500690072
      006F0020006600610072006900610020006C0069006D0061009A0041006E0064
      006100720020003100370020006100200032003000200074006F007200720065
      002000730075006C0020002000200061006E0064006100720020003200200074
      006F0072007200650020006E006F007200740065002000200020002000200020
      00200061006E0064006100720020003100380020006100200032003000200074
      006F0072007200650020006E006F007200740065001000300034003500330038
      0031003300330008003300340037003700140049007400610069006D00200062
      006900620069005E007B00220063006F006400690067006F005F006D0075006E
      00690063006900700069006F0022003A00220033003500350030003300300038
      0022002C00220063006F006400690067006F005F007500660022003A00220033
      00350022007D00}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'code'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'status'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'message'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'nome_empresarial'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cnpj'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'inscricao_estadual'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'tipo_inscricao'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'data_situacao_cadastral'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'situacao_cnpj'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'situacao_ie'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'nome_fantasia'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'data_inicio_atividade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'regime_tributacao'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'informacao_ie_como_destinatario'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'porte_empresa'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cnae_principal'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'data_fim_atividade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'municipio'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'numero'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ibge'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 453
    Top = 59
  end
end
