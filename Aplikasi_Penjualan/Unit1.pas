unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Mask, DBCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    ADOTable1: TADOTable;
    Button8: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button4Click(Sender: TObject);
begin
 close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 form2.ShowModal;
 adoquery2.Active:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  showmessage('Menyimpan Data Transaksi') ;
  form2.virtualtable1.First;
  while not form2.VirtualTable1.Eof do
  begin
  form1.adotable1.Append;
  form1.adotable1['KodeBarang']:=form2.VirtualTable1['KodeBarang'];
  form1.adotable1['NamaBarang']:=form2.VirtualTable1['NamaBarang'];
  form1.adotable1['Qty']:=form2.VirtualTable1['QTY'];
  form1.adotable1['Harga']:=form2.VirtualTable1['Harga'];
  form1.adotable1['Jumlah']:=form2.VirtualTable1['Harga'] * form2.VirtualTable1['Qty'];
  form1.adotable1.Post;
  form2.VirtualTable1.Next;
  form2.virtualtable1.Delete;

  adoquery2.Connection:=adoconnection1;
  adoquery2.Active:=true;
  datasource2.DataSet:=adoquery2;
  dbedit1.DataSource:=datasource2;
  dbedit1.DataField:='Expr1000';

  label4.Caption:=inttostr(adotable1.RecordCount);

end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 if adotable1.IsEmpty then
 showmessage('Table Kosong')
 else
 adotable1.Delete;
 adotable1.First;
 label4.Caption:=inttostr(adotable1.RecordCount);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 adotable1.Prior;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 adotable1.Next;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
 showmessage('Menyimpan Data Transaksi');
 adotable1.First;
 while not adotable1.Eof do
 begin
 if adotable1['KodeBarang']<>'' then
 adotable1.Delete
 else
 adotable1.Next;
 end;
 label4.Caption:=inttostr(adotable1.RecordCount);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 adotable1.Connection:=adoconnection1;
 adotable1.TableName:='transaksi';
 adotable1.Active:=true;
 datasource1.DataSet:=adotable1;
 dbgrid1.DataSource:=datasource1;
 label4.Caption:=inttostr(adotable1.RecordCount);

 adoquery2.Connection:=adoconnection1;
 adoquery2.Active:=true;
 datasource2.DataSet:=adoquery2;
 dbedit1.DataSource:=datasource2;
 dbedit1.DataField:='Expr1000';
end;

end.
