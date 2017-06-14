object Flaporan: TFlaporan
  Left = 385
  Top = 123
  BorderStyle = bsDialog
  Caption = 'Laporan'
  ClientHeight = 434
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 121
    Height = 18
    Caption = 'Data Transaksi'
  end
  object Label2: TLabel
    Left = 16
    Top = 216
    Width = 131
    Height = 18
    Caption = 'Detail Transaksi'
  end
  object SpeedButton1: TSpeedButton
    Left = 512
    Top = 376
    Width = 129
    Height = 41
    Cursor = crHandPoint
    Caption = 'Tutup [Esc]'
    OnClick = SpeedButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 56
    Width = 649
    Height = 145
    Cursor = crHandPoint
    DataSource = dm.dsqrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 240
    Width = 641
    Height = 120
    DataSource = dm.dsqrb
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
  end
end
