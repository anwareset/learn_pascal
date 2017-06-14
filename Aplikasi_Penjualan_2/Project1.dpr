program Project1;

uses
  Forms,
  UMain in 'UMain.pas' {FMain},
  UBarang in 'UBarang.pas' {FBarang},
  Udm in 'Udm.pas' {dm: TDataModule},
  Utransaksi in 'Utransaksi.pas' {Ftransaksi},
  Utbarang in 'Utbarang.pas' {Ftbarang},
  UKwitansi in 'UKwitansi.pas' {FKwitansi},
  Ulaporan in 'Ulaporan.pas' {Flaporan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFBarang, FBarang);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFtransaksi, Ftransaksi);
  Application.CreateForm(TFtbarang, Ftbarang);
  Application.CreateForm(TFKwitansi, FKwitansi);
  Application.CreateForm(TFlaporan, Flaporan);
  Application.Run;
end.
