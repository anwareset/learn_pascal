unit Utbarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFtbarang = class(TForm)
    Label1: TLabel;
    edcari: TEdit;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    edqty: TEdit;
    Label6: TLabel;
    btpilih: TSpeedButton;
    bttutup: TSpeedButton;
    Bevel1: TBevel;
    procedure bttutupClick(Sender: TObject);
    procedure edcariChange(Sender: TObject);
    procedure btpilihClick(Sender: TObject);
    procedure edcariKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftbarang: TFtbarang;

implementation

uses Udm, Utransaksi;

{$R *.dfm}

procedure TFtbarang.bttutupClick(Sender: TObject);
begin
  close;
end;

procedure TFtbarang.edcariChange(Sender: TObject);
var
  s:string;
begin
  s:='select kode_barang, nama_barang, harga from tb_barang ';
  s:=s + 'where (kode_barang LIKE "%' + edcari.Text + '%" OR nama_barang LIKE "%' + edcari.Text + '%")';
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
end;

procedure pilih;
var
s:string;
begin
  if (Ftbarang.edqty.Text<>'0') OR (Ftbarang.edqty.text<>'') then
    begin
      dm.tbtemp.Append;
      dm.tbtemp['kode_barang']:=dm.qra.fieldbyname('kode_barang').AsString;
      dm.tbtemp['nama_barang']:=dm.qra.fieldbyname('nama_barang').AsString;
      dm.tbtemp['qty']:=Ftbarang.edqty.Text;
      dm.tbtemp['jumlah']:=inttostr(strtoint(dm.qra.fieldbyname('harga').AsString) * strtoint(Ftbarang.edqty.Text));
      dm.tbtemp['harga']:=dm.qra.fieldbyname('harga').AsString;
      dm.tbtemp.Post;
      s:='select sum(jumlah) as total from tb_temp';
      dm.qr1.Close;
      dm.qr1.SQL.Clear;
      dm.qr1.SQL.Text:=s;
      dm.qr1.ExecSQL;
      dm.qr1.Open;
      ftransaksi.lbtotal.Caption:=dm.qr1.fieldbyname('total').AsString;
      Ftbarang.close;
    end
  else
    showmessage('Periksa lagi data isian atau pilihan..');


end;

procedure TFtbarang.btpilihClick(Sender: TObject);
begin
  pilih;
end;

procedure TFtbarang.edcariKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then edqty.SetFocus;
end;

procedure TFtbarang.FormCreate(Sender: TObject);
begin
  keypreview:=true;
end;

procedure TFtbarang.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then pilih;
  
end;

procedure TFtbarang.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then close;
end;

end.
