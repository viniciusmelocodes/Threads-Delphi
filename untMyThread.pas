unit untMyThread;

interface

uses
  untMyButton,

  Classes, ComCtrls, StdCtrls, SysUtils;

type
  TMyThread = class(TThread)

  private

    FContador    : Integer;
    FContarPara  : Integer;
    FProgressBar : TProgressBar;
    FButton      : TMyButton;

    procedure atualizarProgressBar;

    procedure SetButton(const Value: TMyButton);

    procedure SetContarPara(const Value: Integer);

    procedure SetProgressBar(const Value: TProgressBar);

  protected

    procedure Execute; override;

  public

    constructor Create(CreateSuspended: Boolean);

    property ContarPara: Integer read FContarPara write SetContarPara;

    property ProgressBar: TProgressBar read FProgressBar write SetProgressBar;

    property Button: TMyButton read FButton write SetButton;

  end;

implementation

{ TMyThread }

constructor TMyThread.Create(CreateSuspended: Boolean);
begin
  inherited;
  FContador   := 0;
  FContarPara := MAXINT;
end;

procedure TMyThread.atualizarProgressBar;
var
  ePosicao: Extended; // equiparado ao long double
begin
  ePosicao              := (FContador / FContarPara);
  FProgressBar.Position := Round(FProgressBar.Step * ePosicao);
  FButton.Caption       := FormatFloat('0.00 %', ePosicao * 100);
end;

procedure TMyThread.Execute;
const
  INTERVALO = 1000000;
begin
  FreeOnTerminate   := True;
  FProgressBar.Max  := FContarPara div INTERVALO;
  FProgressBar.Step := FProgressBar.Max;

  while FContador < FContarPara do
  begin
    if FContador mod INTERVALO = 0 then
      Synchronize(atualizarProgressBar);

    Inc(FContador);
  end;

  FButton.Caption       := 'Iniciar';
  FButton.OwnedThread   := nil;
  FProgressBar.Position := FProgressBar.Max;
end;

procedure TMyThread.SetButton(const Value: TMyButton);
begin
  FButton := Value;
end;

procedure TMyThread.SetContarPara(const Value: Integer);
begin
  FContarPara := Value;
end;

procedure TMyThread.SetProgressBar(const Value: TProgressBar);
begin
  FProgressBar := Value;
end;

end.
