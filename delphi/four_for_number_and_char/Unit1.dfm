object Form1: TForm1
  Left = 451
  Top = 168
  Width = 292
  Height = 471
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 184
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 72
    Top = 184
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 16
    Top = 208
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 72
    Top = 208
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'X'
  end
  object Edit2: TEdit
    Left = 16
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Y'
  end
  object Edit3: TEdit
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Z'
  end
  object Button1: TButton
    Left = 16
    Top = 112
    Width = 105
    Height = 25
    Caption = 'Except(X*Y+Z))'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 112
    Width = 105
    Height = 25
    Caption = 'Function(X+Y))'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 144
    Width = 105
    Height = 25
    Caption = 'Function:char_add'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 144
    Top = 144
    Width = 105
    Height = 25
    Caption = 'For_ShowMessage'
    TabOrder = 6
    OnClick = Button4Click
  end
end
