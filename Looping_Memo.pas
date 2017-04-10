unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
x,y,z:integer;
begin
  memo1.Lines.Clear;
  x:=StrToInt(Edit1.Text);
  y:=StrToInt(Edit2.Text);
  if(x < y) then
    for z:=x to y do
      begin
      memo1.Lines.Add('Baris ke ' + IntToStr(z));
      end
  else
    for z:=x downto y do
      begin
      memo1.Lines.Add('Baris ke ' + IntToStr(z));
      end
end;
end.
