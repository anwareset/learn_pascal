object dm: Tdm
  OldCreateOrder = False
  Left = 1057
  Top = 163
  Height = 386
  Width = 291
  object AdoCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Deris\1_UNP\2016' +
      '_2017\Pemrograman Visual\Aplikasi Penjualan\dbpenjualan.mdb;Pers' +
      'ist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object tbbarang: TADOTable
    Connection = AdoCon
    Left = 104
    Top = 16
  end
  object dstbbarang: TDataSource
    DataSet = tbbarang
    Left = 184
    Top = 16
  end
  object qr1: TADOQuery
    Connection = AdoCon
    Parameters = <>
    Left = 104
    Top = 72
  end
  object tbtemp: TADOTable
    Connection = AdoCon
    TableName = 'tb_temp'
    Left = 104
    Top = 264
  end
  object dstbtemp: TDataSource
    DataSet = tbtemp
    Left = 152
    Top = 296
  end
  object qra: TADOQuery
    Connection = AdoCon
    Parameters = <>
    Left = 112
    Top = 128
  end
  object dsqra: TDataSource
    DataSet = qra
    Left = 184
    Top = 128
  end
  object qrb: TADOQuery
    Connection = AdoCon
    Parameters = <>
    Left = 120
    Top = 184
  end
  object dsqrb: TDataSource
    DataSet = qrb
    Left = 184
    Top = 192
  end
  object qrc: TADOQuery
    Connection = AdoCon
    Parameters = <>
    Left = 128
    Top = 224
  end
  object dsqrc: TDataSource
    DataSet = qrc
    Left = 184
    Top = 248
  end
end
