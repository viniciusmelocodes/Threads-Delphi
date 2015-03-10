object FormMain: TFormMain
  Left = 453
  Top = 148
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Threads'
  ClientHeight = 202
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 202
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 383
    ExplicitHeight = 192
    object Button1: TButton
      Left = 25
      Top = 27
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ProgressBar1: TProgressBar
      Left = 91
      Top = 27
      Width = 277
      Height = 20
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 1
    end
    object Button2: TButton
      Left = 25
      Top = 59
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object ProgressBar2: TProgressBar
      Left = 91
      Top = 59
      Width = 277
      Height = 20
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 3
    end
    object Button3: TButton
      Left = 25
      Top = 91
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 4
      OnClick = Button1Click
    end
    object ProgressBar3: TProgressBar
      Left = 91
      Top = 91
      Width = 277
      Height = 20
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 5
    end
    object Button4: TButton
      Left = 25
      Top = 123
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 6
      OnClick = Button1Click
    end
    object ProgressBar4: TProgressBar
      Left = 91
      Top = 123
      Width = 277
      Height = 20
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 7
    end
    object Button5: TButton
      Left = 25
      Top = 155
      Width = 60
      Height = 20
      Caption = 'Iniciar'
      TabOrder = 8
      OnClick = Button1Click
    end
    object ProgressBar5: TProgressBar
      Left = 91
      Top = 155
      Width = 277
      Height = 20
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 9
    end
  end
end
