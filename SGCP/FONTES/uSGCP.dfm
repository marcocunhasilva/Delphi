object frmSGCP: TfrmSGCP
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  ClientHeight = 898
  ClientWidth = 1312
  Color = 3288877
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object svMenu: TSplitView
    Left = 0
    Top = 57
    Width = 200
    Height = 822
    Color = 15182378
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 1
    object catMenuItems: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Height = 822
      Align = alClient
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 40
      ButtonWidth = 100
      ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Caption = 'Cadastros'
          Color = 3288877
          Collapsed = False
          Items = <
            item
              Action = actPessoas
              Caption = 'Pessoas'
            end
            item
              Action = actSair
              ImageIndex = 1
            end>
          TextColor = clWhite
        end>
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      HotButtonColor = 15182378
      Images = imgPessoas16
      RegularButtonColor = clNone
      SelectedButtonColor = clNone
      TabOrder = 0
    end
  end
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 1312
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = 15182378
    ParentBackground = False
    TabOrder = 0
    object imgMenu: TImage
      Left = 18
      Top = 9
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Center = True
      OnClick = imgMenuClick
    end
    object lblTitle: TLabel
      Left = 200
      Top = 16
      Width = 374
      Height = 21
      Caption = 'Sistama de Gerenciamento e Cadastro de Pessoas'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object pnlStatusBar: TPanel
    Left = 0
    Top = 879
    Width = 1312
    Height = 19
    Align = alBottom
    Color = 15182378
    ParentBackground = False
    TabOrder = 2
  end
  object pnlPessoas: TPanel
    Left = 200
    Top = 57
    Width = 1112
    Height = 822
    Align = alClient
    BevelOuter = bvNone
    Color = 3288877
    ParentBackground = False
    TabOrder = 3
    object pcPessoas: TPageControl
      Left = 0
      Top = 0
      Width = 1112
      Height = 822
      ActivePage = tsPesquisa
      Align = alClient
      TabOrder = 0
      OnChange = pcPessoasChange
      object tsPesquisa: TTabSheet
        Caption = 'Pesquisa'
        object pnlGrid: TPanel
          Left = 0
          Top = 65
          Width = 1104
          Height = 729
          Align = alClient
          Color = 3288877
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3288877
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object dbgSGCP: TDBGrid
            Left = 1
            Top = 1
            Width = 1102
            Height = 727
            Align = alClient
            BiDiMode = bdLeftToRight
            Color = 3288877
            DataSource = dsPessoas
            GradientEndColor = 3288877
            GradientStartColor = 3288877
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentBiDiMode = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = 3288877
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = dbgSGCPDblClick
            Columns = <
              item
                Alignment = taRightJustify
                Color = 3288877
                Expanded = False
                FieldName = 'CODIGO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'C'#243'digo'
                Title.Color = 3288877
                Visible = True
              end
              item
                Alignment = taRightJustify
                Color = 3288877
                Expanded = False
                FieldName = 'CPF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = True
              end
              item
                Alignment = taRightJustify
                Color = 3288877
                Expanded = False
                FieldName = 'RG'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = True
              end
              item
                Color = 3288877
                Expanded = False
                FieldName = 'NOME'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Nome'
                Visible = True
              end
              item
                Color = 3288877
                Expanded = False
                FieldName = 'TELEFONE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Telefone'
                Visible = True
              end
              item
                Alignment = taRightJustify
                Color = 3288877
                Expanded = False
                FieldName = 'CEP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = True
              end
              item
                Color = 3288877
                Expanded = False
                FieldName = 'LOGRADOURO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Logradouro'
                Visible = True
              end
              item
                Color = 3288877
                Expanded = False
                FieldName = 'BAIRRO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Bairro'
                Visible = True
              end
              item
                Color = 3288877
                Expanded = False
                FieldName = 'LOCALIDADE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Cidade'
                Visible = True
              end
              item
                Color = 3288877
                Expanded = False
                FieldName = 'UF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = True
              end>
          end
        end
        object pnlPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 1104
          Height = 65
          Align = alTop
          Color = 3288877
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 1
            Top = 13
            Width = 69
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = 'Pesquisar por:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object lblRegistros: TLabel
            Left = 1013
            Top = 24
            Width = 82
            Height = 19
            Caption = 'lblRegistros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtPesquisa: TEdit
            Left = 2
            Top = 32
            Width = 824
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Color = 3288877
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnChange = edtPesquisaChange
            OnClick = edtPesquisaClick
          end
        end
      end
      object tsDados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 1
        object pnlDados: TPanel
          Left = 0
          Top = 38
          Width = 1104
          Height = 756
          Align = alClient
          BevelOuter = bvNone
          Color = 3288877
          ParentBackground = False
          TabOrder = 1
          object lblNome: TLabel
            Left = 16
            Top = 103
            Width = 27
            Height = 13
            Caption = 'Nome'
            Color = clWhite
            FocusControl = edtNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblCodigo: TLabel
            Left = 16
            Top = 19
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblCPF: TLabel
            Left = 16
            Top = 61
            Width = 19
            Height = 13
            Caption = 'CPF'
            Color = clWhite
            FocusControl = edtCPF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label11: TLabel
            Left = 16
            Top = 229
            Width = 45
            Height = 13
            Caption = 'Endere'#231'o'
            Color = clWhite
            FocusControl = edtLogradouro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblCidade: TLabel
            Left = 16
            Top = 313
            Width = 50
            Height = 13
            Caption = 'Localidade'
            Color = clWhite
            FocusControl = edtLocalidade
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblEstado: TLabel
            Left = 16
            Top = 355
            Width = 33
            Height = 13
            Caption = 'Estado'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label2: TLabel
            Left = 157
            Top = 61
            Width = 14
            Height = 13
            Caption = 'RG'
            Color = clWhite
            FocusControl = edtRG
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label3: TLabel
            Left = 17
            Top = 145
            Width = 42
            Height = 13
            Caption = 'Telefone'
            Color = clWhite
            FocusControl = edtTelefone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label4: TLabel
            Left = 16
            Top = 187
            Width = 19
            Height = 13
            Caption = 'CEP'
            Color = clWhite
            FocusControl = edtCEP
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label5: TLabel
            Left = 17
            Top = 271
            Width = 28
            Height = 13
            Caption = 'Bairro'
            Color = clWhite
            FocusControl = edtBairro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object edtCPF: TEdit
            Left = 16
            Top = 76
            Width = 121
            Height = 21
            BiDiMode = bdLeftToRight
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnEnter = edtCPFEnter
            OnExit = edtCPFExit
          end
          object edtNome: TEdit
            Left = 16
            Top = 120
            Width = 653
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
            OnExit = edtCPFExit
          end
          object edtLogradouro: TEdit
            Left = 16
            Top = 246
            Width = 653
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 6
            OnExit = edtCPFExit
          end
          object edtLocalidade: TEdit
            Left = 16
            Top = 330
            Width = 653
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 8
            OnExit = edtCPFExit
          end
          object edtCodigo: TEdit
            Left = 17
            Top = 36
            Width = 44
            Height = 21
            Color = 3288877
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object edtUF: TComboBox
            Left = 16
            Top = 372
            Width = 45
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 9
            Text = 'RS'
            OnExit = edtCPFExit
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'FN'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PI'
              'PR'
              'RJ'
              'RO'
              'RN'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO')
          end
          object edtTelefone: TEdit
            Left = 16
            Top = 162
            Width = 653
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
            OnExit = edtCPFExit
          end
          object edtCEP: TEdit
            Left = 16
            Top = 204
            Width = 121
            Height = 21
            BiDiMode = bdLeftToRight
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 5
            OnExit = edtCEPExit
          end
          object edtRG: TEdit
            Left = 157
            Top = 76
            Width = 121
            Height = 21
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnExit = edtCPFExit
          end
          object edtBairro: TEdit
            Left = 17
            Top = 288
            Width = 653
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Color = 3288877
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 7
            OnExit = edtCPFExit
          end
        end
        object pnlAcoes: TPanel
          Left = 0
          Top = 0
          Width = 1104
          Height = 38
          Align = alTop
          BevelOuter = bvNone
          Color = 3288877
          ParentBackground = False
          TabOrder = 0
          object btnSalvar: TSpeedButton
            AlignWithMargins = True
            Left = 241
            Top = 4
            Width = 75
            Height = 25
            Action = actSalvar
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            StyleElements = [seFont, seBorder]
          end
          object btnCancelar: TSpeedButton
            AlignWithMargins = True
            Left = 320
            Top = 4
            Width = 75
            Height = 25
            Action = actCancelar
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
          end
          object btnExcluir: TSpeedButton
            AlignWithMargins = True
            Left = 162
            Top = 4
            Width = 75
            Height = 25
            Action = actExcluir
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
          end
          object btnEditar: TSpeedButton
            AlignWithMargins = True
            Left = 83
            Top = 4
            Width = 75
            Height = 25
            Action = actEditar
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
          end
          object btnNovo: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 75
            Height = 25
            Action = actNovo
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
          end
          object btnImporta: TButton
            Left = 401
            Top = 7
            Width = 75
            Height = 25
            Caption = 'Importa'
            TabOrder = 0
            Visible = False
          end
        end
      end
    end
  end
  object actSV: TActionList
    Images = imgPessoas16
    Left = 424
    Top = 8
    object actPessoas: TAction
      Caption = 'Clientes'
      ImageIndex = 0
      OnExecute = actPessoasExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 2
      OnExecute = actSairExecute
    end
  end
  object imgPessoas16: TImageList
    Left = 536
    Top = 8
    Bitmap = {
      494C010103002001040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0000000000FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0000000000FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFD
      FD0000000000000000000000000000000000FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0000000000FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000FDFDFD00FDFD
      FD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00FDFDFD00FDFDFD000000000000000000FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0000000000FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000FDFDFD00FDFD
      FD00FDFDFD00000000000000000000000000000000000000000000000000FDFD
      FD00FFFFFF00FDFDFD000000000000000000FFFFFF00FDFDFD00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFDFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FDFDFD0000000000FDFD
      FD00FFFFFF00FFFFFF00FDFDFD000000000000000000FDFDFD00FFFFFF00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FFFFFF00FDFDFD0000000000FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00000000FFFDFDFD00FDFDFD00FDFD
      FD00FDFDFD00000000FFFDFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FDFDFD0000000000FDFDFD00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD0000000000FDFDFD00FDFDFD00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FDFDFD0000000000FFFFFF00FDFDFD00FDFDFD000000
      00FFFDFDFD00000000FFFDFDFD00FDFDFD00FDFDFD00000000FF000000FFFDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00000000000000000000000000FDFDFD00FDFD
      FD00FDFDFD00000000000000000000000000FDFDFD00FFFFFF00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00000000FFFDFDFD00FDFDFD00FDFDFD00000000FFFDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FDFDFD00FDFDFD000000
      0000000000000000000000000000FDFDFD00FDFDFD0000000000000000000000
      000000000000FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FDFDFD00FDFDFD000000
      0000000000000000000000000000FDFDFD00FDFDFD0000000000000000000000
      000000000000FDFDFD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FDFDFD000000000000000000FDFDFD00FDFDFD00FDFD
      FD0000000000000000000000000000000000FDFDFD00FFFFFF00FDFDFD000000
      0000000000000000000000000000FDFDFD00FDFDFD0000000000000000000000
      000000000000FDFDFD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FFFFFF00FFFFFF00FDFDFD000000000000000000FDFDFD00FFFFFF00FFFF
      FF00FDFDFD00000000000000000000000000FDFDFD00FDFDFD00FDFDFD000000
      0000000000000000000000000000FDFDFD00FDFDFD0000000000000000000000
      000000000000FDFDFD00FDFDFD0000000000FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FFFFFF00FFFFFF00FDFDFD000000000000000000FDFDFD00FFFFFF00FFFF
      FF00FDFDFD0000000000000000000000000000000000FDFDFD00FFFFFF00FDFD
      FD00000000000000000000000000FDFDFD00FDFDFD0000000000000000000000
      0000FDFDFD00FFFFFF00FDFDFD0000000000FFFFFF00FDFDFD00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFDFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FFFFFF00FFFFFF00FDFDFD000000000000000000FDFDFD00FFFFFF00FFFF
      FF00FDFDFD000000000000000000000000000000000000000000FDFDFD00FFFF
      FF00000000000000000000000000FDFDFD00FDFDFD000000000000000000FDFD
      FD00FFFFFF00FDFDFD000000000000000000FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FFFFFF00FFFFFF00FDFDFD000000000000000000FDFDFD00FFFFFF00FFFF
      FF00FDFDFD000000000000000000000000000000000000000000FDFDFD00FDFD
      FD00000000000000000000000000FDFDFD00FDFDFD0000000000000000000000
      0000FDFDFD00FDFDFD000000000000000000FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FFFFFF00FFFFFF00FDFDFD000000000000000000FDFDFD00FFFFFF00FFFF
      FF00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FDFDFD0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD0000000000000000000000000000000000FDFDFD00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FDFDFD0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF000020F81FFFFF00000020F00F00000000
      0020C003000000000020C7E33FFC000000218FF10084000080411FF914600000
      E1C71FF804400000FFFF1E7800000000FFFF1E7800000000F18F1E7800000000
      E1871E7900000000E1878E713FFC0000E187CE6300000000E187CE7300000000
      E187FE7FFFFF0000F3CFFE7FFFFF000000000000000000000000000000000000
      000000000000}
  end
  object imgAgenda32: TImageList
    Height = 32
    Width = 32
    Left = 744
    Top = 10
    Bitmap = {
      494C010106000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8B8
      B80067676700363636001D1D1D000000000001010100202020003A3A3A006E6E
      6E00C0C0C0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCDCDC00858585001F1F1F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000262626008E8E8E00000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585001C1C1C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000262626009191910000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9E9E
      9E00CECECE00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000046464600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000057575700000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF9E9E9E000000
      00000E0E0E00CECECE00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFCFCF002A2A2A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000037373700DDDD
      DD0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF9E9E9E00000000000000
      0000000000009E9E9E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      390000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFCECE
      CE007E7E7E007E7E7E004E4E4E007E7E7E009E9E9E00BEBEBE00000000FF0000
      00FF000000FF000000FF000000FF000000FF9E9E9E0000000000000000000000
      00009E9E9E00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004444
      4400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059595900000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF7E7E7E001E1E1E000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E00000000FF000000FF000000FF9E9E9E000000000000000000000000009E9E
      9E00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000878787000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009D9D9D000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFBEBEBE001E1E1E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E009E9E9E009E9E9E000000000000000000000000009E9E9E000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A000000
      0000000000000000000000000000000000000000000063636300A1A1A1000B0B
      0B00000000000000000000000000000000000000000000000000000000000000
      000018181800A8A8A80051515100000000000000000000000000000000000000
      0000000000002A2A2A000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF9E9E9E000000000000000000000000000F0F0F005F5F
      5F00AFAFAF00DEDEDE00000000FFCECECE00AFAFAF007F7F7F001F1F1F000000
      000000000000000000000000000000000000000000009E9E9E00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000083838300000000000000
      000000000000000000000000000000000000626262000000000000000000AAAA
      AA00080808000000000000000000000000000000000000000000000000001111
      1100BBBBBB000000000000000000515151000000000000000000000000000000
      000000000000000000009898980000000000000000FF000000FF000000FF0000
      00FF000000FF9E9E9E000000000000000000000000006F6F6F00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7E7E
      7E00000000000000000000000000000000009E9E9E00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1F1F00000000000000
      000000000000000000000000000000000000A5A5A50000000000000000000000
      0000ADADAD000A0A0A000000000000000000000000000000000016161600C0C0
      C0000000000000000000000000008B8B8B000000000000000000000000000000
      000000000000000000003939390000000000000000FF000000FF000000FF0000
      00FFCECECE000000000000000000000000009E9E9E00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFCECECE002F2F2F0000000000000000009E9E9E00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7B7B70000000000000000000000
      0000000000000000000000000000000000000D0D0D00A7A7A700000000000000
      000000000000AAAAAA0009090900000000000000000015151500BEBEBE000000
      0000000000000000000096969600090909000000000000000000000000000000
      0000000000000000000002020200CFCFCF00000000FF000000FF000000FF0000
      00FF3E3E3E0000000000000000009E9E9E00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFCECECE0000000000000000000E0E0E00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006868680000000000000000000000
      0000000000000000000000000000000000000000000008080800AAAAAA000000
      00000000000000000000A6A6A600050505000C0C0C00B8B8B800000000000000
      0000000000009898980000000000000000000000000000000000000000000000
      000000000000000000000000000085858500000000FF000000FF000000FFBEBE
      BE0000000000000000003F3F3F00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7E7E7E0000000000000000007E7E7E00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003737370000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B00ADAD
      AD00000000000000000000000000A9A9A900B9B9B90000000000000000000000
      00009A9A9A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000053535300000000FF000000FF000000FF5E5E
      5E000000000000000000DEDEDE00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF1E1E1E000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1D1D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      0800ABABAB000000000000000000000000000000000000000000000000009898
      9800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039393900000000FF000000FF000000FF0E0E
      0E00000000002F2F2F00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7E7E7E000000000000000000BEBEBE000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7A7A70000000000000000000000000000000000969696000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1A00000000FF000000FFCECECE000000
      0000000000007E7E7E00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFAEAEAE0000000000000000009E9E9E000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C00B6B6B60000000000000000000000000000000000A4A4A4000202
      0200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E1E1E00000000FF000000FFBEBEBE000000
      0000000000007E7E7E00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCECECE0000000000000000007E7E7E000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002020200000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200BDBDBD00000000000000000000000000000000000000000000000000ABAB
      AB00080808000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003C3C3C00000000FF000000FFBEBEBE000000
      000000000000AEAEAE00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004E4E4E000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003939390000000000000000000000
      000000000000000000000000000000000000000000000000000016161600C0C0
      C00000000000000000000000000096969600A6A6A60000000000000000000000
      0000ADADAD000B0B0B0000000000000000000000000000000000000000000000
      000000000000000000000000000056565600000000FF000000FFBEBEBE000000
      0000000000007E7E7E00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFDEDEDE0000000000000000007E7E7E000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F6F6F0000000000000000000000
      0000000000000000000000000000000000000000000014141400BDBDBD000000
      00000000000000000000959595000000000004040400A6A6A600000000000000
      000000000000AAAAAA0008080800000000000000000000000000000000000000
      00000000000000000000000000008C8C8C00000000FF000000FFDEDEDE000000
      0000000000005E5E5E00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFAEAEAE0000000000000000007E7E7E000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      00000000000000000000000000000000000019191900B8B8B800000000000000
      0000000000009898980000000000000000000000000009090900AAAAAA000000
      00000000000000000000A7A7A700111111000000000000000000000000000000
      0000000000000000000005050500D5D5D500000000FF000000FF000000FF1E1E
      1E00000000000E0E0E00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF5E5E5E000000000000000000CECECE000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026262600000000000000
      000000000000000000000000000000000000ADADAD0000000000000000000000
      00009A9A9A0001010100000000000000000000000000000000000A0A0A00ADAD
      AD00000000000000000000000000929292000000000000000000000000000000
      000000000000000000004040400000000000000000FF000000FF000000FF6E6E
      6E0000000000000000009E9E9E00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0E0E0E00000000001F1F1F00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008D8D8D00000000000000
      0000000000000000000000000000000000005050500000000000000000009797
      9700010101000000000000000000000000000000000000000000000000000808
      0800AAAAAA0000000000DDDDDD00404040000000000000000000000000000000
      00000000000000000000A1A1A10000000000000000FF000000FF000000FFDEDE
      DE0000000000000000001E1E1E00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF6E6E6E0000000000000000007E7E7E00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000242424000000
      0000000000000000000000000000000000000000000052525200888888000303
      0300000000000000000000000000000000000000000000000000000000000000
      00000F0F0F008C8C8C0041414100000000000000000000000000000000000000
      000000000000343434000000000000000000000000FF000000FF000000FF0000
      00FF5E5E5E0000000000000000004E4E4E00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF9E9E9E0000000000000000001F1F1F00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000939393000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A9000000000000000000000000FF000000FF000000FF0000
      00FF000000FF2F2F2F0000000000000000004E4E4E00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF9E9E9E00000000000000000000000000BEBEBE00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B00000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFCECECE000F0F0F0000000000000000001E1E1E009E9E9E000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFCECECE003E3E
      3E000000000000000000000000009E9E9E00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000353535000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004949
      490000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFCECECE002F2F2F000000000000000000000000000E0E
      0E005E5E5E007E7E7E00AEAEAE007E7E7E007E7E7E002E2E2E00000000000000
      0000000000000F0F0F009E9E9E00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE003C3C3C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B4B4B000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF5F5F5F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003F3F3F00CECECE00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6C00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFDEDEDE006F6F6F001F1F
      1F0000000000000000000000000000000000000000000F0F0F005F5F5F00BEBE
      BE00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A9A9A002D2D2D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000038383800A6A6A60000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFDEDEDE00BFBFBF00BFBFBF00BFBFBF00CECECE00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000098989800393939000202
      0200000000000000000000000000000000000000000000000000000000000000
      00000505050041414100A1A1A100000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      CF008585850052525200393939001D1D1D001D1D1D003C3C3C00565656008C8C
      8C00D6D6D6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F8F8F001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C1C1C009F9F9F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000085858500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B9B9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000272727000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001010100DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F0F0F003F3F3F002F2F2F0000000000000000000000
      00001F1F1F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F00000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3E0000000000000000005E5E5E00000000000000
      00000E0E0E00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E2E2E000000000000000000000000005E5E5E000000
      0000000000000E0E0E00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE003E3E3E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E0000000000000000005E5E5E000000000000000000000000005E5E
      5E0000000000000000000E0E0E00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE000E0E0E00000000002E2E2E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE000F0F0F0000000000000000005E5E5E0000000000000000000000
      00005E5E5E0000000000000000000E0E0E00CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE000E0E
      0E000000000000000000000000002E2E2E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE000F0F0F0000000000000000005E5E5E00000000000000
      0000000000005E5E5E0000000000000000000E0E0E00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE000E0E0E000000
      0000000000000F0F0F0000000000000000002E2E2E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE000F0F0F0000000000000000005E5E5E000000
      000000000000000000005E5E5E0000000000000000000E0E0E00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE000E0E0E00000000000000
      00005F5F5F00000000002F2F2F0000000000000000002E2E2E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE000F0F0F0000000000000000005E5E
      5E000000000000000000000000005E5E5E0000000000000000000E0E0E00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE000E0E0E0000000000000000005F5F
      5F000000000000000000000000002F2F2F0000000000000000002E2E2E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE008E8E8E0000000000000000008E8E8E00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE000F0F0F00000000000000
      00005E5E5E000000000000000000000000005E5E5E0000000000000000000E0E
      0E00CECECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE000E0E0E0000000000000000005F5F5F000000
      0000000000000000000000000000000000002F2F2F0000000000000000002E2E
      2E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE000F0F0F000000
      0000000000005E5E5E000000000000000000000000005E5E5E00000000000000
      00000E0E0E00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE000E0E0E0000000000000000005F5F5F00000000000000
      000000000000000000000000000000000000000000002F2F2F00000000000000
      00002E2E2E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE000F0F
      0F0000000000000000005E5E5E000000000000000000000000005E5E5E000000
      0000000000000E0E0E00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000001E1E1E0000000000000000005F5F5F0000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F000000
      0000000000002E2E2E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF008F8F8F0000000000000000008F8F8F00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE000F0F0F0000000000000000005E5E5E000000000000000000000000005E5E
      5E0000000000000000000E0E0E00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE000F0F0F005F5F5F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F2F
      2F0000000000000000002E2E2E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE000F0F0F0000000000000000005E5E5E0000000000000000000000
      00005E5E5E0000000000000000000E0E0E00CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F2F0000000000000000002E2E2E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE000F0F0F0000000000000000005E5E5E00000000000000
      00009E9E9E000000000000000000000000000E0E0E00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002F2F2F0000000000000000002E2E2E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE000F0F0F0000000000000000005E5E5E009E9E
      9E0000000000000000000000000000000000000000000E0E0E00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F2F2F0000000000000000002E2E2E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE000F0F0F0000000000000000000000
      000000000000000000009E9E9E005E5E5E0000000000000000000E0E0E00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F0000000000000000002E2E2E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE000F0F0F00000000000000
      0000000000009E9E9E0000000000000000005E5E5E0000000000000000001E1E
      1E00000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F2F2F00000000000F0F0F00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE000F0F0F000000
      0000000000005E5E5E0000000000000000002E2E2E0000000000000000003F3F
      3F00000000000000000000000000000000000000000000000000000000000000
      000000000000D5D5D50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3F00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE000F0F
      0F0000000000000000005E5E5E002E2E2E0000000000000000002F2F2F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDCDC0023232300232323002323230023232300232323002323
      2300232323002323230023232300232323002323230023232300232323002323
      230023232300232323002323230023232300232323002323230023232300DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBFBF00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE000F0F0F00000000000000000000000000000000002F2F2F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE000F0F0F0000000000000000002F2F2F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2
      A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2
      A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2
      A200A2A2A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE000F0F0F002F2F2F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D5009B9B9B000D0D
      0D00000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D009B9B9B00D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900060606000000000000000000000000000000000000000000000000000000
      0000060606009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFE007FFFFFFFFFF0000000000000000
      FF0001FFFFFFFFFF0000000000000000FE00007FFFFFFFE70000000000000000
      FC00003FFFFFFFC30000000000000000F000000FFFFFFF830000000000000000
      F000000FFFE03F070000000000000000E0000007FF800E0F0000000000000000
      C0000003FE00001F0000000000000000C0000003FC02003F0000000000000000
      80600601F83FE07F000000000000000080700E01F07FF07F0000000000000000
      00381C00F0FFF87F0000000000000000001C3800E1FFFC3F0000000000000000
      000E7000E1FFFE3F00000000000000000007E000E3FFFE1F0000000000000000
      0003C000C3FFFE1F00000000000000000003C000C3FFFE1F0000000000000000
      0007E000C3FFFF1F0000000000000000000E7000C3FFFE1F0000000000000000
      001C3800C3FFFE1F000000000000000000381C00E3FFFE1F0000000000000000
      80700E01E1FFFE3F000000000000000080600401E1FFFC3F0000000000000000
      C0000003F0FFF87F0000000000000000C0000003F87FF07F0000000000000000
      E0000007F81FC0FF0000000000000000F000000FFC0001FF0000000000000000
      F000001FFF0003FF0000000000000000FC00003FFF800FFF0000000000000000
      FE00007FFFF07FFF0000000000000000FF8001FFFFFFFFFF0000000000000000
      FFE007FFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFFFE00003FFFFFFFFF
      FFFFFFFFFFFFFFFFFC00001FFFFFFFFFFFFFFFFFFFFFFFFFFC00001FFFFFFFFF
      FFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFF000000FF800000FFFFFFFFF
      FFFFFFFFF000000FF800000FFFFFFFFFFFFE7FFFF000000FF800000FFFFFFFFF
      FFFC3FFFF183FFFFF800000FFFFFFFFFFFFC3FFFF1C1FFFFF800000FFFF3FFFF
      FFFC3FFFF0E0FFFFF800000FFFE1FFFFFFFC3FFFF0707FFFF800000FFFC0FFFF
      FFFC3FFFF8383FFFF800000FFF807FFFFFFC3FFFFC1C1FFFF800000FFF043FFF
      FFFC3FFFFE0E0FFFF800000FFE0E1FFFFE00007FFF0707FFF800000FFC1F0FFF
      FC00003FFF8383FFF800000FF83F87FFFC00003FFFC1C1FFF800000FF87FC3FF
      FE00007FFFE0E0FFF800000FF8FFE1FFFFFC3FFFFFF0707FF800000FFDFFF0FF
      FFFC3FFFFFF8303FF800000FFFFFF87FFFFC3FFFFFFC001FF800000FFFFFFC3F
      FFFC3FFFFFFE000FF800000FFFFFFE1FFFFC3FFFFFFF030FF800000FFFFFFF0F
      FFFC3FFFFFFF830FF800000FFFFFFF9FFFFC3FFFFFFFC01FF800000FFFFFFFFF
      FFFE7FFFFFFFE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FF0000007FFFFFFFF
      FFFFFFFFFFFFF8FFF0000007FFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFF
      FFFFFFFFFFFFFFFFF0000007FFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFF
      FFFFFFFFFFFFFFFFFFE003FFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsPessoas: TDataSource
    DataSet = qryPessoas
    Left = 608
    Top = 11
  end
  object qryPessoas: TFDQuery
    Connection = DM.conSGCP
    SQL.Strings = (
      'SELECT          '
      '  P.CODIGO,     '
      '  P.CPF,        '
      '  P.RG,         '
      '  P.NOME,       '
      '  P.TELEFONE,   '
      '  P.CEP,        '
      '  P.LOGRADOURO, '
      '  P.BAIRRO,     '
      '  P.LOCALIDADE, '
      '  P.UF          '
      'FROM            '
      '  PESSOAS P     '
      'ORDER BY'
      '  P.CODIGO')
    Left = 677
    Top = 11
  end
  object actCadastro: TActionList
    Images = imgCadastro16
    Left = 949
    Top = 11
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      ImageIndex = 1
      OnExecute = actEditarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 2
      OnExecute = actExcluirExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      ImageIndex = 3
      OnExecute = actSalvarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      OnExecute = actCancelarExecute
    end
    object actPesquisar: TAction
      Caption = 'Pesquisar'
      ImageIndex = 5
    end
  end
  object imgCadastro16: TImageList
    Left = 1021
    Top = 11
    Bitmap = {
      494C010106000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B9B9B003939390005050500060606003D3D3D00A0A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008B8B8B00D9D9D9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEBE
      BE003C3C3C000202020000000000000000000000000000000000030303004141
      4100C5C5C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C7C7C00000000008D8D8D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000989898000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010100A2A2A20000000000000000000000000000000000000000000000
      0000AAAAAA004F4F4F0018181800161616003D3D3D007B7B7B00000000000000
      000076767600000000007D7D7D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C8C8C800000000000000000000000000000000004747
      47000000000014141400595959005D5D5D003333330000000000151515005959
      5900000000007676760000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000038383800000000000000
      00005B5B5B008D8D8D0000000000000000000000000000000000919191005252
      5200000000000000000042424200000000000000000000000000363636000000
      00009C9C9C0000000000000000000000000000000000D3D3D300383838000000
      0000565656000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E9E9E0000000000000000000000
      00008D8D8D00000000009090900000000000000000009C9C9C00000000008282
      8200000000000000000004040400AEAEAE00000000007C7C7C0000000000B9B9
      B900000000000000000000000000000000000000000000000000000000003939
      3900161616000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003636360000000000000000000000
      0000000000009090900000000000858585008E8E8E0000000000858585000000
      00000000000000000000000000004A4A4A000000000010101000606060000000
      000000000000000000000000000000000000000000000000000000000000D9D9
      D900000000007A7A7A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505050000000000000000000000
      000000000000000000008585850000000000000000007C7C7C00000000000000
      000000000000000000000000000017171700A1A1A10000000000BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000323232003838380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060000000000000000000000
      000000000000000000008E8E8E00000000000000000084848400000000000000
      0000000000000000000000000000191919008080800005050500D8D8D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005D5D5D001616160000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A3A3A0000000000000000000000
      0000000000009B9B9B00000000007B7B7B008383830000000000909090000000
      00000000000000000000000000004D4D4D008888880001010100D0D0D0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000585858001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A40001010100000000000000
      0000939393000000000085858500000000000000000090909000000000008585
      8500000000000000000004040400B3B3B300C4C4C40000000000949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000161616004C4C4C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003D3D3D00000000000000
      0000525252007F7F7F0000000000000000000000000000000000848484004949
      490000000000000000004747470000000000000000003A3A3A00181818000000
      0000000000000000000000000000000000000000000000000000000000009A9A
      9A0000000000AEAEAE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005050500CDCDCD000000000000000000C3C3C300000000004A4A
      4A00000000000000000000000000000000000000000000000000B8B8B8000000
      0000474747000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A2A2A2000202
      0200000000000000000000000000000000000000000000000000000000000000
      000005050500ACACAC0000000000000000000000000000000000959595000000
      00001919190095959500CCCCCC00D8D8D800B8B8B8005C5C5C00000000003535
      3500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C700464646000707070000000000000000000000000000000000080808004C4C
      4C00CDCDCD00000000000000000000000000000000000000000000000000BFBF
      BF003E3E3E000000000001010100070707000000000015151500808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ABABAB004D4D4D00171717001919190051515100B0B0B0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C2C2C2008C8C8C0081818100A2A2A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B0B0B000B0B0B00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000088888800AFAFAF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000141414001414140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC000000000027272700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003636360000000000000000006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      630063636300000000004F4F4F009F9F9F009F9F9F009F9F9F009F9F9F009F9F
      9F009F9F9F009F9F9F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007D7D
      7D0000000000060606000202020000000000B4B4B40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000030303006363
      6300FFFFFF006F6F6F0003030300ABABAB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3C3C3000000
      000000000000A8A8A80072727200000000002121210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000161616001616160000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB000404
      04006F6F6F00FFFFFF006F6F6F0003030300ABABAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002D2D2D000000
      0000565656000000000000000000222222000000000061616100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4D4D4001313130013131300D4D4D400000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      AB00040404006F6F6F00FFFFFF006F6F6F0003030300ABABAB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077777700000000001A1A
      1A00000000000000000000000000B5B5B5000000000000000000ABABAB000000
      000000000000000000000000000000000000B0B0B00015151500151515001515
      1500151515001616160013131300010101000101010013131300161616001515
      1500151515001515150015151500B0B0B0000000000000000000000000000000
      0000ABABAB00040404006F6F6F00FFFFFF006F6F6F0003030300ABABAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD000202020000000000A6A6
      A600000000000000000000000000000000006C6C6C00000000001A1A1A000000
      000000000000000000000000000000000000B0B0B00015151500151515001515
      1500151515001717170013131300020202000202020013131300171717001515
      1500151515001515150015151500B0B0B0000000000000000000000000000000
      000000000000ABABAB00040404006F6F6F00FFFFFF006F6F6F0003030300ABAB
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000019191900000000005F5F5F000000
      000000000000000000000000000000000000000000002A2A2A00000000005757
      5700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5D5D5001414140014141400D5D5D500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ABABAB00040404006F6F6F00FFFFFF003F3F3F000303
      0300ABABAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A2A20027272700000000000000
      00000000000000000000000000000000000000000000BEBEBE00000000000000
      0000A0A0A0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000161616001616160000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ABABAB00040404003F3F3F00000000003F3F
      3F0003030300ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000767676000000
      0000131313000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00040404003F3F3F00FBFB
      FB00232323001717170000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      3200000000004D4D4D0000000000000000000000000000000000000000000000
      0000000000000000000000000000151515001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABAB00040404002323
      23000C0C0C00C3C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C70001010100000000009A9A9A00000000000000000000000000000000000000
      0000000000000000000000000000151515001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB001010
      1000C3C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCDCDC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000818181000000000015151500D1D1D1000000000000000000000000000000
      0000000000000000000000000000141414001414140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003939390000000000ADADAD000000000000000000000000000000
      0000000000000000000000000000B1B1B100B1B1B10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C0008080800000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00F81FFFFC00000000E007FFF800000000
      C003F031000000008001E003000000008001C7870000000004208FE700000000
      02409FE30000000001801FF30000000001801FF30000000002401FF300000000
      04201FF30000000080019FE30000000080018FC700000000C003C00F00000000
      E007E01F00000000F81FF87F00000000FE7FFFFFFFFFF9FFFE7FFFFFFFFFF1FF
      FE7FC003FFFFF0FFFE7FC003E00FE07FFE7FC0FFEFEFC07FFE7FC07FEAAFC63F
      FC3FE03FEAAF8E1F0000F01FEAAF0F1F0000F80FEAAF1F8FFC3FFC07EAAF3F87
      FE7FFE03EFEFFFC7FE7FFF03EFEFFFE3FE7FFF83C007FFE1FE7FFFC7F83FFFF0
      FE7FFFFFFC7FFFF8FE7FFFFFFFFFFFF900000000000000000000000000000000
      000000000000}
  end
  object qryAux: TFDQuery
    Connection = DM.conSGCP
    Left = 824
    Top = 8
  end
  object qryGrava: TFDQuery
    Connection = DM.conSGCP
    Left = 880
    Top = 8
  end
  object JvBalloonHint1: TJvBalloonHint
    Left = 652
    Top = 175
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://viacep.com.br/ws/01001000/json'
    Params = <>
    Left = 88
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 160
    Top = 8
  end
  object RESTResponse1: TRESTResponse
    Left = 232
    Top = 16
  end
end
