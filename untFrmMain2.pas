{

  Autor: Vinícius Lopes de Melo
  Data: 10/03/2015

  Objetivo:
  Exemplificar o uso e funcionamento de thread na linguagem Object Pascal.

  Ao clicar em qualquer um dos botões é criado um novo processo.

}

unit untFrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TFormMain = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Button2: TButton;
    ProgressBar2: TProgressBar;
    Button3: TButton;
    ProgressBar3: TProgressBar;
    Button4: TButton;
    ProgressBar4: TProgressBar;
    Button5: TButton;
    ProgressBar5: TProgressBar;

    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  FormMain: TFormMain;

implementation

uses
  untMyThread, untMyButton;

{$R *.dfm}

{ TFormPrincipal }

procedure TFormMain.Button1Click(Sender: TObject);
var
  button      : TMyButton;
  thread      : TMyThread;
  progressBar : TProgressBar;
begin
  button      := TMyButton(Sender);

  if not Assigned(button.OwnedThread) then
  begin
    thread             := TMyThread.Create(True);
    button.OwnedThread := thread;
    progressBar        := TProgressBar(FindComponent(StringReplace(button.Name, 'Button', 'ProgressBar', [])));
    thread.ProgressBar := progressBar;
    thread.Button      := button;
    thread.Resume;
    button.Caption     := 'Pausar';
  end
  else
  begin
    if button.OwnedThread.Suspended then
      button.OwnedThread.Resume
    else
      button.OwnedThread.Suspend;

    button.Caption := 'Executar';
  end;
end;

end.
