unit Kalkulator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button10: TButton;
    Button16: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button17: TButton;
    Button18: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y,z : real;
  tambah,kurang,kali,bagi,back : integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'3';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
Edit1.Text:='';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'9';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'0';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+'4';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+',';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
x:=StrToFloat(Edit1.Text);
tambah:=1;
Edit1.Text:='';
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
x:=StrToFloat(Edit1.Text);
kurang:=1;
Edit1.Text:='';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
x:=StrToFloat(Edit1.Text);
kali:=1;
Edit1.Text:='';
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
x:=StrToFloat(Edit1.Text);
bagi:=1;
Edit1.Text:='';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
y:=StrToFloat(Edit1.Text);
if (tambah > 0) then
begin
  z:=x+y;
  Edit1.Text:=FloatToStr(z);
  x:=0;
  y:=0;
  tambah:=0;
end;
if (kurang > 0) then
begin
  z:=x-y;
  Edit1.Text:=FloatToStr(z);
  x:=0;
  y:=0;
  kurang:=0;
end;
if (kali > 0) then
begin
  z:=x*y;
  Edit1.Text:=FloatToStr(z);
  x:=0;
  y:=0;
  kali:=0;
end;
if (bagi > 0) then
begin
  z:=x/y;
  Edit1.Text:=FloatToStr(z);
  x:=0;
  y:=0;
  bagi:=0;
end;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  back:=length(Edit1.Text);
    Edit1.Text:=copy(Edit1.Text,1,back-1);
end;

end.
