object frmConfiguracao: TfrmConfiguracao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmConfiguracao'
  ClientHeight = 457
  ClientWidth = 570
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenuLateral: TPanel
    Left = 0
    Top = 0
    Width = 119
    Height = 457
    Align = alLeft
    BevelOuter = bvNone
    Color = 4210752
    ParentBackground = False
    TabOrder = 0
    object btnBackup: TSpeedButton
      Left = 0
      Top = 0
      Width = 119
      Height = 41
      Align = alTop
      Caption = 'Backup'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Sego ui'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = -2
    end
    object btnSair: TSpeedButton
      Left = 0
      Top = 416
      Width = 119
      Height = 41
      Align = alBottom
      Caption = 'Sair'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Sego ui'
      Font.Style = []
      ParentFont = False
      OnClick = btnSairClick
      ExplicitTop = 8
    end
  end
  object pnlMenuCentral: TPanel
    Left = 119
    Top = 0
    Width = 451
    Height = 457
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pgcPrincipal: TPageControl
      Left = 0
      Top = 0
      Width = 451
      Height = 457
      ActivePage = tbsBackup
      Align = alClient
      Style = tsButtons
      TabOrder = 0
      object tbsBackup: TTabSheet
        Caption = 'tbsBackup'
        object lblDataBackup: TLabel
          Left = 34
          Top = 5
          Width = 85
          Height = 15
          Caption = 'Data de Backup:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblSalvarEm: TLabel
          Left = 34
          Top = 60
          Width = 54
          Height = 15
          Caption = 'Salvar em:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dtpDataInclu: TDateTimePicker
          Left = 34
          Top = 28
          Width = 375
          Height = 21
          Date = 45366.000000000000000000
          Time = 0.697616018514963800
          TabOrder = 0
        end
        object dlbDiretorio: TDirectoryListBox
          Left = 34
          Top = 81
          Width = 374
          Height = 280
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object pnlFazerBackup: TPanel
          Left = 34
          Top = 384
          Width = 375
          Height = 37
          BevelOuter = bvNone
          Caption = 'Realizar Backup'
          Color = 4210752
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Sergoe ui'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          object btnFazerBakcup: TSpeedButton
            Left = 0
            Top = 0
            Width = 375
            Height = 37
            Align = alClient
            Flat = True
            OnClick = btnFazerBakcupClick
            ExplicitLeft = 16
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
      end
    end
  end
end
