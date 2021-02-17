object MainForm: TMainForm
  Left = 575
  Top = 398
  Width = 771
  Height = 364
  Caption = 'PrTask7'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object MainLabel: TLabel
    Left = 16
    Top = 120
    Width = 62
    Height = 24
    Caption = #1054#1090#1074#1077#1090':'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object InputLabel: TLabel
    Left = 8
    Top = 24
    Width = 86
    Height = 20
    Caption = #1042#1099' '#1074#1074#1077#1083#1080':'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object MainEdit: TEdit
    Left = 96
    Top = 120
    Width = 641
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 253
    ParentFont = False
    TabOrder = 0
    OnKeyPress = MainEditKeyPress
  end
  object MainButton: TButton
    Left = 272
    Top = 192
    Width = 177
    Height = 81
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = MainButtonClick
  end
  object InputEdit: TEdit
    Left = 96
    Top = 24
    Width = 641
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 253
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
end
