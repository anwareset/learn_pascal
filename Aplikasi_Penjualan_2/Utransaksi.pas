unit Utransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ComCtrls, ExtCtrls;

type
  TFtransaksi = class(TForm)
    StatusBar1: TStatusBar;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    lbtotal: TLabel;
    Bevel1: TBevel;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftransaksi: TFtransaksi;

implementation

uses Utbarang, Udm, UKwitansi;

{$R *.dfm}

procedure TFtransaksi.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

procedure tambah_barang;
var
  s:string;
begin
  with Ftbarang do
    begin
      s:='select kode_barang, nama_barang, harga from tb_barang';
      dm.qra.Close;
      dm.qra.SQL.Clear;
      dm.qra.SQL.Text:=s;
      dm.qra.ExecSQL;
      dm.qra.Open;
      with Ftbarang.DBGrid1 do
        begin
          Columns[0].Title.caption:='KODE';
          Columns[1].Title.caption:='BARANG';
          Columns[2].Title.caption:='HARGA';
          Columns[0].Title.alignment:=tacenter;
          Columns[1].Title.alignment:=tacenter;
          Columns[2].Title.alignment:=tacenter;
          Columns[0].Width:=60;
          Columns[1].Width:=220;
          Columns[2].Width:=100;
          edqty.Text:='0';
          showmodal;
         end;
    end;
end;

procedure TFtransaksi.SpeedButton1Click(Sender: TObject);
var
  s:string;
begin
  with Ftbarang do
    begin
      s:='select kode_barang, nama_barang, harga from tb_barang';
      dm.qra.Close;
      dm.qra.SQL.Clear;
      dm.qra.SQL.Text:=s;
      dm.qra.ExecSQL;
      dm.qra.Open;
      dbgrid1.Columns[0].Title.caption:='KODE';
      dbgrid1.Columns[1].Title.caption:='BARANG';
      dbgrid1.Columns[2].Title.caption:='HARGA';
      dbgrid1.Columns[0].Title.alignment:=tacenter;
      dbgrid1.Columns[1].Title.alignment:=tacenter;
      dbgrid1.Columns[2].Title.alignment:=tacenter;
      dbgrid1.Columns[0].Width:=60;
      dbgrid1.Columns[1].Width:=220;
      dbgrid1.Columns[2].Width:=100;
      edqty.Text:='0';
      showmodal;

    end;
end;

procedure proses;
var
  no_nota, s,t, id_user:string;
  i,j:integer;
begin
  id_user:='1';
  s:='select*from tb_penjualan';
  dm.qr1.Close;
  dm.qr1.SQL.Clear;
  dm.qr1.SQL.Text:=s;
  dm.qr1.ExecSQL;
  dm.qr1.Open;

  j:=dm.qr1.RecordCount;
  for i:=1 to 5-length(inttostr(j)) do
    t:=t + '0';
  no_nota:=formatdatetime('mmyy-',now) + t + inttostr(j+1);
  //insert ke tbpenjualan
  s:='insert into tb_penjualan (no_nota,tgl_transaksi,id_user) values ("' + no_nota + '","' + formatdatetime('yyyy-mm-dd',now) + '",' + id_user + ')';
  dm.qr1.Close;
  dm.qr1.SQL.Clear;
  dm.qr1.SQL.Text:=s;
  dm.qr1.ExecSQL;

  //insert ke tbdetailpenjualan
  dm.tbtemp.First;
  for i:=1 to dm.tbtemp.RecordCount do
    begin
      s:='insert into tb_detail_penjualan (no_nota,kode_barang,qty,harga) values  ("' + no_nota + '","' + dm.tbtemp.fieldbyname('kode_barang').AsString + '",';
      s:=s + dm.tbtemp.fieldbyname('qty').AsString + ',' + dm.tbtemp.fieldbyname('harga').AsString + ')';
      dm.qr1.Close;
      dm.qr1.SQL.Clear;
      dm.qr1.SQL.Text:=s;
      dm.qr1.ExecSQL;
      dm.tbtemp.Next;
    end;
  showmessage('transaksi berhasil disimpan');
  with FKwitansi do
    begin
      qrlabel8.Caption:=no_nota;
      qrlabel9.Caption:=formatdatetime('yyyy-mm-dd',now);
      QuickRep1.Preview;
    end;
end;

procedure hapus;
var
  s:string;
begin
  if dm.tbtemp.RecordCount<>0 then dm.tbtemp.Delete;
  
  if dm.tbtemp.RecordCount<>0 then
    begin
      s:='select sum(jumlah) as total from tb_temp';
      dm.qr1.Close;
      dm.qr1.SQL.Clear;
      dm.qr1.SQL.Text:=s;
      dm.qr1.ExecSQL;
      dm.qr1.Open;
      ftransaksi.lbtotal.Caption:=dm.qr1.fieldbyname('total').AsString;
    end
  else
    ftransaksi.lbtotal.Caption:='0';
end;

procedure TFtransaksi.SpeedButton2Click(Sender: TObject);
begin
  hapus;
end;

procedure reset_awal;
var
  i:integer;
begin
  for i:=1 to dm.tbtemp.RecordCount do
    dm.tbtemp.Delete;
  ftransaksi.lbtotal.Caption:='0';
end;

procedure TFtransaksi.SpeedButton4Click(Sender: TObject);

begin
reset_awal;
end;

procedure TFtransaksi.FormCreate(Sender: TObject);
begin
  keypreview:=true;
  //#13 enter
  //#27 esc
  //
end;

procedure TFtransaksi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F1) then tambah_barang;
  if key =VK_F3 then hapus;
  if key = VK_F5 then
    begin
      proses;

      reset_awal;
    end;

end;

procedure TFtransaksi.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then close;
  //if key=#39 then showmessage('panah kanan');
end;



procedure TFtransaksi.SpeedButton3Click(Sender: TObject);
begin
  proses;

  reset_awal;
end;

end.
