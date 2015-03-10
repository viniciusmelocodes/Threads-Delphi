unit untMyButton;

interface

uses
  StdCtrls, Classes, ComCtrls;

type
  TMyButton = class(StdCtrls.TButton)
    OwnedThread: TThread;
    ProgressBar: TProgressBar;
  end;

implementation

end.
