unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    sarah: TCheckBox;
    sinta: TCheckBox;
    rina: TCheckBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure sarahClick(Sender: TObject);
    procedure sintaClick(Sender: TObject);
    procedure rinaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
  sarahterpilih:boolean;
  sintaterpilih:boolean;
  rinaterpilih:boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  sarahterpilih := False;
  sintaterpilih := False;
  rinaterpilih := False;
end;

procedure TForm1.sarahClick(Sender: TObject);
begin
  if sarah.Checked = True then begin
    sarahterpilih := True;
  end else
   if sarah.Checked = False then begin
    sarahterpilih := False;
    end;
  end;
procedure TForm1.sintaClick(Sender: TObject);
begin
  if sinta.Checked = True then begin
    sintaterpilih := True;
  end else
    if sinta.Checked = False then begin
      sintaterpilih := False;
      end;
    end;
procedure TForm1.rinaClick(Sender: TObject);
begin
  if rina.Checked = True then begin
    rinaterpilih := True;
  end else
    if rina.Checked = False then begin
      rinaterpilih := False;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var votinghasil1:string;
var votinghasil2:string;
var votinghasil3:string;
begin
  if(sarahterpilih = True) then begin
    votinghasil1 := ''+sarah.Caption;
  end;

  if(sintaterpilih = True) then begin
    votinghasil2 := ''+sinta.Caption;
  end;

  if(rinaterpilih = True) then begin
    votinghasil3 := ''+rina.Caption;
  end;

/////////////////////

  if(sarahterpilih = False) then begin
    votinghasil1 := '';
  end;

  if(sintaterpilih = False) then begin
    votinghasil2 := '';
  end;

  if(rinaterpilih = False) then begin
    votinghasil3 := '';
  end;

/////

  if not(sarah.Checked = True) and not (sinta.Checked = True) and not (rina.Checked = True) then begin
    ShowMessage('Eiitss pilih dulu brow :V');
  end;

  if (sarah.Checked = True) or (sinta.Checked = True) or (rina.Checked = True) then begin
    ShowMessage('Jodohmu adalah: '+votinghasil1 + ' ' + votinghasil2 + ' ' + votinghasil3);
  end;
end;

end.
