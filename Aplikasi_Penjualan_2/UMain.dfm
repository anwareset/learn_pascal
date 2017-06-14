object FMain: TFMain
  Left = 316
  Top = 260
  BorderStyle = bsDialog
  Caption = '.: Aplikasi Penjualan :.'
  ClientHeight = 445
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 721
    Height = 89
  end
  object SpeedButton1: TSpeedButton
    Left = 16
    Top = 16
    Width = 110
    Height = 70
    Cursor = crHandPoint
    Caption = 'Login'
  end
  object SpeedButton2: TSpeedButton
    Left = 136
    Top = 16
    Width = 110
    Height = 70
    Cursor = crHandPoint
    Caption = 'Data Barang'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 256
    Top = 16
    Width = 110
    Height = 70
    Cursor = crHandPoint
    Caption = 'Transaksi'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 376
    Top = 16
    Width = 110
    Height = 70
    Cursor = crHandPoint
    Caption = 'Laporan'
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 496
    Top = 16
    Width = 110
    Height = 70
    Cursor = crHandPoint
    Caption = 'Tutup'
    OnClick = SpeedButton5Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 112
    Top = 232
  end
end
