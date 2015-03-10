object FormMain: TFormMain
  Left = 298
  Top = 292
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Threads'
  ClientHeight = 177
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 177
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 84
    ExplicitTop = 25
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 16
      Top = 14
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ProgressBar1: TProgressBar
      Left = 82
      Top = 16
      Width = 277
      Height = 17
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 1
    end
    object Button2: TButton
      Left = 16
      Top = 46
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object ProgressBar2: TProgressBar
      Left = 82
      Top = 48
      Width = 277
      Height = 17
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 3
    end
    object Button3: TButton
      Left = 16
      Top = 78
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 4
      OnClick = Button1Click
    end
    object ProgressBar3: TProgressBar
      Left = 82
      Top = 80
      Width = 277
      Height = 17
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 5
    end
    object Button4: TButton
      Left = 16
      Top = 110
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 6
      OnClick = Button1Click
    end
    object ProgressBar4: TProgressBar
      Left = 82
      Top = 112
      Width = 277
      Height = 17
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 7
    end
    object Button5: TButton
      Left = 16
      Top = 142
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 8
      OnClick = Button1Click
    end
    object ProgressBar5: TProgressBar
      Left = 82
      Top = 144
      Width = 277
      Height = 17
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 9
    end
  end
end
