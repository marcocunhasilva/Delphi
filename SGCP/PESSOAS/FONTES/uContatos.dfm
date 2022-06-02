object frmContatos: TfrmContatos
  Left = 0
  Top = 0
  Caption = 'Teste de cadastro'
  ClientHeight = 1041
  ClientWidth = 1904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1904
    Height = 1041
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 640
      Top = 376
      Width = 37
      Height = 13
      Caption = 'Numero'
    end
    object Label2: TLabel
      Left = 816
      Top = 376
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object Label3: TLabel
      Left = 8
      Top = 424
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 24
      Width = 600
      Height = 337
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 624
      Top = 24
      Width = 600
      Height = 337
      DataSource = DataSource2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 367
      Width = 600
      Height = 50
      DataSource = DataSource1
      TabOrder = 2
    end
    object edtNumero: TEdit
      Left = 640
      Top = 396
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtTipo: TEdit
      Left = 816
      Top = 396
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object btnGravar: TButton
      Left = 525
      Top = 441
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 5
      OnClick = btnGravarClick
    end
    object edtNome: TEdit
      Left = 8
      Top = 443
      Width = 511
      Height = 21
      TabOrder = 6
    end
  end
  object btnSalvar: TButton
    Left = 952
    Top = 394
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = btnSalvarClick
  end
  object FDQuery1: TFDQuery
    Active = True
    AfterScroll = FDQuery1AfterScroll
    Connection = AgendaConnection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CONTATOS_ID'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'CONTATO'
    SQL.Strings = (
      'SELECT * FROM CONTATOS')
    Left = 192
    Top = 456
  end
  object FDQuery2: TFDQuery
    Connection = AgendaConnection
    SQL.Strings = (
      'SELECT * FROM TELEFONES'
      'WHERE 1 = 0')
    Left = 720
    Top = 448
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 192
    Top = 512
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 720
    Top = 512
  end
  object AgendaConnection: TFDConnection
    Params.Strings = (
      'CharacterSet=WIN1252'
      'ConnectionDef=AGENDA')
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    Connected = True
    LoginPrompt = False
    Left = 463
    Top = 456
  end
end
