object Ftransaksi: TFtransaksi
  Left = 276
  Top = 156
  BorderStyle = bsDialog
  Caption = '.: Transaksi :.'
  ClientHeight = 389
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 18
  object Bevel1: TBevel
    Left = 400
    Top = 24
    Width = 209
    Height = 50
  end
  object SpeedButton1: TSpeedButton
    Left = 16
    Top = 320
    Width = 110
    Height = 40
    Cursor = crHandPoint
    Caption = 'Tambah [F1]'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 136
    Top = 320
    Width = 110
    Height = 40
    Cursor = crHandPoint
    Caption = 'Hapus [F3]'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 256
    Top = 320
    Width = 110
    Height = 40
    Cursor = crHandPoint
    Caption = 'Proses [F5]'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 368
    Top = 320
    Width = 110
    Height = 40
    Cursor = crHandPoint
    Caption = 'Reset [F9]'
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 504
    Top = 320
    Width = 110
    Height = 40
    Cursor = crHandPoint
    Caption = 'Tutup [Esc]'
    OnClick = SpeedButton5Click
  end
  object Label1: TLabel
    Left = 16
    Top = 64
    Width = 143
    Height = 18
    Caption = 'Rincian Pembelian :'
  end
  object Label2: TLabel
    Left = 348
    Top = 35
    Width = 35
    Height = 18
    Caption = 'Total'
  end
  object lbtotal: TLabel
    Left = 569
    Top = 32
    Width = 15
    Height = 29
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 370
    Width = 629
    Height = 19
    Panels = <>
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 96
    Width = 601
    Height = 209
    DataSource = dm.dstbtemp
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
  end
end
