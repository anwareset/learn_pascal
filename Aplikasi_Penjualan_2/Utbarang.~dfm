object Ftbarang: TFtbarang
  Left = 687
  Top = 81
  BorderStyle = bsDialog
  Caption = 'Cari Barang'
  ClientHeight = 385
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
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
    Left = 8
    Top = 8
    Width = 449
    Height = 369
  end
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 95
    Height = 18
    Caption = 'Cari Barang'
  end
  object Label3: TLabel
    Left = 24
    Top = 272
    Width = 57
    Height = 18
    Caption = 'Barang'
  end
  object Label4: TLabel
    Left = 24
    Top = 336
    Width = 29
    Height = 18
    Caption = 'Qty'
  end
  object Label5: TLabel
    Left = 24
    Top = 304
    Width = 48
    Height = 18
    Caption = 'Harga'
  end
  object Label6: TLabel
    Left = 96
    Top = 304
    Width = 27
    Height = 18
    Caption = 'Rp.'
  end
  object btpilih: TSpeedButton
    Left = 472
    Top = 8
    Width = 110
    Height = 40
    Cursor = crHandPoint
    Caption = 'Pilih [F1]'
    OnClick = btpilihClick
  end
  object bttutup: TSpeedButton
    Left = 472
    Top = 64
    Width = 110
    Height = 40
    Cursor = crHandPoint
    Caption = 'Tutup [Esc]'
    OnClick = bttutupClick
  end
  object edcari: TEdit
    Left = 160
    Top = 24
    Width = 177
    Height = 26
    TabOrder = 0
    OnChange = edcariChange
    OnKeyPress = edcariKeyPress
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 64
    Width = 417
    Height = 185
    DataSource = dm.dsqra
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 272
    Width = 97
    Height = 26
    DataField = 'kode_barang'
    DataSource = dm.dsqra
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 272
    Width = 225
    Height = 26
    DataField = 'nama_barang'
    DataSource = dm.dsqra
    Enabled = False
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 304
    Width = 121
    Height = 26
    DataField = 'harga'
    DataSource = dm.dsqra
    Enabled = False
    TabOrder = 4
  end
  object edqty: TEdit
    Left = 96
    Top = 336
    Width = 97
    Height = 26
    TabOrder = 5
  end
end
