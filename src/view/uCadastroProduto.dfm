inherited frmCadastroProduto: TfrmCadastroProduto
  Caption = 'frmCadastroProduto'
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBarraPesquisa: TPanel
    inherited pnlSubButtonTop: TPanel
      object Label3: TLabel [1]
        Left = 15
        Top = 10
        Width = 163
        Height = 17
        Caption = 'CADASTRO DE PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Segoe UI Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited pnlSubBot: TPanel
      Top = 505
      Height = 134
      Visible = False
      ExplicitTop = 505
      ExplicitHeight = 134
      inherited pnllinha1: TPanel
        Visible = False
      end
    end
    inherited pnlSubTop: TPanel
      Height = 428
      ExplicitHeight = 428
      inherited lblInvisivel: TLabel
        Visible = False
      end
      object pnlCentral: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 3
        Width = 977
        Height = 407
        Margins.Left = 15
        Margins.Right = 15
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object lblNome: TLabel
          Left = 69
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
          Left = 69
          Top = 68
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
          Left = 600
          Top = 68
          Width = 69
          Height = 19
          Caption = 'Peso Bruto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblAtivo: TLabel
          Left = 600
          Top = 12
          Width = 60
          Height = 19
          Caption = 'Situa'#231#227'o:*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblPreco: TLabel
          Left = 600
          Top = 134
          Width = 93
          Height = 19
          Caption = 'Valor Unit'#225'rio:*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblLiq: TLabel
          Left = 742
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
        object lblImage: TLabel
          Left = 69
          Top = 198
          Width = 127
          Height = 19
          Caption = 'Imagem do Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtNome: TSWHDBEdit
          Left = 69
          Top = 37
          Width = 428
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
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
        object imgFoto: TDBImage
          Left = 69
          Top = 224
          Width = 216
          Height = 177
          BorderStyle = bsNone
          DataField = 'imagem'
          DataSource = dsCadastroPadrao
          TabOrder = 6
        end
        object pnlCarregaImagem: TPanel
          AlignWithMargins = True
          Left = 315
          Top = 297
          Width = 185
          Height = 32
          Margins.Left = 0
          Margins.Right = 0
          Margins.Bottom = 0
          BevelOuter = bvNone
          Color = 16740690
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 7
          object SpeedButton1: TSpeedButton
            Left = 0
            Top = 0
            Width = 185
            Height = 32
            Align = alClient
            Caption = 'Carregar Imagem'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton1Click
            ExplicitTop = 3
            ExplicitWidth = 126
          end
        end
        object DBMemo1: TDBMemo
          Left = 69
          Top = 93
          Width = 428
          Height = 87
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'descricao'
          DataSource = dsCadastroPadrao
          TabOrder = 2
        end
        object cbxAtivo: TSWHComboBox
          Left = 600
          Top = 37
          Width = 261
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            'ATIVO'
            'INATIVO')
          MudarColor = 14087422
        end
        object edtPeso: TSWHMaskEdit
          Left = 600
          Top = 93
          Width = 119
          Height = 21
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
          CasasDecimais = Quatro
        end
        object edtLiq: TSWHMaskEdit
          Left = 742
          Top = 93
          Width = 119
          Height = 21
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
          CasasDecimais = Quatro
        end
        object edtPreco: TSWHMaskEdit
          Left = 600
          Top = 159
          Width = 119
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = ''
          TipoMascara = tmValor
          MudarColor = 14087422
          CasasDecimais = Quatro
        end
      end
    end
  end
  inherited cdsCadastroPadrao: TClientDataSet
    ProviderName = 'dspCadastroPadrao'
    object cdsCadastroPadraonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object cdsCadastroPadraosituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object cdsCadastroPadraopresobruto: TBCDField
      FieldName = 'presobruto'
      Origin = 'presobruto'
      Precision = 15
    end
    object cdsCadastroPadraopesoliquedo: TBCDField
      FieldName = 'pesoliquedo'
      Origin = 'pesoliquedo'
      Precision = 15
    end
    object cdsCadastroPadraodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 1000
    end
    object cdsCadastroPadraovalorunitario: TBCDField
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
      Precision = 15
    end
    object cdsCadastroPadraoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object cdsCadastroPadraoimagem: TBlobField
      FieldName = 'imagem'
      BlobType = ftOraBlob
    end
  end
  inherited dspCadastroPadrao: TDataSetProvider
    DataSet = dm.qryProduto
  end
  object OpenDialog1: TOpenDialog
    Left = 368
    Top = 24
  end
  object qryBuscaEstoque: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'select * from estoque e '
      'where e.produto = :produto')
    Left = 463
    Top = 5
    ParamData = <
      item
        Name = 'PRODUTO'
        ParamType = ptInput
        Value = Null
      end>
  end
end
