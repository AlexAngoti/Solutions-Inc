object frmCadastroPadrao: TfrmCadastroPadrao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmCadastroPadrao'
  ClientHeight = 508
  ClientWidth = 1005
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBarraPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 1005
    Height = 508
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlSubButtonTop: TPanel
      Left = 0
      Top = 0
      Width = 1005
      Height = 74
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object lblDadosGerais: TLabel
        Left = 15
        Top = 54
        Width = 98
        Height = 17
        Caption = 'DADOS GERAIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Segoe UI Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlCancelar: TPanel
        AlignWithMargins = True
        Left = 876
        Top = 39
        Width = 126
        Height = 32
        Margins.Top = 39
        Align = alRight
        BevelOuter = bvNone
        Color = 13750737
        ParentBackground = False
        TabOrder = 0
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 126
          Height = 32
          Margins.Top = 26
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnCancelarClick
          ExplicitLeft = 32
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnlConfirmar: TPanel
        AlignWithMargins = True
        Left = 744
        Top = 39
        Width = 126
        Height = 32
        Margins.Top = 39
        Align = alRight
        BevelOuter = bvNone
        Color = 16740690
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object btnConfirmar: TSpeedButton
          Left = 0
          Top = 0
          Width = 126
          Height = 32
          Align = alClient
          Caption = 'Confirmar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnConfirmarClick
          ExplicitTop = -3
          ExplicitHeight = 34
        end
      end
      object pnlConsulta: TPanel
        AlignWithMargins = True
        Left = 612
        Top = 39
        Width = 126
        Height = 32
        Margins.Top = 39
        Align = alRight
        BevelOuter = bvNone
        Color = 13750737
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object btnConsulta: TSpeedButton
          Left = 0
          Top = 0
          Width = 126
          Height = 32
          Margins.Top = 26
          Align = alClient
          Caption = 'Consultar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C30E0000C30E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000006767675E6767
            67EF6868689B0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000067676761676767FD6767
            67FF676767EF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000067676761676767FD676767FF6767
            67FD6767675E000000000000000000000000808080026666663C666666706767
            67776767675C686868160000000068686860676767FD676767FF676767FD6767
            67610000000000000000000000006565653F676767D7676767FF676767FF6767
            67FF676767FF676767FA6666669D676767F9676767FF676767FD676767610000
            0000000000000000000068686851676767FA676767E8686868716A6A6A296666
            661965656544676767AD676767FF676767FF676767F968686860000000000000
            0000000000006464641C676767F4676767D76666661900000000000000000000
            000000000000000000006666666E676767FF6666669D00000000000000000000
            0000000000006666668E676767FD686868310000000000000000000000000000
            0000000000000000000000000000676767AD676767FA68686816000000000000
            000000000000676767DA676767C6000000000000000000000000000000000000
            000000000000000000000000000065656544676767FF6767675C000000000000
            000000000000676767F86666669D000000000000000000000000000000000000
            00000000000000000000000000006262621A676767FF6868687B000000000000
            000000000000676767ED676767AB000000000000000000000000000000000000
            00000000000000000000000000006A6A6A29676767FF68686871000000000000
            000000000000676767B9686868EA606060080000000000000000000000000000
            000000000000000000000000000068686871676767FF6969693D000000000000
            00000000000066666655676767FF666666840000000000000000000000000000
            0000000000000000000066666619676767E8676767D780808002000000000000
            00000000000000000001676767B5676767FE6767678360606008000000000000
            00000000000068686831676767D7676767FA6565653F00000000000000000000
            000000000000000000006262620D676767B5676767FF676767EB686868AA6666
            669D676767C6676767FD676767F4686868510000000000000000000000000000
            00000000000000000000000000000000000166666655676767B9676767ED6767
            67F8676767DA6767678F6464641C000000000000000000000000000000000000
            000000000000}
          ParentFont = False
          OnClick = btnConsultaClick
          ExplicitTop = -3
          ExplicitHeight = 34
        end
      end
      object pnlExcluir: TPanel
        AlignWithMargins = True
        Left = 469
        Top = 39
        Width = 66
        Height = 32
        Margins.Top = 39
        Align = alRight
        BevelOuter = bvNone
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object btnExcluir: TSpeedButton
          Left = 0
          Top = 0
          Width = 66
          Height = 32
          Margins.Top = 26
          Align = alClient
          Caption = 'Excluir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C40E0000C40E000000000000000000000000FF0000FF
            0000FF0000000000000000000000FFFFFF56FFFFFFFEFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFFFFFFFFDFDFFFFFFEFE
            FFFFFFFFFFFFFFFFFFFFFDFDFFFFC3C3FFFFFFFFFFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFBFBFFFF0C0CFFFF6A6A
            FFFFFEFEFFFFFDFDFFFF2C2CFFFF0000FFFFF7F7FFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFFFFFFFFB4B4FFFF0707
            FFFF6A6AFFFF2C2CFFFF0000FFFF7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFFFFFFFFFFFFFFFFB3B3
            FFFF0101FFFF0000FFFF7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFFFFFFFFFEFEFFFF6B6B
            FFFF0606FFFF0000FFFF2C2CFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFFFFFFFF6D6DFFFF0606
            FFFFB3B3FFFF7E7EFFFF0000FFFF2E2EFFFFFFFFFFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFBFBFFFF3232FFFFB3B3
            FFFFFFFFFFFFFFFFFFFF7E7EFFFF0909FFFFF7F7FFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF6DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB0000
            0000000000000000000000000000FFFFFF34FFFFFFAAFFFFFFAAFFFFFFAAFFFF
            FFAAFFFFFFAAFFFFFFE3FFFFFFE3FFFFFFE3FFFFFFE3FFFFFFE3FFFFFF5D0000
            00000000000000000000FFFFFF33FFFFFFA9FFFFFFAAFFFFFFAAFFFFFFAAFFFF
            FFAAFFFFFFAAFFFFFFE3FFFFFFE3FFFFFFE3FFFFFFE3FFFFFFE3FFFFFFE2FFFF
            FF5C0000000000000000FFFFFF76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB60000000000000000FFFFFF61FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF9C000000000000000000000000FFFFFF0FFFFFFF11FFFFFF75FFFFFFFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4FFFFFF21FFFFFF1D0000
            000000000000}
          ParentFont = False
          OnClick = btnExcluirClick
          ExplicitLeft = 16
          ExplicitWidth = 23
        end
      end
      object pnlInserir: TPanel
        AlignWithMargins = True
        Left = 541
        Top = 39
        Width = 65
        Height = 32
        Margins.Top = 39
        Align = alRight
        BevelOuter = bvNone
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        object btnInserir: TSpeedButton
          Left = 0
          Top = 0
          Width = 65
          Height = 32
          Margins.Top = 30
          Align = alClient
          Caption = 'Inserir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C40E0000C40E000000000000000000000000FF0000FF
            0000FF000000000000000000000000000000000000000000000000000000FFFF
            FF1CFFFFFFD8FFFFFFD8FFFFFF1B000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF63FFFFFFFFFFFFFFFFFFFFFF63000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF68FFFFFFFFFFFFFFFFFFFFFF68000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF68FFFFFFFFFFFFFFFFFFFFFF68000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF68FFFFFFFFFFFFFFFFFFFFFF68000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF68FFFFFFFFFFFFFFFFFFFFFF68000000000000000000000000000000000000
            000000000000FFFFFF1BFFFFFF62FFFFFF66FFFFFF66FFFFFF66FFFFFF66FFFF
            FFA4FFFFFFFFFFFFFFFFFFFFFFA4FFFFFF66FFFFFF66FFFFFF66FFFFFF66FFFF
            FF62FFFFFF1BFFFFFFD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFD8FFFFFFD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFD8FFFFFF1CFFFFFF62FFFFFF66FFFFFF66FFFFFF66FFFFFF66FFFF
            FFA4FFFFFFFFFFFFFFFFFFFFFFA4FFFFFF66FFFFFF66FFFFFF66FFFFFF66FFFF
            FF62FFFFFF1C000000000000000000000000000000000000000000000000FFFF
            FF68FFFFFFFFFFFFFFFFFFFFFF68000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF68FFFFFFFFFFFFFFFFFFFFFF68000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF68FFFFFFFFFFFFFFFFFFFFFF68000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF68FFFFFFFFFFFFFFFFFFFFFF68000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF63FFFFFFFFFFFFFFFFFFFFFF63000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF1CFFFFFFDAFFFFFFD9FFFFFF1B000000000000000000000000000000000000
            000000000000}
          ParentFont = False
          OnClick = btnInserirClick
          ExplicitLeft = 8
          ExplicitWidth = 39
        end
      end
    end
    object pnlSubBot: TPanel
      AlignWithMargins = True
      Left = 15
      Top = 329
      Width = 975
      Height = 230
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object pnllinha1: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 1
        Align = alTop
        BevelOuter = bvNone
        Color = 13750737
        ParentBackground = False
        TabOrder = 0
      end
    end
    object pnlSubTop: TPanel
      AlignWithMargins = True
      Left = 15
      Top = 77
      Width = 975
      Height = 252
      Margins.Left = 15
      Margins.Right = 15
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object lblInvisivel: TLabel
        Left = 0
        Top = 226
        Width = 103
        Height = 17
        Caption = 'DIGITE O NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Segoe UI Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlLinha2: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 1
        Align = alTop
        BevelOuter = bvNone
        Color = 13750737
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object dsCadastroPadrao: TDataSource
    DataSet = cdsCadastroPadrao
    Left = 173
    Top = 5
  end
  object cdsCadastroPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaPadrao'
    Left = 205
    Top = 5
  end
  object dspCadastroPadrao: TDataSetProvider
    Left = 237
    Top = 5
  end
end
