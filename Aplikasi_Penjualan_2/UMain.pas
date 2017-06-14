unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls;

type
  TFMain = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Bevel1: TBevel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

uses Udm , UBarang, Utransaksi, Ulaporan;

{$R *.dfm}

procedure TFMain.FormCreate(Sender: TObject);
begin
  FMain.Left:=0;
  FMain.Top:=0;
  FMain.Width:=screen.Width;
  FMain.Height:=screen.Height -40;
  Bevel1.Width:=fmain.Width - 25;
end;

procedure TFMain.Timer1Timer(Sender: TObject);
var
  s, dir:string;
begin
  timer1.Enabled:=false;
  dir:=getcurrentdir;
  s:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + dir + '\dbpenjualan.mdb;Persist Security Info=False';
  if dm.AdoCon.Connected then dm.AdoCon.Connected:=false;
  dm.AdoCon.ConnectionString:=s;
  dm.AdoCon.Connected:=true;
  
end;

procedure TFMain.SpeedButton2Click(Sender: TObject);
begin
  with fbarang do
    begin
      if dm.tbbarang.Active then dm.tbbarang.Active:=false;
      dm.tbbarang.TableName:='tb_barang';
      dm.tbbarang.Active:=true;

      dbgrid1.Columns[0].Title.caption:='Kode';
      dbgrid1.Columns[1].Title.caption:='Nama Barang';
      dbgrid1.Columns[2].Title.caption:='Harga';
      dbgrid1.Columns[0].Title.alignment:=tacenter;
      dbgrid1.Columns[1].Title.alignment:=tacenter;
      dbgrid1.Columns[2].Title.alignment:=tacenter;
      showmodal;
    end;
end;

procedure TFMain.SpeedButton5Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFMain.SpeedButton3Click(Sender: TObject);
begin
  with Ftransaksi do
    begin
      if dm.tbtemp.Active then dm.tbtemp.Active:=false;
      dm.tbtemp.Active:=true;
      dbgrid1.Columns[0].Title.caption:='KODE';
      dbgrid1.Columns[1].Title.caption:='BARANG';
      dbgrid1.Columns[2].Title.caption:='QTY';
      dbgrid1.Columns[3].Title.caption:='HARGA';
      dbgrid1.Columns[4].Title.caption:='JUMLAH';
      dbgrid1.Columns[0].Title.alignment:=tacenter;
      dbgrid1.Columns[1].Title.alignment:=tacenter;
      dbgrid1.Columns[2].Title.alignment:=tacenter;
      dbgrid1.Columns[3].Title.alignment:=tacenter;
      dbgrid1.Columns[4].Title.alignment:=tacenter;
      dbgrid1.Columns[0].width:=60;
      dbgrid1.Columns[1].width:=220;
      dbgrid1.Columns[2].width:=50;
      dbgrid1.Columns[3].width:=100;
      dbgrid1.Columns[4].width:=100;
      lbtotal.Caption:='0';
      showmodal;
    end;
end;

procedure TFMain.SpeedButton4Click(Sender: TObject);
var
  s:string;
begin
  s:='select * from tb_penjualan';
  dm.qrc.Close;
  dm.qrc.SQL.Clear;
  dm.qrc.SQL.Text:=s;
  dm.qrc.ExecSQL;
  dm.qrc.Open;

  with Flaporan do
    begin
      dbgrid1.Columns[0].Title.caption:='NO NOTA';
      dbgrid1.Columns[1].Title.caption:='TANGGAL';
      dbgrid1.Columns[2].Title.caption:='ID_USER';
      showmodal;
    end;
end;

end.
