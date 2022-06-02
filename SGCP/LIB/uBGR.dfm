object Form1: TForm1
  Left = 686
  Top = 463
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
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
    Width = 635
    Height = 299
    Align = alClient
    BevelOuter = bvNone
    Color = 3365274
    ParentBackground = False
    TabOrder = 0
    object btnRGB: TButton
      Left = 496
      Top = 154
      Width = 110
      Height = 25
      Caption = 'RGB'
      TabOrder = 0
      OnClick = btnRGBClick
    end
    object btnBGR: TButton
      Left = 496
      Top = 231
      Width = 110
      Height = 25
      Caption = 'BGR'
      TabOrder = 2
      OnClick = btnBGRClick
    end
    object btnColorString: TButton
      Left = 496
      Top = 193
      Width = 110
      Height = 25
      Caption = 'Color String'
      TabOrder = 1
      OnClick = btnColorStringClick
    end
  end
  object btnSelectColor: TButton
    Left = 496
    Top = 112
    Width = 110
    Height = 25
    Caption = 'Selecione a cor'
    TabOrder = 1
    OnClick = btnSelectColorClick
  end
  object ColorDialog1: TColorDialog
    Options = [cdFullOpen]
    Left = 296
    Top = 88
  end
end
