object Form1: TForm1
  Left = 228
  Top = 140
  Width = 449
  Height = 399
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
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 128
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 96
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = MSQuery1
    Left = 160
    Top = 40
  end
  object MSConnection1: TMSConnection
    Database = 'mydata'
    Username = 'sa'
    Server = 'DESKTOP-SUQ16PG\FU'
    Connected = True
    LoginPrompt = False
    Left = 288
    Top = 32
    EncryptedPassword = 'CEFFCDFFCCFFCBFFCAFFC9FF'
  end
  object MSQuery1: TMSQuery
    Connection = MSConnection1
    SQL.Strings = (
      'select * from [dbo].[mydata]')
    Left = 336
    Top = 40
  end
end
