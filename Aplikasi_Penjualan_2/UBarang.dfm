object FBarang: TFBarang
  Left = 634
  Top = 273
  BorderStyle = bsDialog
  Caption = '.: Form Barang :.'
  ClientHeight = 364
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 18
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 553
    Height = 329
  end
  object btedit: TSpeedButton
    Left = 576
    Top = 8
    Width = 85
    Height = 40
    Cursor = crHandPoint
    Caption = 'Edit'
    OnClick = bteditClick
  end
  object bttambah: TSpeedButton
    Left = 576
    Top = 56
    Width = 85
    Height = 40
    Cursor = crHandPoint
    Caption = 'Tambah'
    OnClick = bttambahClick
  end
  object bthapus: TSpeedButton
    Left = 576
    Top = 104
    Width = 85
    Height = 40
    Cursor = crHandPoint
    Caption = 'Hapus'
    OnClick = bthapusClick
  end
  object btsimpan: TSpeedButton
    Left = 576
    Top = 152
    Width = 85
    Height = 40
    Cursor = crHandPoint
    Caption = 'Simpan'
    Enabled = False
    OnClick = btsimpanClick
  end
  object btbatal: TSpeedButton
    Left = 576
    Top = 200
    Width = 85
    Height = 40
    Cursor = crHandPoint
    Caption = 'Batal'
    Enabled = False
    OnClick = btbatalClick
  end
  object bttutup: TSpeedButton
    Left = 576
    Top = 296
    Width = 85
    Height = 40
    Cursor = crHandPoint
    Caption = 'Tutup'
    OnClick = bttutupClick
  end
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 94
    Height = 18
    Caption = 'Kode Barang'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 101
    Height = 18
    Caption = 'Nama Barang'
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 44
    Height = 18
    Caption = 'Harga'
  end
  object Label4: TLabel
    Left = 136
    Top = 88
    Width = 24
    Height = 18
    Caption = 'Rp.'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 120
    Width = 537
    Height = 209
    DataSource = dm.dstbbarang
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 136
    Top = 16
    Width = 121
    Height = 26
    DataField = 'kode_barang'
    DataSource = dm.dstbbarang
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 51
    Width = 225
    Height = 26
    DataField = 'nama_barang'
    DataSource = dm.dstbbarang
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 166
    Top = 86
    Width = 131
    Height = 26
    DataField = 'harga'
    DataSource = dm.dstbbarang
    TabOrder = 3
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 345
    Width = 680
    Height = 19
    Panels = <>
  end
end
