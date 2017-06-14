unit UBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ComCtrls;

type
  TFBarang = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    btedit: TSpeedButton;
    bttambah: TSpeedButton;
    bthapus: TSpeedButton;
    btsimpan: TSpeedButton;
    btbatal: TSpeedButton;
    bttutup: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    Bevel1: TBevel;
    procedure bttutupClick(Sender: TObject);
    procedure bteditClick(Sender: TObject);
    procedure bttambahClick(Sender: TObject);
    procedure btsimpanClick(Sender: TObject);
    procedure btbatalClick(Sender: TObject);
    procedure bthapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBarang: TFBarang;

implementation

uses Udm;

{$R *.dfm}

procedure TFBarang.bttutupClick(Sender: TObject);
begin
  Close;
end;

procedure TFBarang.bteditClick(Sender: TObject);
begin
  if dm.tbbarang.RecordCount<>0 then
    begin
      dm.tbbarang.Edit;
      btedit.Enabled:=false;
      bttambah.Enabled:=false;
      bthapus.Enabled:=false;
      btsimpan.Enabled:=true;
      btbatal.Enabled:=true;
      bttutup.Enabled:=false;
    end;
end;

procedure TFBarang.bttambahClick(Sender: TObject);
begin
  btedit.Enabled:=false;
  bttambah.Enabled:=false;
  bthapus.Enabled:=false;
  btsimpan.Enabled:=true;
  btbatal.Enabled:=true;
  bttutup.Enabled:=false;
  dm.tbbarang.Append;
end;

procedure TFBarang.btsimpanClick(Sender: TObject);
begin
  dm.tbbarang.Post;
  btedit.Enabled:=true;
  bttambah.Enabled:=true;
  bthapus.Enabled:=true;
  btsimpan.Enabled:=false;
  btbatal.Enabled:=false;
  bttutup.Enabled:=true;
end;

procedure TFBarang.btbatalClick(Sender: TObject);
begin
  dm.tbbarang.Cancel;
  btedit.Enabled:=true;
  bttambah.Enabled:=true;
  bthapus.Enabled:=true;
  btsimpan.Enabled:=false;
  btbatal.Enabled:=false;
  bttutup.Enabled:=true;
end;

procedure TFBarang.bthapusClick(Sender: TObject);
var
  s:string;
begin
  if dm.tbbarang.RecordCount<>0 then
    begin
      s:='select*from tb_detail_penjualan where kode_barang="' + dm.tbbarang.fieldbyname('kode_barang').AsString + '"';
      dm.qr1.Close;
      dm.qr1.SQL.Clear;
      dm.qr1.SQL.Text:=s;
      dm.qr1.ExecSQL;
      dm.qr1.Open;
      if dm.qr1.RecordCount<>0 then
        showmessage('Data tidak bisa dihapus, masih ada relasi yang menggunakan')
      else
        dm.tbbarang.Delete;
    end;
end;

end.
