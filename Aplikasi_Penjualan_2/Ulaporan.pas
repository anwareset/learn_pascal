unit Ulaporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons;

type
  TFlaporan = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flaporan: TFlaporan;

implementation

uses Udm;

{$R *.dfm}

procedure TFlaporan.FormCreate(Sender: TObject);
begin
  keypreview:=true;
end;

procedure TFlaporan.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then close;
end;

procedure TFlaporan.DBGrid1CellClick(Column: TColumn);
var
  s:string;
begin
  if dm.qrc.RecordCount<>0 then
    begin
      s:='select dp.kode_barang, b.nama_barang, dp.qty, dp.harga, (dp.qty*dp.harga) ';
      s:=s + ' from tb_detail_penjualan dp, tb_barang b ';
      s:=s + ' where dp.kode_barang=b.kode_barang AND dp.no_nota="' + dm.qrc.fieldbyname('no_nota').AsString + '"';
      dm.qrb.Close;
      dm.qrb.SQL.Clear;
      dm.qrb.SQL.Text:=s;
      dm.qrb.ExecSQL;
      dm.qrb.Open;
      dbgrid2.Columns[0].Title.caption:='KODE';
      dbgrid2.Columns[1].Title.caption:='BARANG';
      dbgrid2.Columns[2].Title.caption:='QTY';
      dbgrid2.Columns[3].Title.caption:='HARGA';
      dbgrid2.Columns[4].Title.caption:='JUMLAH';

    end;
end;

procedure TFlaporan.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
