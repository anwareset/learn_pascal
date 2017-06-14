unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    AdoCon: TADOConnection;
    tbbarang: TADOTable;
    dstbbarang: TDataSource;
    qr1: TADOQuery;
    tbtemp: TADOTable;
    dstbtemp: TDataSource;
    qra: TADOQuery;
    dsqra: TDataSource;
    qrb: TADOQuery;
    dsqrb: TDataSource;
    qrc: TADOQuery;
    dsqrc: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
