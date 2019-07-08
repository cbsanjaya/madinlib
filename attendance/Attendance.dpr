program Attendance;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {MainForm},
  uDm in 'uDm.pas' {dm: TDataModule},
  uKoneksi in 'uKoneksi.pas' {FormKoneksi},
  uGuest in 'uGuest.pas' {FormGuest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;

  ReportMemoryLeaksOnShutdown := True;
end.
