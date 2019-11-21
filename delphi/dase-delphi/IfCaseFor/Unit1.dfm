object Form1: TForm1
  Left = 197
  Top = 134
  Width = 319
  Height = 403
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
    Left = 144
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 40
    Top = 24
    Width = 73
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 48
    Top = 72
    Width = 75
    Height = 25
    Caption = '-1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 120
    Width = 75
    Height = 25
    Caption = '+1'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 48
    Top = 176
    Width = 75
    Height = 25
    Caption = 'out_put'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 160
    Top = 80
    Width = 75
    Height = 25
    Caption = 'if '
    TabOrder = 4
    OnClick = Button4Click
  end
end
