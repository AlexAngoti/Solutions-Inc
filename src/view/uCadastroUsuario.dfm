inherited frmCadastroUsuario: TfrmCadastroUsuario
  Caption = 'frmCadastroUsuario'
  ClientWidth = 1000
  OnResize = FormResize
  ExplicitTop = -132
  ExplicitWidth = 1000
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBarraPesquisa: TPanel
    Width = 1000
    ExplicitWidth = 1000
    ExplicitHeight = 604
    inherited pnlSubButtonTop: TPanel
      Width = 1000
      ExplicitWidth = 1000
      inherited pnlConsulta: TPanel
        Left = 859
        ExplicitLeft = 859
      end
      inherited pnlExcluir: TPanel
        Left = 699
        ExplicitLeft = 699
      end
      inherited pnlInserir: TPanel
        Left = 779
        ExplicitLeft = 779
      end
    end
    inherited pnlSubBot: TPanel
      Top = 217
      Width = 970
      Height = 308
      ExplicitTop = 217
      ExplicitWidth = 970
      ExplicitHeight = 308
      inherited pnllinha1: TPanel
        Width = 970
        ExplicitWidth = 970
      end
      object pnlBotCentral: TPanel
        Left = 0
        Top = 7
        Width = 971
        Height = 268
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object dbGrdPesquisa: TDBGrid
          Left = 112
          Top = 4
          Width = 531
          Height = 280
          BorderStyle = bsNone
          Color = clWhite
          DataSource = dsControleAcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbGrdPesquisaDrawColumnCell
          OnDblClick = dbGrdPesquisaDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'idtela'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo Tela'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 89
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'nometela'
              Title.Alignment = taCenter
              Title.Caption = 'Nome da Tela'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 255
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'selecionado'
              Title.Alignment = taCenter
              Title.Caption = 'Liberado'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 201
              Visible = True
            end>
        end
        object cbxMaster: TDBCheckBox
          Left = 741
          Top = 84
          Width = 109
          Height = 17
          Caption = 'Usuario Master '
          DataField = 'master'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = cbxMasterClick
        end
        object cbxTodos: TCheckBox
          Left = 653
          Top = 84
          Width = 85
          Height = 17
          Caption = 'Todos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = cbxTodosClick
        end
        object pnlSalvar: TPanel
          AlignWithMargins = True
          Left = 653
          Top = 118
          Width = 197
          Height = 32
          Margins.Top = 39
          BevelOuter = bvNone
          Color = 16740690
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          object btnSalvar: TSpeedButton
            Left = 0
            Top = 0
            Width = 197
            Height = 32
            Align = alClient
            Caption = 'Salvar Acessos'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnSalvarClick
            ExplicitLeft = 2
            ExplicitWidth = 203
          end
        end
      end
    end
    inherited pnlSubTop: TPanel
      Width = 970
      Height = 140
      ExplicitWidth = 970
      ExplicitHeight = 140
      inherited lblInvisivel: TLabel
        Top = 115
        Width = 151
        Caption = 'CONTROLE DE ACESSOS'
        ExplicitTop = 115
        ExplicitWidth = 151
      end
      inherited pnlLinha2: TPanel
        Width = 970
        ExplicitWidth = 970
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
          Left = 399
          Top = 25
          Width = 102
          Height = 17
          Caption = 'Senha do usu'#225'rio'
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
          DataField = 'acesso'
          DataSource = dsCadastroPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = edtNomeExit
          MudarColor = 14087422
        end
        object edtSenha: TSWHDBEdit
          Left = 399
          Top = 48
          Width = 241
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'senha'
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
          Width = 165
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Items.Strings = (
            '0 - Sim'
            '1 - N'#227'o')
          MudarColor = 14087422
        end
      end
    end
    inherited pnlSalvar: TPanel
      Width = 970
      ExplicitLeft = 16
      ExplicitWidth = 970
      inherited pnlCancelar: TPanel
        Left = 833
        ExplicitLeft = 833
        ExplicitTop = 4
        ExplicitHeight = 32
        inherited btnCancelar: TSpeedButton
          ExplicitLeft = -64
          ExplicitTop = 26
          ExplicitWidth = 131
          ExplicitHeight = 32
        end
      end
      inherited pnlConfirmar: TPanel
        Left = 707
        ExplicitLeft = 708
        ExplicitTop = 4
      end
      inherited Panel1: TPanel
        Width = 970
        ExplicitTop = 0
        ExplicitWidth = 970
      end
    end
  end
  inherited cdsCadastroPadrao: TClientDataSet
    ProviderName = 'dspCadastroPadrao'
    object cdsCadastroPadraoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCadastroPadraoacesso: TWideStringField
      FieldName = 'acesso'
      Origin = 'acesso'
      Size = 255
    end
    object cdsCadastroPadraosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 255
    end
    object cdsCadastroPadraomaster: TWideStringField
      FieldName = 'master'
      Origin = 'master'
      Size = 1
    end
    object cdsCadastroPadraoativo: TIntegerField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
  end
  inherited dspCadastroPadrao: TDataSetProvider
    DataSet = qryLogin
  end
  object cdsControleAcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 183
    Top = 177
    object cdsControleAcessoidtela: TIntegerField
      FieldName = 'idtela'
    end
    object cdsControleAcessonometela: TStringField
      FieldName = 'nometela'
      Size = 255
    end
    object cdsControleAcessoselecionado: TStringField
      FieldName = 'selecionado'
      Size = 1
    end
  end
  object dsControleAcesso: TDataSource
    DataSet = cdsControleAcesso
    Left = 215
    Top = 178
  end
  object qryTelas: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from telas'
      'where situacao = 0')
    Left = 175
    Top = 249
  end
  object dsLiberacao: TDataSource
    DataSet = cdsLiberacao
    Left = 173
    Top = 325
  end
  object cdsLiberacao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'idTelas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idLogin'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspLiberacao'
    Left = 205
    Top = 325
  end
  object dspLiberacao: TDataSetProvider
    DataSet = qryLiberacao
    Left = 237
    Top = 325
  end
  object qryLiberacao: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * '
      '  from acessos'
      ' where idtelas = :idtelas'
      '   and idlogin = :idlogin')
    Left = 273
    Top = 325
    ParamData = <
      item
        Name = 'IDTELAS'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDLOGIN'
        ParamType = ptInput
      end>
  end
  object qryValidaNome: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'SELECT * '
      '  FROM login l '
      ' WHERE UPPER(l.acesso) = UPPER(:LOGIN);')
    Left = 257
    Top = 93
    ParamData = <
      item
        Name = 'LOGIN'
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryLogin: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'SELECT '
      '    l.id,'
      '    l.acesso,'
      '    l.senha,'
      '    l.master,'
      '    l.ativo'
      'FROM '
      '    login l;')
    Left = 272
    Top = 5
  end
  object qryDeletaAcessos: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'DELETE FROM acessos '
      'WHERE acessos.idlogin = :ID')
    Left = 79
    Top = 4
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end
