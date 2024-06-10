inherited frmCadastroPagamento: TfrmCadastroPagamento
  Caption = 'frmCadastroPagamento'
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBarraPesquisa: TPanel
    inherited pnlSubBot: TPanel
      Visible = False
    end
    inherited pnlSubTop: TPanel
      inherited lblInvisivel: TLabel
        Top = 229
        Visible = False
        ExplicitTop = 229
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 32
        Top = 4
        Width = 913
        Height = 230
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 15
        Margins.Bottom = 15
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label2: TLabel
          Left = 264
          Top = 23
          Width = 135
          Height = 17
          Caption = 'Forma de Pagamento *'
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
          Left = 264
          Top = 84
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
        object Label1: TLabel
          Left = 264
          Top = 145
          Width = 74
          Height = 17
          Caption = 'Abrevia'#231#227'o *'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 437
          Top = 145
          Width = 105
          Height = 17
          Caption = 'Tipo Pagamento *'
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
          Left = 264
          Top = 46
          Width = 377
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'nome'
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
        object cbxAtivo: TSWHComboBox
          Left = 264
          Top = 107
          Width = 204
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            'SIM'
            'N'#195'O')
          MudarColor = 14087422
        end
        object SWHDBEdit1: TSWHDBEdit
          Left = 264
          Top = 168
          Width = 135
          Height = 25
          BevelInner = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'abrevia'#231#227'o'
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
        object SWHComboBox1: TSWHComboBox
          Left = 437
          Top = 168
          Width = 204
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = 'A Vista'
          Items.Strings = (
            'A Vista'
            'A Prazo')
          MudarColor = 14087422
        end
      end
    end
  end
  inherited cdsCadastroPadrao: TClientDataSet
    Active = True
    ProviderName = 'dspCadastroPadrao'
    object cdsCadastroPadraoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCadastroPadraonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object cdsCadastroPadraoabreviação: TWideStringField
      FieldName = 'abrevia'#231#227'o'
      Origin = '"abrevia'#231#227'o"'
      Size = 3
    end
    object cdsCadastroPadraotipopgto: TIntegerField
      FieldName = 'tipopgto'
      Origin = 'tipopgto'
    end
    object cdsCadastroPadraoativo: TIntegerField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
  end
  inherited dspCadastroPadrao: TDataSetProvider
    DataSet = dm.qryFormaPgto
  end
end
