inherited frmCadastroPadrao1: TfrmCadastroPadrao1
  Caption = 'frmCadastroPadrao1'
  ExplicitTop = -36
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBarraPesquisa: TPanel
    inherited pnlSubBot: TPanel
      Top = 217
      Height = 308
      ExplicitTop = 248
      ExplicitHeight = 308
      object pnlBotCentral: TPanel
        Left = 0
        Top = 16
        Width = 977
        Height = 289
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
      end
    end
    inherited pnlSubTop: TPanel
      Height = 140
      ExplicitHeight = 140
      inherited lblInvisivel: TLabel
        Top = 115
        Width = 151
        Caption = 'CONTROLE DE ACESSOS'
        ExplicitTop = 115
        ExplicitWidth = 151
      end
      object pnlTopCentral: TPanel
        Left = 0
        Top = 7
        Width = 969
        Height = 102
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label2: TLabel
          Left = 112
          Top = 25
          Width = 103
          Height = 17
          Caption = 'Nome do usu'#225'rio'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lblSenha: TLabel
          Left = 400
          Top = 25
          Width = 103
          Height = 17
          Caption = 'Nome do usu'#225'rio'
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
          Left = 685
          Top = 25
          Width = 149
          Height = 17
          Caption = 'Usu'#225'rio Ativo ou Inativo ?'
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
          Left = 112
          Top = 48
          Width = 241
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
        object edtSenha: TSWHDBEdit
          Left = 400
          Top = 48
          Width = 241
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
          PasswordChar = '*'
          TabOrder = 1
          OnExit = edtSenhaExit
          MudarColor = 14087422
        end
        object cbxAtivo: TSWHComboBox
          Left = 685
          Top = 48
          Width = 163
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'cbxAtivo'
          Items.Strings = (
            'Sim'
            'N'#227'o')
          MudarColor = 14087422
        end
      end
    end
  end
end
