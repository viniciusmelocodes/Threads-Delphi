program ThreadsDelphi;

uses
  Forms,
  untMyThread in 'untMyThread.pas',
  untMyButton in 'untMyButton.pas',
  untFrmMain in 'untFrmMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Threads';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
