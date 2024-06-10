inherited frmCadastroPadrao1: TfrmCadastroPadrao1
  Caption = 'frmCadastroPadrao1'
  ExplicitTop = -12
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBarraPesquisa: TPanel
    inherited pnlSubTop: TPanel
      object pnlCentral: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 3
        Width = 977
        Height = 252
        Margins.Left = 15
        Margins.Right = 15
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object lblNome: TLabel
          Left = 37
          Top = 12
          Width = 120
          Height = 19
          Caption = 'Nome do Produto:*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblDescricao: TLabel
          Left = 37
          Top = 69
          Width = 61
          Height = 19
          Caption = 'Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblPeso: TLabel
          Left = 408
          Top = 68
          Width = 80
          Height = 19
          Caption = 'Peso Liquido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblAtivo: TLabel
          Left = 408
          Top = 10
          Width = 107
          Height = 19
          Caption = 'Ativo ou Inativo:*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblPreco: TLabel
          Left = 37
          Top = 126
          Width = 47
          Height = 19
          Caption = 'Pre'#231'o: *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 550
          Top = 68
          Width = 80
          Height = 19
          Caption = 'Peso Liquido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 152
          Top = 126
          Width = 57
          Height = 19
          Caption = 'Unidade*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtDescricao: TSWHDBEdit
          Left = 37
          Top = 93
          Width = 337
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'ITE_DESCRICAOTRAY'
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
        object edtNome: TSWHDBEdit
          Left = 37
          Top = 36
          Width = 337
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'ITE_DESCRICAO'
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
        object edtPeso: TSWHDBEdit
          Left = 408
          Top = 93
          Width = 107
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'ITE_PESO'
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
        object edtPreco: TSWHDBEdit
          Left = 37
          Top = 151
          Width = 96
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'ITE_VALOR'
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
        object edtAtivo: TSWHDBComboBox
          Left = 408
          Top = 35
          Width = 249
          Height = 23
          DataField = 'ITE_ATIVO'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'N'#227'o'
            'SIm')
          ParentFont = False
          TabOrder = 4
          MudarColor = 14087422
        end
        object imgFoto: TDBImage
          Left = 713
          Top = 12
          Width = 240
          Height = 181
          DataField = 'ITE_FOTO'
          DataSource = dsCadastroPadrao
          TabOrder = 5
        end
        object SWHDBEdit1: TSWHDBEdit
          Left = 550
          Top = 93
          Width = 107
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'ITE_PESO'
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
        object SWHDBComboBox1: TSWHDBComboBox
          Left = 152
          Top = 150
          Width = 222
          Height = 23
          DataField = 'ITE_ATIVO'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'N'#227'o'
            'SIm')
          ParentFont = False
          TabOrder = 7
          MudarColor = 14087422
        end
      end
    end
  end
end
