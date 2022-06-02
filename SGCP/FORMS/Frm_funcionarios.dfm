object Frm_funcionarios: TFrm_funcionarios
  Left = 326
  Top = 173
  BorderStyle = bsSingle
  Caption = 'a principio '
  ClientHeight = 576
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClick = FormClick
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_setor: TLabel
    Left = 381
    Top = 76
    Width = 36
    Height = 13
    Caption = 'Setor:'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 764
    Height = 496
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object suiImagePanel2: TsuiImagePanel
        Left = 0
        Top = 0
        Width = 756
        Height = 468
        AutoSize = False
        Align = alClient
        TabOrder = 0
        Color = clSkyBlue
        DrawStyle = suiNormal
        object lbl_tipo_tabela: TLabel
          Left = 431
          Top = 61
          Width = 85
          Height = 13
          Caption = 'Tipo Cadastro:'
          Visible = False
        end
        object lbl_codigo: TLabel
          Left = 98
          Top = 22
          Width = 45
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object lbl_nome: TLabel
          Left = 107
          Top = 87
          Width = 38
          Height = 13
          Caption = 'Nome:'
        end
        object lbl_datanascimento: TLabel
          Left = 74
          Top = 200
          Width = 71
          Height = 13
          Caption = 'Nascimento:'
        end
        object lbl_endereco: TLabel
          Left = 87
          Top = 141
          Width = 58
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object lbl_cep: TLabel
          Left = 529
          Top = 170
          Width = 28
          Height = 13
          Caption = 'Cep:'
        end
        object lbl_bairro: TLabel
          Left = 105
          Top = 171
          Width = 40
          Height = 13
          Caption = 'Bairro:'
        end
        object lbl_rg: TLabel
          Left = 470
          Top = 32
          Width = 22
          Height = 13
          Caption = 'RG:'
        end
        object lbl_cpf_cgc: TLabel
          Left = 87
          Top = 58
          Width = 58
          Height = 13
          Caption = 'CPF/CNPJ:'
        end
        object lbl_filiacaopai: TLabel
          Left = 68
          Top = 230
          Width = 77
          Height = 13
          Caption = 'Nome do Pai:'
        end
        object lbl_filiacaomae: TLabel
          Left = 62
          Top = 260
          Width = 83
          Height = 13
          Caption = 'Nome da M'#227'e:'
        end
        object lbl_conjuge: TLabel
          Left = 37
          Top = 290
          Width = 108
          Height = 13
          Caption = 'Nome do Conjuge:'
          Visible = False
        end
        object Label6: TLabel
          Left = 66
          Top = 313
          Width = 79
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label21: TLabel
          Left = 257
          Top = 198
          Width = 38
          Height = 13
          HelpType = htKeyword
          Caption = 'Fones:'
          Visible = False
        end
        object Label22: TLabel
          Left = 95
          Top = 114
          Width = 49
          Height = 13
          Caption = 'Telefone'
        end
        object Label23: TLabel
          Left = 438
          Top = 114
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Edit_codigo: TCurrencyEdit
          Left = 150
          Top = 11
          Width = 74
          Height = 35
          AutoSize = False
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -24
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ZeroEmpty = False
        end
        object Edit_nome: TEdit
          Left = 150
          Top = 83
          Width = 509
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 3
          OnEnter = Edit_nomeEnter
          OnExit = Edit_nomeExit
        end
        object Edit_datanascimento: TDateEdit
          Left = 150
          Top = 194
          Width = 93
          Height = 21
          NumGlyphs = 2
          TabOrder = 9
          OnEnter = Edit_datanascimentoEnter
        end
        object Edit_endereco: TEdit
          Left = 150
          Top = 137
          Width = 509
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 6
          OnEnter = Edit_enderecoEnter
        end
        object Edit_cep: TEdit
          Left = 560
          Top = 166
          Width = 99
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 9
          TabOrder = 8
          OnEnter = Edit_cepEnter
          OnExit = Edit_cepExit
        end
        object Edit_rg: TEdit
          Left = 500
          Top = 28
          Width = 159
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 15
          TabOrder = 1
          OnEnter = Edit_rgEnter
          OnExit = Edit_rgExit
        end
        object Edit_tipo_tabela: TsuiComboBox
          Left = 515
          Top = 59
          Width = 144
          Height = 21
          UIStyle = MacOS
          BorderColor = 8355711
          ArrowColor = clBlack
          ButtonColor = 15198183
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 15
          Visible = False
          OnExit = Edit_tipo_tabelaExit
        end
        object Edit_filiacaopai: TEdit
          Left = 150
          Top = 227
          Width = 509
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 11
          OnEnter = Edit_filiacaopaiEnter
        end
        object Edit_filiacaomae: TEdit
          Left = 150
          Top = 257
          Width = 509
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 12
          OnEnter = Edit_filiacaomaeEnter
        end
        object Edit_conjuge: TEdit
          Left = 150
          Top = 286
          Width = 509
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 13
          Visible = False
          OnEnter = Edit_conjugeEnter
          OnExit = Edit_conjugeExit
          OnKeyPress = Edit_conjugeKeyPress
        end
        object Edit_superfiltro: TEdit
          Left = 667
          Top = 203
          Width = 374
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 16
          Visible = False
          OnExit = Edit_conjugeExit
        end
        object Edit_superagenda: TEdit
          Left = 667
          Top = 233
          Width = 374
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 17
          Visible = False
          OnExit = Edit_conjugeExit
        end
        object StatusBar1: TStatusBar
          Left = 0
          Top = 449
          Width = 756
          Height = 19
          Color = clMoneyGreen
          Panels = <
            item
              Width = 250
            end
            item
              Width = 250
            end
            item
              Width = 250
            end>
        end
        object Edit_obs: TsuiMemo
          Left = 149
          Top = 313
          Width = 509
          Height = 125
          UIStyle = MacOS
          BorderColor = 8355711
          Lines.Strings = (
            '')
          TabOrder = 14
          OnEnter = Edit_obsEnter
          OnExit = Edit_obsExit
        end
        object Edit_bairro: TComboBox
          Left = 150
          Top = 166
          Width = 311
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 7
          Text = 'EDIT_BAIRRO'
          OnEnter = Edit_bairroEnter
          OnExit = Edit_bairroExit
        end
        object Edit_cpf_cgc: TEdit
          Left = 150
          Top = 55
          Width = 121
          Height = 21
          TabOrder = 2
          Text = 'Edit_cpf_cgc'
          OnEnter = Edit_cpf_cgcEnter
          OnExit = Edit_cpf_cgcExit
        end
        object Edit_fones: TEdit
          Left = 302
          Top = 194
          Width = 356
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          ReadOnly = True
          TabOrder = 10
          Visible = False
          OnEnter = Edit_enderecoEnter
        end
        object Edit_fone_01: TEdit
          Left = 151
          Top = 110
          Width = 164
          Height = 21
          Enabled = False
          TabOrder = 4
          OnEnter = Edit_fone_01Enter
          OnExit = Edit_fone_01Exit
        end
        object Edit_descricao_01: TEdit
          Left = 496
          Top = 110
          Width = 164
          Height = 21
          Enabled = False
          TabOrder = 5
          OnExit = Edit_descricao_01Exit
        end
        object ListBox1: TListBox
          Left = 659
          Top = 112
          Width = 10
          Height = 10
          ItemHeight = 13
          TabOrder = 19
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Pessoais'
      Enabled = False
      object DBText1: TDBText
        Left = 0
        Top = 0
        Width = 756
        Height = 17
        Align = alTop
        Alignment = taCenter
        Color = clSkyBlue
        DataField = 'nome'
        DataSource = DTS_funcionarios
        ParentColor = False
      end
      object suiImagePanel1: TsuiImagePanel
        Left = 0
        Top = 17
        Width = 756
        Height = 451
        AutoSize = False
        Align = alClient
        TabOrder = 0
        Color = clSkyBlue
        DrawStyle = suiNormal
        object lbl_dataadmissao: TLabel
          Left = 6
          Top = 6
          Width = 109
          Height = 13
          Caption = 'Data de Admiss'#227'o:'
          Visible = False
        end
        object lbl_banco: TLabel
          Left = 75
          Top = 67
          Width = 40
          Height = 13
          Caption = 'Banco:'
          Visible = False
        end
        object lbl_agencia: TLabel
          Left = 289
          Top = 67
          Width = 50
          Height = 13
          Caption = 'Ag'#234'ncia:'
          Visible = False
        end
        object lbl_contacorrente: TLabel
          Left = 459
          Top = 67
          Width = 94
          Height = 13
          Caption = 'Conta Corrente:'
          Visible = False
        end
        object lbl_usointernolunav: TLabel
          Left = 29
          Top = 90
          Width = 86
          Height = 13
          Caption = 'Carga Hor'#225'ria:'
          Visible = False
        end
        object lbl_funcao: TLabel
          Left = 70
          Top = 34
          Width = 45
          Height = 13
          Caption = 'Funcao:'
          Visible = False
        end
        object lbl_horario: TLabel
          Left = 68
          Top = 119
          Width = 47
          Height = 13
          Caption = 'Hor'#225'rio:'
          Visible = False
        end
        object lbl_datademissao: TLabel
          Left = 1
          Top = 148
          Width = 114
          Height = 13
          Caption = 'Data Desligamento:'
          Visible = False
        end
        object lbl_senha: TLabel
          Left = 74
          Top = 177
          Width = 41
          Height = 13
          Caption = 'Senha:'
          Visible = False
        end
        object Label7: TLabel
          Left = 374
          Top = 34
          Width = 36
          Height = 13
          Caption = 'Setor:'
          Visible = False
        end
        object Label15: TLabel
          Left = 49
          Top = 311
          Width = 66
          Height = 13
          Caption = 'Justificativa'
          Visible = False
        end
        object Label16: TLabel
          Left = 60
          Top = 327
          Width = 55
          Height = 13
          Caption = 'Exclus'#227'o:'
          Visible = False
        end
        object lbl_titulo: TLabel
          Left = 109
          Top = 260
          Width = 36
          Height = 13
          Caption = 'Titulo:'
          Visible = False
        end
        object lbl_seccao: TLabel
          Left = 354
          Top = 260
          Width = 46
          Height = 13
          Caption = 'Sec'#231#227'o:'
          Visible = False
        end
        object lbl_dataemissao: TLabel
          Left = 428
          Top = 230
          Width = 83
          Height = 13
          Caption = 'Data Emissao:'
          Visible = False
        end
        object lbl_zona: TLabel
          Left = 536
          Top = 260
          Width = 34
          Height = 13
          Caption = 'Zona:'
          Visible = False
        end
        object lbl_pis: TLabel
          Left = 120
          Top = 289
          Width = 25
          Height = 13
          Caption = 'PIS:'
          Visible = False
        end
        object Edit_dataadmissao: TDateEdit
          Left = 118
          Top = 5
          Width = 145
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
          Visible = False
          OnEnter = Edit_dataadmissaoEnter
          OnExit = Edit_dataadmissaoExit
        end
        object Edit_agencia: TEdit
          Left = 342
          Top = 63
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 4
          Visible = False
          OnEnter = Edit_agenciaEnter
          OnExit = Edit_dataadmissaoExit
        end
        object Edit_contacorrente: TEdit
          Left = 556
          Top = 63
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 12
          TabOrder = 5
          Visible = False
          OnEnter = Edit_contacorrenteEnter
          OnExit = Edit_dataadmissaoExit
        end
        object Edit_usointernolunav: TEdit
          Left = 118
          Top = 90
          Width = 310
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 30
          TabOrder = 6
          Visible = False
          OnEnter = Edit_usointernolunavEnter
          OnExit = Edit_dataadmissaoExit
        end
        object Edit_horario: TEdit
          Left = 118
          Top = 119
          Width = 310
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 30
          TabOrder = 7
          Visible = False
          OnEnter = Edit_horarioEnter
          OnExit = Edit_dataadmissaoExit
        end
        object Edit_datademissao: TDateEdit
          Left = 118
          Top = 148
          Width = 145
          Height = 21
          NumGlyphs = 2
          TabOrder = 8
          Visible = False
          OnEnter = Edit_datademissaoEnter
          OnExit = Edit_dataadmissaoExit
        end
        object Edit_senha: TEdit
          Left = 118
          Top = 177
          Width = 210
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 9
          Visible = False
        end
        object Edit_funcao: TsuiComboBox
          Left = 118
          Top = 32
          Width = 231
          Height = 21
          UIStyle = MacOS
          BorderColor = 8355711
          ArrowColor = clBlack
          ButtonColor = 15198183
          CharCase = ecUpperCase
          ItemHeight = 0
          TabOrder = 1
          Visible = False
          OnEnter = Edit_funcaoEnter
          OnExit = Edit_funcaoExit
        end
        object Edit_setor: TsuiComboBox
          Left = 413
          Top = 31
          Width = 273
          Height = 21
          UIStyle = MacOS
          BorderColor = 8355711
          ArrowColor = clBlack
          ButtonColor = 15198183
          CharCase = ecUpperCase
          ItemHeight = 0
          MaxLength = 30
          TabOrder = 2
          Visible = False
          OnEnter = Edit_setorEnter
          OnExit = Edit_nomeExit
        end
        object Edit_banco: TsuiComboBox
          Left = 118
          Top = 63
          Width = 153
          Height = 21
          UIStyle = MacOS
          BorderColor = 8355711
          ArrowColor = clBlack
          ButtonColor = 15198183
          CharCase = ecUpperCase
          ItemHeight = 0
          TabOrder = 3
          Visible = False
        end
        object edit_obs_exclusao: TsuiMemo
          Left = 121
          Top = 315
          Width = 576
          Height = 98
          UIStyle = MacOS
          BorderColor = 8355711
          Color = clBtnFace
          Enabled = False
          Lines.Strings = (
            '')
          TabOrder = 10
          Visible = False
        end
        object Edit_titulo: TEdit
          Left = 150
          Top = 256
          Width = 159
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 15
          TabOrder = 11
          Visible = False
          OnEnter = Edit_tituloEnter
          OnExit = Edit_nomeExit
        end
        object Edit_seccao: TEdit
          Left = 406
          Top = 256
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 5
          TabOrder = 12
          Visible = False
          OnEnter = Edit_seccaoEnter
          OnExit = Edit_nomeExit
        end
        object Edit_dataemissao: TDateEdit
          Left = 515
          Top = 226
          Width = 144
          Height = 21
          NumGlyphs = 2
          TabOrder = 13
          Visible = False
          OnEnter = Edit_dataemissaoEnter
          OnExit = Edit_nomeExit
        end
        object Edit_zona: TEdit
          Left = 582
          Top = 256
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 5
          TabOrder = 14
          Visible = False
          OnEnter = Edit_zonaEnter
          OnExit = Edit_nomeExit
        end
        object Edit_pis: TEdit
          Left = 150
          Top = 285
          Width = 149
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 14
          TabOrder = 15
          Visible = False
          OnEnter = Edit_pisEnter
          OnExit = Edit_nomeExit
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Consultas'
      object suiImagePanel5: TsuiImagePanel
        Left = 0
        Top = 0
        Width = 756
        Height = 468
        AutoSize = False
        Align = alClient
        TabOrder = 7
        Color = clSkyBlue
        DrawStyle = suiNormal
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 2
        Width = 762
        Height = 324
        Color = clInfoBk
        DataSource = DTS_funcionarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'codigo'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 234
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Width = 304
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'rg'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataemissao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datanascimento'
            Title.Caption = 'dt Nasc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf_cgc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'filiacaopai'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'filiacaomae'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conjuge'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataadmissao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ativo'
            Visible = True
          end>
      end
      object Radio_Posiciona: TRadioGroup
        Left = 6
        Top = 325
        Width = 240
        Height = 87
        Caption = ' Posiciona '
        Items.Strings = (
          'codigo'
          'nome'
          'Bairro+Nome'
          'rg')
        TabOrder = 1
        OnClick = Radio_PosicionaClick
      end
      object Edit_Filtra: TEdit
        Left = 517
        Top = 414
        Width = 238
        Height = 21
        TabOrder = 4
        Visible = False
        OnExit = Edit_FiltraExit
        OnKeyPress = Edit_FiltraKeyPress
      end
      object Radio_Filtra: TRadioGroup
        Left = 517
        Top = 325
        Width = 240
        Height = 87
        Caption = ' Filtrar '
        Items.Strings = (
          'Super Filtro'
          'Nome'
          'Bairro'
          'Rg')
        TabOrder = 3
        OnClick = Radio_FiltraClick
      end
      object Edit_Posiciona: TEdit
        Left = 6
        Top = 414
        Width = 238
        Height = 21
        TabOrder = 2
        Visible = False
        OnKeyUp = Edit_PosicionaKeyUp
      end
      object Btn_Filtra: TXiButton
        Left = 332
        Top = 398
        Width = 105
        Height = 40
        ColorFace = 16772829
        ColorGrad = 16758380
        ColorDark = 16754769
        ColorLight = 16772313
        ColorBorder = 11753728
        ColorText = clBlack
        OverColorFace = 16772055
        OverColorGrad = 16753478
        OverColorDark = 16752190
        OverColorLight = 16770250
        OverColorBorder = 11753728
        OverColorText = clBlack
        DownColorFace = 16757606
        DownColorGrad = 16764573
        DownColorDark = 16765864
        DownColorLight = 16752190
        DownColorBorder = 11753728
        DownColorText = clBlack
        DisabledColorFace = 15658734
        DisabledColorGrad = clWhite
        DisabledColorDark = 13816530
        DisabledColorLight = clWhite
        DisabledColorBorder = clGray
        DisabledColorText = clGray
        ColorFocusRect = 16755027
        ColorScheme = csNeoSky
        Ctl3D = True
        Layout = blGlyphLeft
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = '&Filtra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Benguiat Bk BT'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = Btn_FiltraClick
      end
      object Btn_Todo_Cadastro: TXiButton
        Left = 331
        Top = 351
        Width = 105
        Height = 40
        ColorFace = 16772829
        ColorGrad = 16758380
        ColorDark = 16754769
        ColorLight = 16772313
        ColorBorder = 11753728
        ColorText = clBlack
        OverColorFace = 16772055
        OverColorGrad = 16753478
        OverColorDark = 16752190
        OverColorLight = 16770250
        OverColorBorder = 11753728
        OverColorText = clBlack
        DownColorFace = 16757606
        DownColorGrad = 16764573
        DownColorDark = 16765864
        DownColorLight = 16752190
        DownColorBorder = 11753728
        DownColorText = clBlack
        DisabledColorFace = 15658734
        DisabledColorGrad = clWhite
        DisabledColorDark = 13816530
        DisabledColorLight = clWhite
        DisabledColorBorder = clGray
        DisabledColorText = clGray
        ColorFocusRect = 16755027
        ColorScheme = csNeoSky
        Ctl3D = True
        Layout = blGlyphLeft
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = '&Todo Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Benguiat Bk BT'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = Btn_Todo_CadastroClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Dependentes'
      ImageIndex = 3
      object DBText2: TDBText
        Left = 0
        Top = 0
        Width = 756
        Height = 17
        Align = alTop
        Alignment = taCenter
        Color = clMoneyGreen
        DataField = 'nome'
        DataSource = DTS_funcionarios
        ParentColor = False
      end
      object suiImagePanel4: TsuiImagePanel
        Left = 0
        Top = 17
        Width = 756
        Height = 451
        AutoSize = False
        Align = alClient
        TabOrder = 0
        Color = clSkyBlue
        DrawStyle = suiNormal
        object Label3: TLabel
          Left = 85
          Top = 286
          Width = 66
          Height = 13
          Caption = 'Nascimento'
        end
        object Label4: TLabel
          Left = 213
          Top = 286
          Width = 33
          Height = 13
          Caption = 'Nome'
        end
        object Label5: TLabel
          Left = 535
          Top = 286
          Width = 63
          Height = 13
          Caption = 'Parentesco'
        end
        object DBGrid3: TDBGrid
          Left = 85
          Top = 3
          Width = 601
          Height = 271
          Color = clInfoBk
          DataSource = dts_funcionarios_dependentes
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'datanascimento'
              Title.Caption = 'Nascimento'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idade'
              Title.Caption = 'Idade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Nome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'parentesco'
              Title.Caption = 'Parentesco'
              Width = 131
              Visible = True
            end>
        end
        object edit_dependentes_datanascimento: TDateEdit
          Left = 85
          Top = 299
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
          OnEnter = edit_dependentes_datanascimentoEnter
          OnExit = edit_dependentes_datanascimentoExit
        end
        object edit_dependentes_nome: TEdit
          Left = 211
          Top = 299
          Width = 315
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 2
          OnEnter = edit_dependentes_nomeEnter
          OnExit = edit_dependentes_nomeExit
        end
        object edit_dependentes_dependente: TComboBox
          Left = 535
          Top = 299
          Width = 150
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          OnEnter = edit_dependentes_dependenteEnter
          OnExit = edit_dependentes_dependenteExit
          Items.Strings = (
            'Filho(a)'
            'Esposo(a)'
            'Companheiro(a)'
            'Pai'
            'M'#227'e'
            'Dependente')
        end
        object btn_funcionarios_dependentes_incluir: TsuiButton
          Left = 206
          Top = 332
          Width = 61
          Height = 25
          Caption = '&Incliur'
          AutoSize = False
          UIStyle = MacOS
          TabOrder = 4
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = btn_funcionarios_dependentes_incluirClick
          ResHandle = 0
        end
        object btn_funcionarios_dependentes_excluir: TsuiButton
          Left = 303
          Top = 332
          Width = 61
          Height = 25
          Caption = '&Excluir'
          AutoSize = False
          UIStyle = MacOS
          TabOrder = 5
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
        object btn_funcionarios_dependentes_salvar: TsuiButton
          Left = 398
          Top = 332
          Width = 61
          Height = 25
          Caption = '&Salvar'
          AutoSize = False
          UIStyle = MacOS
          Enabled = False
          TabOrder = 6
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = btn_funcionarios_dependentes_salvarClick
          ResHandle = 0
        end
        object btn_funcionarios_dependentes_fechar: TsuiButton
          Left = 494
          Top = 332
          Width = 61
          Height = 25
          Caption = '&Fechar'
          AutoSize = False
          UIStyle = MacOS
          Enabled = False
          TabOrder = 7
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Telefones'
      ImageIndex = 4
      object DBText3: TDBText
        Left = 0
        Top = 0
        Width = 756
        Height = 17
        Align = alTop
        Alignment = taCenter
        Color = clMoneyGreen
        DataField = 'nome'
        DataSource = DTS_funcionarios
        ParentColor = False
      end
      object suiImagePanel3: TsuiImagePanel
        Left = 0
        Top = 17
        Width = 756
        Height = 451
        AutoSize = False
        Align = alClient
        TabOrder = 0
        Color = clSkyBlue
        DrawStyle = suiNormal
        object Label1: TLabel
          Left = 204
          Top = 283
          Width = 49
          Height = 13
          Caption = 'Telefone'
        end
        object Label2: TLabel
          Left = 394
          Top = 283
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object DBGrid2: TDBGrid
          Left = 157
          Top = 3
          Width = 448
          Height = 271
          Color = clInfoBk
          DataSource = DTS_funcionarios_fones
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'fone'
              Title.Caption = 'Telefones'
              Width = 221
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'Descri'#231#227'o'
              Width = 203
              Visible = True
            end>
        end
        object Edit_fones_telefone: TEdit
          Left = 204
          Top = 301
          Width = 164
          Height = 21
          Enabled = False
          TabOrder = 1
          OnEnter = Edit_fones_telefoneEnter
          OnExit = t
        end
        object Edit_fones_descricao: TEdit
          Left = 394
          Top = 301
          Width = 164
          Height = 21
          Enabled = False
          TabOrder = 2
        end
        object btn_fone_incluir: TsuiButton
          Left = 206
          Top = 332
          Width = 61
          Height = 25
          Caption = '&Incliur'
          AutoSize = False
          UIStyle = MacOS
          TabOrder = 3
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = btn_fone_incluirClick
          ResHandle = 0
        end
        object btn_fone_excluir: TsuiButton
          Left = 303
          Top = 332
          Width = 61
          Height = 25
          Caption = '&Excluir'
          AutoSize = False
          UIStyle = MacOS
          TabOrder = 4
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = btn_fone_excluirClick
          ResHandle = 0
        end
        object btn_fone_salvar: TsuiButton
          Left = 397
          Top = 331
          Width = 61
          Height = 25
          Caption = '&Salvar'
          AutoSize = False
          UIStyle = MacOS
          Enabled = False
          TabOrder = 5
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = btn_fone_salvarClick
          ResHandle = 0
        end
        object btn_fone_fechar: TsuiButton
          Left = 494
          Top = 332
          Width = 61
          Height = 25
          Caption = '&Fechar'
          AutoSize = False
          UIStyle = MacOS
          Enabled = False
          TabOrder = 6
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Relat'#243'rio'
      ImageIndex = 5
      object Label8: TLabel
        Left = 68
        Top = 198
        Width = 61
        Height = 13
        Caption = 'inclui_data'
        Visible = False
      end
      object Label9: TLabel
        Left = 68
        Top = 221
        Width = 61
        Height = 13
        Caption = 'inclui_user'
        Visible = False
      end
      object Label10: TLabel
        Left = 64
        Top = 245
        Width = 65
        Height = 13
        Caption = 'altera_data'
        Visible = False
      end
      object Label11: TLabel
        Left = 57
        Top = 268
        Width = 72
        Height = 13
        Caption = 'aletera_user'
        Visible = False
      end
      object Label12: TLabel
        Left = 64
        Top = 291
        Width = 65
        Height = 13
        Caption = 'exclui_data'
        Visible = False
      end
      object Label13: TLabel
        Left = 64
        Top = 315
        Width = 65
        Height = 13
        Caption = 'exclui_user'
        Visible = False
      end
      object Label14: TLabel
        Left = 101
        Top = 175
        Width = 28
        Height = 13
        Caption = 'ativo'
        Visible = False
      end
      object suiImagePanel6: TsuiImagePanel
        Left = 0
        Top = 0
        Width = 756
        Height = 468
        AutoSize = False
        Align = alClient
        TabOrder = 14
        Color = clSkyBlue
        DrawStyle = suiNormal
        object Label17: TLabel
          Left = 141
          Top = 302
          Width = 67
          Height = 13
          Caption = 'Data Inicio:'
        end
        object Label18: TLabel
          Left = 141
          Top = 326
          Width = 62
          Height = 13
          Caption = 'Data Final:'
        end
        object Label19: TLabel
          Left = 138
          Top = 266
          Width = 36
          Height = 13
          Caption = 'S'#243'cio:'
        end
        object Label20: TLabel
          Left = 261
          Top = 272
          Width = 8
          Height = 13
          Caption = '..'
        end
        object DateEdit1: TDateEdit
          Left = 211
          Top = 296
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object DateEdit2: TDateEdit
          Left = 211
          Top = 323
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 209
          Top = 267
          Width = 49
          Height = 21
          AutoSize = False
          DisplayFormat = '0'
          TabOrder = 2
          OnExit = CurrencyEdit1Exit
        end
        object DBGrid4: TDBGrid
          Left = 365
          Top = 82
          Width = 320
          Height = 269
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'data_pag'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor'
              Visible = True
            end>
        end
        object suiButton1: TsuiButton
          Left = 142
          Top = 353
          Width = 191
          Height = 38
          Caption = 'Extrato Socio'
          AutoSize = False
          UIStyle = MacOS
          TabOrder = 4
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = suiButton1Click
          ResHandle = 0
        end
        object btn_relatorio: TsuiButton
          Left = 36
          Top = 74
          Width = 249
          Height = 65
          Caption = 'Re&lat'#243'tio Socios'
          AutoSize = False
          UIStyle = MacOS
          TabOrder = 5
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = btn_relatorioClick
          ResHandle = 0
        end
        object suiButton2: TsuiButton
          Left = 36
          Top = 146
          Width = 249
          Height = 65
          Caption = 'TELEFONES'
          AutoSize = False
          UIStyle = MacOS
          TabOrder = 6
          Transparent = True
          ModalResult = 0
          FocusedRectMargin = 2
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = suiButton2Click
          ResHandle = 0
        end
        object QuickRep2: TQuickRep
          Left = 713
          Top = 138
          Width = 794
          Height = 1123
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = qry_funcionarios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Default'
          Font.Style = []
          Functions.Strings = (
            'PAGENUMBER'
            'COLUMNNUMBER'
            'REPORTTITLE')
          Functions.DATA = (
            '0'
            '0'
            #39#39)
          Options = [FirstPageHeader, LastPageFooter]
          Page.Columns = 1
          Page.Orientation = poPortrait
          Page.PaperSize = A4
          Page.Continuous = False
          Page.Values = (
            100.000000000000000000
            2970.000000000000000000
            100.000000000000000000
            2100.000000000000000000
            100.000000000000000000
            100.000000000000000000
            0.000000000000000000)
          PrinterSettings.Copies = 1
          PrinterSettings.OutputBin = Auto
          PrinterSettings.Duplex = False
          PrinterSettings.FirstPage = 0
          PrinterSettings.LastPage = 0
          PrinterSettings.UseStandardprinter = False
          PrinterSettings.UseCustomBinCode = False
          PrinterSettings.CustomBinCode = 0
          PrinterSettings.ExtendedDuplex = 0
          PrinterSettings.UseCustomPaperCode = False
          PrinterSettings.CustomPaperCode = 0
          PrinterSettings.PrintMetaFile = False
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = MM
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PreviewWidth = 100
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          object QRBand1: TQRBand
            Left = 38
            Top = 38
            Width = 718
            Height = 94
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              248.708333333333300000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
            object QRLabel3: TQRLabel
              Left = 90
              Top = 47
              Width = 4
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                238.125000000000000000
                124.354166666666700000
                10.583333333333330000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = '.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel6: TQRLabel
              Left = 90
              Top = 66
              Width = 4
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                238.125000000000000000
                174.625000000000000000
                10.583333333333330000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = '.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel1: TQRLabel
              Left = 159
              Top = 5
              Width = 399
              Height = 23
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                60.854166666666680000
                420.687500000000000000
                13.229166666666670000
                1055.687500000000000000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ASPREV - Associa'#231#227'o de Saude Preventiva'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 14
            end
            object QRImage1: TQRImage
              Left = 5
              Top = 2
              Width = 64
              Height = 58
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                153.458333333333300000
                13.229166666666670000
                5.291666666666667000
                169.333333333333300000)
              Picture.Data = {
                0A544A504547496D61676512780000FFD8FFE000104A46494600010101006000
                600000FFE1001645786966000049492A0008000000000000000000FFDB004300
                080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A
                1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432
                FFDB0043010909090C0B0C180D0D1832211C2132323232323232323232323232
                3232323232323232323232323232323232323232323232323232323232323232
                3232323232FFC00011080252029C03012200021101031101FFC4001F00000105
                01010101010100000000000000000102030405060708090A0BFFC400B5100002
                010303020403050504040000017D010203000411051221314106135161072271
                14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
                3435363738393A434445464748494A535455565758595A636465666768696A73
                7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
                AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
                E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
                0000000000000102030405060708090A0BFFC400B51100020102040403040705
                040400010277000102031104052131061241510761711322328108144291A1B1
                C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
                434445464748494A535455565758595A636465666768696A737475767778797A
                82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
                B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
                F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A
                28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
                28A2800A28A2800A28A2800A28A2800A28CD26E1400B4530B8A61940EF401366
                9322AB35C28EF5135E28EF4017B70A6971596FA8A0EF503EAA83F8A80368C807
                7A6F9A3D6B9F7D6507F15557D7501FBD401D4F9CBEB479C3D6B913AFA7F7A9A7
                C4310EB20FCE803B0F387AD1E70F5AE3BFE12287FE7A2FE749FF00092DBFFCF7
                4FFBE8500765E70F5A3CE1EB5C68F12407A4C87E8C294788E13D255FCE803B1F
                397D697CE1EB5C78F10467A383F8D3D75E43FC5401D70947AD3B78F5AE5E3D6D
                0FF15594D5D0FF001500741B852EE158C9A9A1EF53A5FA9EF401A5914B54D6E9
                4F7A956753DE8027A2A312034EDC2801D4526452D00145145001451450014514
                5001451450014514500145145001451450014514500145145001451450014514
                5001451450014514500145145001451450014514500145145001451450014514
                5001451450014514500145145001451450014514500145145001451499A005A3
                34C2E0542F7017BD004E58535A402B3E5BE55EE2B3AE35744CFCC3F3A00DB7B9
                51DC55692FD57B8AE5EE75E1C8539FA5521777F7AD8B785DBDC0A2E07532EAA8
                BFC43F3AA136B88B9F987E75989A1EA53F33CC9103DB3935662F0D5AAF33CF24
                A7D0702A79876209BC42A33820D536D66E2638861773FEC826BA18B4CB083FD5
                DAC79F56193FAD591851855007B0A5CC1639509ACDCFDDB5651EAE71FCE9E345
                D5E5FBF3431FE24D74E49F5A4345D858E707866E1BFD6EA1FF007CAD3C7856DB
                F8EEA763F515BF494AE3314785B4EFE2F39FEAF520F0DE943FE5DC9FAB9FF1AD
                6A4A00CBFF0084774AFF009F41FF007D1FF1A3FE11FD2FFE7CD3F335A9494019
                47C3BA51FF009735FCCFF8D46DE18D24FF00CBAFE4C7FC6B60D0680309FC25A4
                B7489D4FB39A81BC1D658FDDDC5CA7D1FF00FAD5D1D06803976F0948BCC3AADC
                29EDBB9A89B41D721398B508651E8E98FE55D65145D88E3CC5E26B6EB6D04C07
                F71F04FE74DFEDFD46D0FF00A5E9973181DD5770FCEBB1A4201A7CCC2C7316FE
                33B4270D2EC3DC382315B56BE2386650525461EAAD9A927D3ACEE4627B6864FF
                007901AC8B9F0769339DD1C4F6EFD9A272314F982C74B0EB28D8F987E75762D4
                91BB8FCEBCF9FC33AB5AE4D8EAC5C673B2E173FAD426F3C45A6F375A799D00E5
                EDDB3FA53BA11EA4976ADDC54EB303DEBCC6CBC6B6AEFE5C9218641D5661B4FE
                BC574B6BAEC720043823D8D303AD0E0D3B22B120D4D1B1F30FCEAF4776ADDE80
                2F51512CA0F7A786CD003A8A3345001451450014514500145145001451450014
                5145001451450014514500145145001451450014514500145145001451450014
                5145001451450014514500145145001451450014514500145145001451450014
                51484E28016909A8DA403BD559AED501E45005A6900EF55E5BA55EF58F77AB22
                03F38AC49F5692E1B6C20B13E9401D15C6A6A80FCC3F3AC6BAD6C0C856C9F6A8
                A0D0F50BCF9EE1BC943FDEEBF956ADB68D616783B3CE71DDFA7E552E43B182AF
                A8EA0D8822723D71C7E75721F0DCAF86BDB9C7FB2BCD7405CE3030A07614CA57
                6162A41A569F6D8D96E1D87F13F356F71030A028F41494948621E69296928012
                8A76D24F0299234708CCD34517FBEE05300A43559F55D3978174646F48A32FFA
                8A88EA818FEE74FBB93D0B00A28B315CBD49544DEEA0FF00EAF4C853DE4989FE
                54C27597EF6918F41116FE668E50B9A38A4C1F4ACD36FAB375BF0BFEE42A3FA5
                30E9D7EDF7B52B8FF80E07F214F942E6A9A4AC93A65D9EBA8DD9FF00B69519D2
                67CF37D79FF7F4D1CA173668C1F4AC95D2EE474BFBB1FF006D4D48BA75E8E9A8
                DD7E2D9A3942E6960FA521AA22CB525FBBA8C87FDE8D4FF4A788B565FF0096F6
                EFFEFC03FA51CA172D5155C3EA69F7EDAD251EC593FAD2FDAE603F7BA6483DE2
                9037F3A5CAC2E4D45462F2D7FE5AADCC1FEFC591FA54AAD6D29C4379039F42DB
                4FE4695985C6D152B5BCA83250E3D4544411D450310D18068A28029DE695637E
                BB6EAD62947FB4BCFE75CFDC7822DD18C9A65E5C5949E8AC4AFE22BAB3450071
                2CFE25D1C933DB2DF420FF00ACB738603FDDEF57B4DF1B5A4CE22925304D9C79
                730DAD9AEA319ACFD4344D3B5342B776B1C9FED11C8FC7AD352158D3B5D615F1
                F38FCEB561BE5703E615E672F84F50D2C99343BF3B07FCBB5CFCCBF81ED51C1E
                2BBAD29C45ADDA4B68E38F302968DBE84552623D75270DDEA556CD717A6F8860
                BA8D648A64743D194E456FDBEA08E07CC2981B19A2AB473861D6A70C0D003A8A
                28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
                28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
                28A0028A28A0028CD216C54324C1475A00919C0AAD2DCAA0EB54AEB5058C1E45
                73F77AB348E5221B9BDA80362EF5448C1F985614DA94D7526CB742E4F0302ACD
                A683757B89AF5FCA8BAE0F53F856EDBC16D629B6D6200F773C9352E43B1856DE
                1CB89C896FE4F2D7AEDEFF00956D5BDB5AD8AE2DA101BFBEDC9A9198B724E69B
                5371833B31E4E69B4B4940052554BED4ED34E84CB7332A28F535C9DCFC414926
                3169F6724A7B3B702803B63D2A29678215DD34F146BEAED8AE2C5FEB1A81066B
                A1021FE18473F9D6B69BA45B07F364432B9FE390EE3FAD3484689D6AD18EDB68
                EE2E9BFE992617F334AB2EAF3FFAAB6B7B607BB93237F415A76D046A000A00F4
                15A7142B8CE2AAC84738348BDB9FF8FAD42E1C1FE18CEC5FD2A787C396719CF9
                0A5BD5B935D10551DA8C0F4A6064C7A74718F95147D05482D1476AD2DA3D2936
                0A00CEFB30F4A5F23DAAF1414C20500526869A61AB8D8A89B140151A2E29BE50
                AB2C4629991401088B9A90454F18CD3C11400C11D3C4429E314F18A008FC91E9
                4A2DD48E9530A7AD0041F64523A5412E916D30C3C28DF55AD314B40187FD8114
                6736EF2C07D627229AF67A945D278AE17D268F9FCC60D6F51401CC3EE8FF00D7
                E9F2A7FB503EF1F91E69A9E44C7115CA16FEE3FC8DF91AE9CC6ADD45559F4DB6
                B81892356FA8A5641730DE19233F321151D69B68F2423FD12E648C7F709DCBF9
                1AAB2473459FB4D9EF1FF3D2DCF3FF007C9FE953CA3B95A8A9152298E209D5DB
                FE79B0DAFF0091A6B2321C32953EE2958636A29A08AE2331CD1ABA370558641A
                90D1401C8DF78292295AEB44B97B19CF250731B7D45548BC47A968728875CB36
                89738173102D19FF000AEE6A39618E78DA39515D1860AB0C834D31586699E208
                2EA25922991D0F4653915D05BDF2B81F30AF37BEF07BDA4CD77A05C7D9253CB4
                0DCC4FF876A8EC3C5B3D85CAD9EB56ED6571D99BFD5BFD1AA93B88F5A494377A
                98366B97B1D5D2555218107DEB6E1BA57039A605EA2A3570453F3400B4514500
                1451450014514500145145001451450014514500145145001451450014514500
                14514500145145001451450014514500145145001451484D002D319F14D79028
                EB59B777CB1A9E6802CCF74101E4561DFEAC101018567DDEA525C4BE5400B39E
                C2B434ED002E2E6FD8927911E7FCE29360675BDA5FEB127CA0A45DD8F18AE82C
                F4DB4D3146C512CDFDF23A7D2AD1900411C4A1231D15462A2350DDC639DD9CE5
                8E6986834940C0D2557BDBEB6B08F75CCC109FBA83966FA0ACD373AA6A5F2DBA
                7D8A03FC6DCC87F0E828B016B50D5ECF4D5FF4894063D1072C7E82B1DB58D4F5
                13B2CEDC5B467FE5A4DCB7E02ADC7E1E86063295324A7AC921DCC7F1AB70D994
                6E941492315FC2C2E3F7D74F25CCBEB21C81F41D05675DF87CC47722631D80AF
                43B5872006E94FB9D39261C01D298DD8F37B27F2640B271F5AE8ED6607EEF4A5
                D4743084B0519AC7FDFDB3F04E0545EC2E4B9D7DB49D2B56293819AE46C75312
                610F0D5AF1DDB46064E455A912E26E820F4A5ACF8AE832E738A9E2B8DE706AD1
                259A42714DDF4D2C0D000CD513350EDCD44CD4AE3B0ACD5133734335464D3103
                353775358F14CDD4012EEE69C1AA0079A901A009C353835401A9C1A802C2B54A
                AD55435481B8A00B6AD4EDD55431F5A915A802C5151AB53C1CD002D145140052
                1507A8A5A2802A5CE9B6D7231246A4FAE39AA32585DDB8C45209E3FF009E73F3
                F937515B34500732E21DDB5C3DB487F865E54FD187F5A64B049091BD700F43D4
                1AE965823994ABA020F622B35F4C96DC1FB1C9843D627E50FF0087E152E23B99
                145599123DFB65436B21FEF7287E8DDBF1A8A586485B0EA47A1EC6A5AB011D54
                BED3AD352B7682EE049633D9866AD5140CE1E7D1B57F0D319B4766BCB11C9B49
                0FCE83FD83FD2B6F40F175B6A20AA395953EFC520DAE9F515BA466B9FD6FC296
                9AA38B9859AD6F9794B88B839F7F514D48563B5B4D416403E615A71CC1BBD78F
                D9F88350D0AF16C75E02324E22BA5FF5727D7D0D77BA76AC932A90E083D08AB1
                1D4839A5AA705C07039AB4AD9A00751451400514514005145140051451400514
                5140051451400514514005145140051451400514514005145140051451400514
                534B6280149C5412CC1475A6CD384079AC2D475358D4FCD40162F75158C1F985
                6246B75AC5C7970A9D9DDBDAA5B1D32E35797CD9B747003DFBD74B1AC3690886
                D942A8EA7B9A96C657B2D3AD74B41B00926EEC7B7D2A5772E72C72690F5A4352
                30A4A5ACCBDD612DE636D6D1FDA6EBFB8A785FF78F6FA51602ECF3C56D0B4D3C
                8B1C6BD598E05631D52F7512534E8FCA849FF8F891793FEEAFF8FE54E874A9EF
                A6171A8C9E7383958C7089F41FD6BA1B6B15451C60555846358E851C4FE749BA
                59DBEF4B21C935BB05AAA8E956963551C0A75160B911810F6A67D9577122AC51
                4F9505D8C48C253E8A28B0AE4171089508C573D7DA6120ED5AEA0D465558F205
                44917195958F3BB8B19EDA4DE8A6AF59DF918496BAEB8B08E65FBA3358579A1B
                22B3A8C63D2959A2AE9825C0CFCA78ABB14D9E95CE2B496F200D9C7BD6A45386
                4054F356990D1B626A7092B3565353A49915449659B26A32D4DDDC5309A2C2B8
                ACD51B35231A8C9A06399B8A66EA6B1A6E680240DCD3F75419A703401386A706
                A801A706E6802C06A7AB557069E0D00590D4F0F558353C35005A0F4F57AA8AD5
                2AB5005B0C0D3AAB2B5481A8025A29AAD4EA0028A28A0028A28A008E5863990A
                C8A181EC4566C9A74B6E0FD988922EF0C9C8FC0F6AD6A28039A6816562B16E8E
                51D619383F81E86ABB2952430208EC6BA5B9B386E936C8BCF623A8ACDB9B7922
                18B9533443A4CA3E75FAFA8A9711DCCBA2A696DCC6A24521E23D1D4E47FF005A
                A1A91956FB4FB6D46D5EDEEA149627182AC2B8C9AC754F0849E6DA992F7485FB
                D1F59611EDEA0577B4D2A18608C8A13B014F41F11DB6A16D1CF04CAE8C3A83D3
                D8FA1AEB2DAED5C0E457976ADE1BBAD36E9F54F0FE1642774D6678497DC7A356
                AF86BC5506A2A532D1CF1F12C1270F19F71569DC93D255C1A92B2AD2F16451CD
                68A38229812514668A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
                8A0028A28A0028A28A0028A28A0028A29A5B028002D8AAB3CE101E689E708A79
                AE7353D4F6FCAA72C780077A0076A5AA04040393D00149A568F25EB8BBBDCAC4
                39553DEA5D1F46329FB6DF74EAAB5B9249BB803083A0A96C6233808238D42C6B
                C002A2A5A4A918951CD3476F134B2B8445E4B13802A96A7ACDAE9716656CC878
                545E4935871ADCEB33ACF7DF2C60E63B71D07B9F5340D22DCBA95DEAEE62B2DD
                6F6BD1A6230CFF004F4FAD69E99A5C36D1858D31EA7B9FAD3ADEDD500006056B
                5BA600AA4C1A248E0541D2A603028A2A880A28A2800A28A2800A28A2800A6630
                69F454B43B88282030C11914D638A8BCE21A9730D46E51BFD2A3954B2AF35CF1
                26CA62181C576A1811CD64EAFA7A4F1EE51CD27E435D999514BE77287156D25D
                BF29EBEB58644B66DED56A1BE498633F350A4371357CEE719A79704567A0352E
                EC0AB4C868999A9B9A895F39A5DD4C42B74A666949E2999A00703CD3B351E69D
                9A007EEA70351669C0D004C0D3C1E2A10D4E078A00981A7EEA80353B75004E18
                D3D5AABAB5481A802CAB54818D550F5206A00B41A9E1AAB07A787A00B20D2D40
                AF52AB66801D45145001451450014119EB451401427B028ED2DA90AC7EF467EE
                BFD4566496CB296F250A4ABF7A03D7EA3D4574555AE6D23B951BBE571CAB8E08
                349AB81CD118383495A7736E59FCBB80166FE09470B27D7D0D67491B45214752
                AC3A8350D58636B99F10F860DE4A352D32416DAA443E59074907F75FD4574D45
                0339AF0E78A0DC48D697686DEFE1E2681BA8F71EA3DEBBCB3BE5914735C3F88F
                C331EB08B736F21B6D461E61B84EA3D8FA8AA9E1BF12CFF697D3752416FA941F
                7E3ECE3FBCBEA3F955A7724F578E40454B9AC6B2BD1228E6B511F229812D1451
                4005145140051451400514514005145140051451400514514005145140051452
                138A0009C5569E608A79A74B2855CE6B9FD535158D1BE6A008F54D4B60201C93
                D00A768BA3B4A7EDD7A38EAAA6A2D174A6BD9BEDB763F740E554D747249BBE55
                E1474152D8C4924DFC0E14741519A292A4606B96F11F8B21D309B4B5C4D78DC6
                D07EEFD6B2BC61E385B495F4BD2DC3DC9E2490744F6AE32C9184864762F2B9CB
                39EB59CA46B0A77D59D2582493CFF6ABA732DC3773D17D8575DA7A640AE5B4D5
                6C0AECF4B889519A49976B1A90C7C0ABD180A2A150147146F20F5AD13B19C95C
                B545431B92466A6AB4EE64D5828A28AA10514514005145140051451400846454
                462E73535150E234EC57C352821C6D35360546D1E0E57AD4B8B45735CCBBEB04
                914FCA2B9B9EC9ADE42C84D770CBBB8359F7B62AC84AAF351668D1493D0E720B
                A21406EB56C49BC545716054160A77553492589F07A53E6B038DCD25F9697351
                24A244E0F22979ADA2EE8C64ACC793499A0104E2838A620CD19A69340A007834
                B9A6D19A00901A706A881A703401286A50D51034ECD004CAD4F0D5006A7AB1A0
                09C353C35400D3C35004E18D481B8AAC1AA40D40164354AAD55031A9558D005A
                56A92ABA354EA72280168A28A0028A28A0028A28A00649124D194914329EC6B2
                EEAD7CB509312D0F4497BA7B1F515AF484060411907A83401CACD0BC126C71EE
                08E847B5475B573682242AC0B5B76C72623EA3DBDAB2A781A07C120A9E558746
                1EB50D586455CF789BC349ACC293DBBFD9F5183E682E17A83E87D41AE868A433
                97F0CF891E599EC6F53ECFA85BF13427FF00425F5535E8365782451CD707E26F
                0F36A0897D60E21D4EDF9864FEF0FEE37A834BE15F11FDBADF6CCA61BA89BCB9
                E16EA8E3A8FA771569DC93D391C1152565D9DD0914735A28D914C07D14514005
                1451400514514005145140051451400514514005145140054523E05399B02B36
                F6E846A79A00ADA8DE88D0F3593A6583EB17866941FB3A1CF3DEA1092EB17E2D
                E3CEC07E76F6AEB5228ECED96DE1180072693602BB2AA88A30022F18151D1495
                050579BF8EFC742D4BE91A5481AE1B896553F747A0356BE2178D868D6ADA6E9F
                2037F28C3329CF940FF235E3D06EDC5998B48C72CC7A9351266B08F5668D9C2C
                AE589DCEC7258F7AE86C50EE15956001C7AD747650E483589D08DFD323C806BA
                FD3CE14015CB588C002BA8D3C702AD10CD753C5318E0D3F185A82538AA3344B1
                BFCC2AE0E95991BE1C56846E0AD5C599CD12514515A998514514005145140051
                451400514514005145140098A0A8239A5A2A7940AB2DB23E462B2AF34A0412A2
                B74AF39A42808C1A8703453B1C54D04B6AE3038A9A29D64183D6BA3BBB249179
                02B98BEB37824263E7E94276D076BEA4FC29A3355A2972B86FBD5329AB4C8687
                D1476A4AB448ECD266929334C43F34B9A6668CD26324069D9A881A7669012834
                E0D51034ECD004C1A9E1AAB86A7EEA009C353C3D560D5206A00B2AD52AB55553
                52A9A00B68DC5598CF15490F1566334013D140A2800A28A2800A28A2800A28A2
                8003C8C1ACCB9B65894AB026D98E4E3AC67D47B569D0402307A50072B3C0D6F2
                6D6C11D430E845455B7736AAABE5B7FA863956FF009E6DFE06B1E685E090A38C
                11FAD435618CAE43C51A1DC437035DD1D717B10FDF443817083B1F7F435D7D21
                008C1A43333C33E208752B28A789F218723BA9EE0FB8AEDADA70EA39AF22D5ED
                64F0A6B2756B65FF00896DDB817683A44FD0483DBD6BBDD1F5359A356570C08C
                820F5AB4EE49D629CD3AAB43286515601A602D14514005145140051451400514
                51400514514005213814B5148F8140105C4DB14F35CB6A776F2CA218B9763802
                B4B54BC11A37351787B4F3239D46E07FB80F6A00D2D2EC574CB2504666619635
                3939E69CEE5DB3F9532B36501AE7FC57E224D034B77420DD38C44BEFEB5B3797
                51D9DB493CA405419AF2FBC8EE35FD45EFA7076671129EC3D680470F3DB5C5CC
                F25D5CB3493CA77333726921B16DDF76BB95D0246EA87F2AB31787883CA54346
                AA47356162460915D25A40001C55A5D37CA380BD2A6487676A8B17CC59B55000
                AE82C64200C56042702B52D25E9CD033A1472C306A39064D47049915602EEAA4
                495C0C1157E000AD5474C0CD5AB60768AA444B62CD14515B1885145140051451
                4005145140051451400514546F26DA4DD8695C928AAA2E39EB5615830C8A4A57
                069A1D451455084650C306AB4D651C8A78E6AD5152E298D368E5AF34B6462F18
                E6A990F19C35764E8AC3045655EE9E1F2C054EC5DEE62AB161C53871D6892368
                4918A8C3EEEB54A427115B71FBB4608A7A903A502339C91C53E61728C0DEB4E2
                EA29CDB1475A8F86A2E26AC28707A53B914DF2F6F346ECFE14C43C35381F5A8C
                1A7034012034A18D479A703CD004A0D480D400D480D004EA4D4CA6AB29A994D0
                059435663354D0D598CD005B534EA8D0D4940051451400514514005145140051
                4514008CA1D4AB0C83C115957767B8085BA8FF0052E7FF00413FD2B5AA296259
                A328DD0F7F43401CB329562A4608EA292B52FAD9A40CF8FDF463E703F887F785
                65D66D58A21B9B68AEEDE482640F1BA956523822B8CD1DE5F0C6B27449DC9B67
                CBD939CF2BC9284FA8FE55DCD62F897451AC69A523631DD447CC8251C1471D29
                A7611D6E9D782445E6B6236C8AF33F0A6BAD7706C98795731318E68B3CA303FE
                48AF40B49C3A8E6AC468D14D53914EA0028A28A0028A28A0028A28A0028A2834
                00D638159D7970110F356E67DA0D733AC5E6D52AA4927802802B246FAB6A6B02
                FDC539735D63858A35863185518AA1A2588D3EC7CD7199A5E49AB64E79350D8D
                05213814572FE2EF122E950ADA40C0DDCDC01FDD1EB4862EAF28D5EF974F8DB3
                04673311DCF65AD3B3D1A1C28006076AE3749BE16E806FCB139663D49F5AEA2C
                F58C63E6A7743B337D34BB70395150DCE9D1AAE55452C7AAC65464F3528BC128
                F6A4DA05731E5D3B8CE2B32E2D3613C57662257419AA577A6ABA12839A9687CC
                71A57671562DA4C30AB57760D192187355E3B731E091CD41AA7A1B76AF9C56A4
                432B58F6A0AA827A56BDBB656A9225B1E5327153C6BB569A00EBDEA51D2AE2B5
                33930A28A2B42028A28A0028A28A0028A28A0028A28A002AB4A335669AC81A93
                4545D8CB6254D3E3B9DB52CD6E704E2B3E6050D64D58D2E99B514A2451EB5256
                25A5C32B804F15B28DB941AB8CAFA1128D87514515640D7E05412B7CA6A77195
                E6A9CEFB7A5672DCB8142E2157278ACB9A02A78AD479013CD45B439E6A2F62DE
                853810F7AB26269385157E0B00C324715756DD21E40AA5762BA3261D29DCE5A9
                26D25E39095CEDAD9132E71528656EF551265739796328306AA91835B7A9C68A
                F903AD634CB86C8E955725AB2B880D3B351C7C9E7A539BEF71D298A2AEAE381A
                7034C14B401203520350834FDD4013A9A9D4D54527356109C524C0B286AC466A
                AA1E2A7434DE805C43538E955236AB28722801D4514500145145001451450014
                51450014514500579E22E03A01BD7A67B8EE0D61DF5B889C4B1FFAA93903FBA7
                B8AE92A95D5BAB0656FF00572753FDD6EC69357039DA29D246D148D1B8C329C1
                A6D414719E23B76D1357875DB7F96DE4658AF540E31D15FF00027F2AED345D41
                66890AB8208C820F5AAF796B15EDA4B6F32868E452AC0F706B93F0D5CCBA4EA1
                2E8974EC65B739898FF1C59F94FE19C7E15516267ADC326E00D581591A7DC091
                0735AA8722A843A8A28A0028A28A0028A28A0029AE7029D504CF85340146FA70
                8879AC0D3EDCEA9AC02DCC30FCCDF5A9B58BB214A8E49E00AD7D1ACC69FA6292
                3F7B2FCCC7DE9302E4CD96C0E838A88D2D2541453D57528348D327BEB9602389
                4B75C64F603DCD782DD6B73EADAB4FA8CC79918EC5FEE8AEB3E2A6B171797D06
                8768AC6241BE62BD0B1E83F01FCEB858AC2ED8851048076E2A59714741657CE4
                8C9AE82D6EF804B9FCEB9AB0D1AFDF1FBB71F856E26857E1401BC7E153A9A686
                D47A93291F3FEB5A96BAC6D032D5CAFF00626A23F8DEA68B48D407F1BD696168
                7A0DA6B881541607DAB66DEF21B85CA30CFA57952D9EA50BF5908ADCD3A6BD8B
                04EF534D68438A67773DB24C39033EB59AFA690738E2A1B4D6254C24CACE7D6B
                6609D275CAF1EC68714C9BB464B425000077AB301DA306AF3C4AE3A0AA138F29
                B02A5AB171772D2BE580AB03A55081B7106AF8E94E0EEC99AB0B451456866145
                1450014514500145145001451499C52BA402D14DF317D6A27B945A5CC87664E4
                64552B8B60E78A5FB6AD1F6A53DEA2524CB8C5A2835BB46FC0ABD6929FBA69EA
                16519A95205539A515709325A28A2B63303D2B2EFB2335A954EF63DCB9A89A2E
                0F539E92521EAF5A8DFB4D54960F9EAFDA2ED5158BDCE8E5BAB9AEA447083D80
                ACD9EFF248CD25E5D110EC06B2537CD20033D6B54CC946DAB356262FC8352195
                95C0CF4AB1696C238816F4AC9D4EED61B86C1E2949D86BDE760D46E031033CD6
                6F981815CF35467BFDF375A87ED05261CF06A54EE6B3A5789A6A70314EE82A34
                3B806A7939ADE3B1C77E5D05A5A6D2D003B34E06A3069C0D00595A9558553DF8
                A779B8A12117D5EA78DB359D13E6AEC4DC5368362EC66AC466AA29A9E33D290C
                B545354D3A800A28A2800A28A2800A28A2800A28A2800A4650EA5586411834B4
                50062EA56C5A3F33AC91FCAFEE3B1ACAAEA274046FC6401861EABDEB9DBA80DB
                DC347D47553EA2A2486886B94F18D9BC2B6FADDB2133D8B65C0EAF11FBC3FAD7
                5751CD12CD0BC6E015604107B8A430D03514B8B78E4470C8EA1948EE08AEB217
                DCA2BC9BC35249A36AB75A24A4ED85BCCB727BC4C7A7E078FCABD32C27DE839A
                D093568A6A9C8A75001451450014514500231C0ACEBD97621ABB2360573FABDC
                EC8DB9A00A16B136A5ADA272638FE66AEA66605B68E8BC565786EDFC9D3DAE98
                7CF29C83EDFE7F9568139350D8D05417970B696B24EE701149A9EB0BC48C6686
                1B043F35C37CDEC83AFF008524AEC19C75A581BFBB9AFE6525E66C8C8EDDABA2
                B2D29723118CFD2B634FD25155401C015B7059C70E30326B4E541CCCCFB4D3BC
                B5CF96BF955AFB21FEE2FE557A8A5641CCCA46CF3FC2BF9537EC3FECAFE557E8
                A2C1CCCCE368C3F817F2A824B56CFDD1F956C52100F5145857661B26C3C8E6A4
                8E6116594F22B466B559791C1ACB9ADD91987343046959DC8B98C9E3703CD36F
                6205770AC7D2EE8C17CD131E0D742EA1D3152F545A7677285B120815A2BD2A92
                C7B641ED5757A0A9A6554168A28AD4C828A28A0028A28A0028A2A0B89844B9CD
                4CA561A571D2CCA839359771A9143B4118AA7797E4B1C1AC4B9BA6249CD72CEA
                9BC699BEDA87CB9DD559AFF3F78D73C6FF00E609BA9D24C4C5906A633B9BAA46
                C9BE18241A48EF5D8E72315CE4B70E91F04D16BA9610AB1E68732FD91DA5B6A8
                130335AD05EC730EA335E7AB7B819DD576D75528C3E6AA855B19CE85CEF8107A
                1A5AE6AD359DC40DD5B905D2CA0735BC6AA672CE938966A295772E2A5A0D68D5
                D109D8C89E150D9A8BCC58C11DEA7BD93692075ACCCB3360D60D1D3CDA0F1BE7
                9B1DAB4ECAC161F9E41CF6A4B1B51C33543ABEAA96B09552334EF64459C9D90E
                D5B545B688AA119AE1F50D4249DF83D4D1797EF74492C6B0AE2EC40E771E95CF
                3A973AE8E1DAD4B26E88B80A4D589E66DBBBB8E95856D2B5DDF02BD2B5EF8346
                830294246CD7437748B93716DB58FCC2B40AED231D2B95D0AE8C778518F0C38A
                EA43139AEC848F32BC2D2168268A4AD0C8334BB8D379A4E68000E4934E21BB52
                88F033514B294ED45EC528DCB10C841C1ABD1CA463158B14C59F26B4617C9149
                48538D8D689C91CD5A8CF4AA711F96ACC6D4C95B17129F50A373535030A28A28
                00A28A2800A28A2800A28A2800A28A2800ACAD4EDB740580F9A2FD57FF00AD5A
                B50CAA1979191D08F507AD0C0E5A8A96E6136F70F11FE13C1F515156651CA78B
                603693D9EB512F36CFB25FFAE6DC1FCB835D768B7824894839C8AA77D6B1DED9
                4B6F2AE52442A47B1AC1F07DDCB0A3D8DC3667B490C2C73C903EE9FC462AA2C4
                CF5189B2054D59F6726E41CD5F53C55085A28A2800A43D2969AC702802B5CBED
                435C96A25AEEF23B643CBB62BA1D425DB1B563E8117DAF5A9276E5621C7D7FCE
                2803A328B05BC702F45151D3A46DD2134CACD9415CEDB13A86AF717679453E54
                5F41D4FE75ABAB5D9B3D326957FD611B13FDE6E0545A2D9882DA38F1D073F5AA
                8899B36B1ED4CD59A451B540A5AA10514514005145140051451400556BA8C142
                C2ACD35C06420FA50C0E2EF5CDB5F87E99AEB2C26F3ED11FBE315CCEBB083B5C
                7506B5F409B75A05359A766696D0D56400934F5E94A467AD0062A92D48B85145
                15420A28A2800A28A63B841CD26EC095C496411A926B0351BECAE01EF566FEF7
                00806B98BDB924120F35C956AAB1D34E9BB8D9EE0924E6B26FAF4246DCD2B5C9
                218BD739AA5EEEDE8879AE4BB96C76C69DB524B3D41AE35211835D03CA50329A
                E5FC396C5AFBCE6EA2BA1D45F646EE3AD689F2EE6B16B61AF30287358D737263
                62CA78A56BD0E0A9359D349BCB2E78AC5D4BB3A9517B9A16FAB87C296E7EB5AF
                6F30700835E6D7174D6D7E554F19AEAB46BE69946E3532938EA35479B43AEB7B
                8319EB5BD61A990CA335CDC280A0607A8AB16D21597AF4ABA35D3393118568F4
                9B4B813463D6A72700D73BA55E9C004D7408DE6479F5AF5612BA3C7946CCC8B9
                52F2D4B059721DBA55E16C99C9E4D50D4B504B58CAA919C544B4576689F33B21
                9A96A29650109D71DAB88D42F1EE58927AD4F7D7D2DCCC46722B3E60238CB357
                0D5C446F63D4C2E15BD4CFB9B8F2109AE5F52BF3349B54F357F56BF528CAA79A
                C8D36D1AF2E773F4CD6706E4CF42A725389D47876D8C71095EB6EE364C841EA7
                A567C5225AC222E9C530DD3798A41E056C933CC96AEE3E2430DD238FE13CD759
                6F3A4B1AE3AE2B936918838EF562CAF2681C7A57442566735685CEA8D0064815
                05A5DC570B827E7AB8B1E1867F0AE8E6471B8341E5D27975A5059B483245135A
                88A8E642E56530991514B029EB4E6BA452467A5549EF5474359B91B42240E812
                E081D2ADC4F822B34DC825DC9E838ABB0BAB44ADDCD11615226D5BBEE5AB91B7
                35936F211C0AD0476039EB5AA6731A0879AB0A78AA70B8DB93D6AD4672298C7D
                14514005145140051451400514514005145140051D68A28031F5883E4494755F
                90FD3B5645751750F9F03C7FDE5C0FAF6AE5C820E0F06A243415C8DF03A5F8C2
                29C1DB0DF47B1BFEBA2F4FCC66BAEAE7FC5D68D368ED71103E75AB09D31FECF2
                47E59A480EC74B9F7C639ADC43915C57876F96E2DA2910E55D430FA115D840D9
                515A08B14514500151CA700D4955A76C29A00C1D627DB1B7353F86A030692D3B
                7DE98EEFF0AC8D69CC8E23079660BF9D7511C62DEC20840C614714980DA28A4A
                828C3D5DBED1AAD9DA0E550199C7E83FAD6F58C4028AE76C5BEDBAC5E5DF552F
                E5A7D178FE75D5DBAED8EB4449351451400514514005145140051451400507A1
                A28A00E7B558B7432123A026A0F0E4A7257D0D686A49989C7A8AC6D024D97ED1
                FBD632DCDA3F09D8D14515B18851451400514506801AEC15735917B77F3601AB
                B752610D73F772FCC79AE79C8DE9C4A37F7479E6B0669CB12335A17AFD6B0AE6
                528323D6B8EA6A76C22417B36D4C679354A0D39AE4EF22A508F773AAE3BD769A
                768E22B2CB0E714E94073A96461E95A77D9E16723D6A96AB2E14AFAD75D3C020
                B5231D6B83D6A4DAE7DA8A88BC3FBCCE7FCF612B524736E90E6A07906F350C52
                66535C915A9EBF4333596DB7DBBD4D6E787EE0E40CD606BA712467D6AEE8D3F9
                6CBCD695A3780A93F78F53B1943420679C5065F2E53CD61D85FF00CA39E95752
                6FB449C572D0D2418A5A1D669339665AEE2D4E6053ED5C2E8D1ED0BF5AED1265
                86D41638C0AF729CAC8F99AD1BB21D43538ED91941F9AB87D4EFA4B99FE5CD5A
                D52EBCEB86C1AA69180BBDAB93115EDA1DB85C3DC8A24D8BB9EB0F5BD4912365
                06AE6AFA92C11900D79DEA5AA35CCDB54E79AF3D7BCCF7231F6711DBA4BBBCDA
                324135D7D8D9AD95A2C8DD6B2341B2C013B8E3AD696A1A82B318D0F02BBA9C6C
                8F32B54E776239EE4C92E54D4B0B9723DAB3431539F5AD1B423AD5DCCD234907
                CA3353ED05303AD57DFF0028A96DDC97C0A398CDA342C51A290366BACB08CDC3
                26E1D0D73D630B33026BAED3C2C6A09E315BD36DEE7255B7435005862E78C573
                DA9EA4824201152EAFABAC6A555AB8FBBB96918B66AA7512152A6D8CBDBD6566
                20F7AA097CF23E09350DC4BD77552FB42AB706B9A352ECEFF61CAAE6E6F66180
                739AE86DA2C5BC60FA573BA023DEDD6DC640AED65B610C6A063216BB29AB9C15
                DD8ACB947EB5692666618E95817B77344DF2E71F4A96C352DDF2B673EF5A6CCE
                64B4B9D4C527239ABF0366B0ADA6DC456B5B3D5817E8A407229690828A28A002
                8A28A0028A28A0028A28A0028A28A0043D2B9CD4A2F2AF5F1F75BE61F8D74959
                3AD45FBB8E503A1DA694B61A31AA2B88D6681E36190C0822A5A0F4A819CB783A
                56B78E4B27FBD6B3343F803C7E8457A559BEE415E658FB078CA6518097510947
                1FC4BC1FE95E87A6C9BA35AB449B03A52D350E453A98087A552BB6C21ABADD2B
                32FDF0868039CF2FED7AEDBC5D46FC9FA575770D9931E82B9DD057CED7A590FF
                00CB34FE75BD21CBB1F7A990D0DA82F6716D653CE7FE59C65BF21C54F58FE239
                08D2C423ADC4AB1FE19C9FE552B7013C3B6E63B2841FBC464FD4D752830A0564
                69916D8D40EC315B15A0828A28A0028A28A0028A28A0028A28A0028A28A00CCB
                D19620F4AE734D1E56B121FF006B8AE92FF824D7344F93A9A1ECDCD653DCD61B
                1DB29CA83EA296A385B74487DA891B6D5DF433B6B624A2988E1853E9A7710536
                4385269D515C1C46694B61ADCCCBA989045615CB166AD5B9279ACE31EECD72CC
                EA818D731EECD65DC5B647033CD7492DBE7B541F63C939159729D0A76322C2D0
                24CAF8E735DC44AA6C413C71589159E08C0AD5958C5698F6ADA2AC8C2A3B995A
                D5C08A1C8F4AF34D5EEBCC9181EF5D8F88EE8F9079ED5E6B7D39698F35CD599E
                86062539DC29383496A417CE6AADC39269F66496AE78AD4F4A7A22AF88701A33
                9E950E9F75861CD58F10445A2422B0ED5CC64935D5285E072C2ADA477369A894
                4DABCB13C5765A3C24C2B2B7DE3DABCFFC376ED7F7D1F5DABD6BD6ACACF60445
                1DAB969D3B4C788AD746E69109254E2B4756BB291F940E054DA6DBF9301761DA
                B9ED5AE0C970403DEBB66F96279505CF22844866B962C4E0536FAE1625201AB2
                B88A12C7A915C86BBA8156600D78F5A6E523DCC25148C4F11EA2CBBB69CD731A
                5446EAF46EE99A9B52B83712119ABBA2C0214323575D18685E32A72AB1D1CD76
                B6568228F1C8ACA121739C92C6B3EEEF1A4B8DB9E01A9EDDB07756EE56D0F2A3
                06DDCD64219467AD5C858A267B0ACB85FE6CD5E80B4B288C0E0D09DCB9686A40
                ED39017915B7656A0480FB541A759796B8EF5BD6168CF2000569085D9C752A59
                16B4E87E71915A37772B046403CE2A66812D2DB79C6715CD5D4EF71310B9C66B
                6A8D4118D38BA8CA17934971724738CD52BA3E5715ACD1AC40B375AE675BBE58
                F241AF2AB566DE87B786C3A4B528DFDE003693CD53B38E4B9B8555E41AA2B71F
                6AB8DBD79AEFBC27A0B4B22CACBC0F6AE9A307B99622A25A1D5785F431676EB2
                91F3375CD7432E9E927CC4F38A6C12A41185F4A8AE75548D4F35E845A8A3C69F
                34E467DE69D1AA1E2B98BA8BECD3AB2F76C574326A6B3B633593A9A07D847F7A
                852BB29D3E589A368FF2A1EF8ADAB472715CFDA0215735BB667A56E8E67B9A8A
                DD2A5AAC0F4AB00E4502168A28A0028A28A0028A28A0028A28A0028A28A002AA
                EA11F9B6328EE06E1F87356A908DCA41EE31401C8D14E914A48C87AA9229B599
                4731E265F2352D2EF7A012985BE8C38FD40AEC74697744BCD731E2D84C9A04F2
                2FDF8712AFD54E7FA56BF87E712408C0E411906AA22676519C8A92A084E5454F
                5421AFD2B17537C46D5B121E2B03577C44D4011F85D39BC9CFAE07F9FC2B549A
                A1E1B5DBA3C8FDDA43FE7F5ABD50C682B0F5D6F3351D32DFFDA794FE0001FCEB
                6EB02E8F9DE2A553D21B718FA92688EE0CE8EC170A2AFD56B35C47F8559AB105
                14514005145140051451400514514005145140147505CAD735A8C7B648E4F4AE
                AEED03267D2B9ED4A30F0363A8359CCD206C69B73BED064F4149777200EB593A
                65C910AC7EBD6997B70C095ED50E562D475352D6F727AD69C52798B9AE36DEED
                964E2BA0B1BC2582FAD38CD5C254DD8D6A8A7194A969928CA1AD5EC62B731A74
                EB55A38F20FD6ADDC3156C62A35F9471DEB9647545911B707B531EDB0338ABAB
                83D6964D813AD2B09B6538E2155F5794456A7E9568CEAA700D64EB4E25B4939E
                40AA4F42E2BB9C6EB971E643D6B84BA23CC35D6DEB79D0367A838AE3AF8ED91B
                1DAB8AB6E7AB85D0CC9E41BAAC58B8DD5973C8777E356B4F726655F5A2306CE9
                AB256352F6D8DCC638C8AE725B36136C03A9AF51D33411736065E4E066B1A0F0
                F89F58DAC3E40739AEAB591E53A9EF1A3E0BD28D9DB79AEBCB608AF4FD0AD7CF
                98161C573F676AB1C491050020C0F7AEE742B558ADFCD6E0E2A6942F232AF376
                24D5A64B3B228BC122B8A57F3E724FAD6AF88AF9A59D941E0715976510C1763C
                D678A9A4AC6983A6EF7643AA4FE5424579E6B13F9B23735D7EBB76143283DABC
                F6F6E0977CD79515CD2B9F4305CB132C9CDC63DEB49EEC416FB41C7158AF30FB
                48C7734CBDB862BD6BD5A71F74F2B152729685C8A5F3242D5A904836015CC5BD
                C85EFCD6A41760A139E7B56138B4CD209721BF093248AAB5D8E97601515D8735
                CD7866C5EE0F9B2820678AEF6DA201028AD69A396B4922E5BC04631D6BAED2ED
                120B6F3A41CE2B3745B01210EFD055CD67501041E4C7C76E2BB22ACAE79937CC
                EC656AB7ED34E6143C5578E25850B375A8A042F3F98D49A8DC6D43CE38AF3B13
                5AECF4F094AF6462EB5A87961829AF3BD5B523348501E6B6F5FD4046AE77572D
                A058DC788758F2D1094CF5158D0A2EA3B9E8D7A8A84753B1F057875F53B8595D
                32A3D457B0C16D1E9B6E238801C547A36956DA1E9B1C7181BB68CE7D69656690
                96ED5EC538248F9EAD59CDE855BBB9688119AE6AFF00526C91935A5A95C14623
                B572B792BB3938E2B0AD512D0D70F49BD593C37EE6E17E6EF5BAADE7A2E7D6B8
                C86E3FD23FDDAEBF4BDD247B986055D1BB572EBA51D0D28881F2D6B599E95950
                C4198B66B56D86DC575C4F3A4B53454F4AB286AA29E95650F34C9B92D1451400
                5145140051451400514514005145140051451401CD6A29B2FE51EA73F9D55AD1
                D5D36DE06FEF28ACEACD9454D521FB46997311FE38D97F3159FE0D9CBE996A49
                F9BCB00FD4715B320CA11ED5CE78409896683B453C883E9B8FF8D5444CF4BB63
                95156874AA3687282AE8E95422397A1AE6B5A6C44D5D24BD0D72BAEB6226A00D
                4D15766830FF00B473562A3D3C6DD0AD47B7F5352566C615CFC5FBCF14EA0DFD
                CD89FF008E835BE7A1AC0D37E7D73547FF00A7923F218AA8833ADB6188EA6A8A
                0FF562A5AA10514514005145140051451400514514005145140114FF0072B0AE
                172EC0F435BF28CA11ED591751F1C75150CB8B30AD18C37AEA7A678A6EA12724
                D4F7516C904A3F1AAB76BBE0DD585446D028C33E1EB72C2E7F7839AE58BEC7AD
                4B3948606B28BB33A1ABA3D02170F1834E619522B3F4B9FCC8B6D68D76C5DD1C
                12566645D27CD55C9C0AD1BA4E4D6648706B9E47443518F2EDEF55E6B925719A
                6CCDD6A9484906A6E55B5069C93D6A9DE39789867A8A7E1B75453A9DA734FA16
                B738A99BE7953DCD72B7EA7CD7AEB2F53CBBE61EA2B0351830C4FAD7255477D1
                958E46F06D353E90775DA0F7A8B501CD4BA30C5DA7D6B4A4F446D55FBA7D01E0
                FB249BC3D26464EDACF5D3D209E462BF364D741E0641FD80C4F42B55B50841BB
                F97A135D32D8F1DCBDF645A7C1E74AAB8EF5D6DDBAD869B81C1C565E8B67B66D
                E47029BE25BDC810A9A49F2C6E2779C923999A53737441EE69D7120B687F0A6C
                11E25321E98ACAD7AFC2444035E46227CD23DDC251399D77502D29E6B8FBEB8C
                0639ABBA8DDF9AEC735CDDFDC1E99EB5787A773A711539158805C16B9FC6925B
                8DE706AAC0774A4FA52CAA43E6BD350B1E34AADE44A32A739AD9D0ECE5BEBD44
                00ED06B0E157B895635EA6BD5BC1DA30B5B3499D7E7358D4D0E952F74EB74BB1
                8EDAD1142F38E6B774FB532C8001C551B542D1E3BD751A55B8862591876AAA70
                D0F36BCEECD091D34FB1EC0E2B939277BDBC3D48CD5CD7AF9A6711A1E2A2B184
                451798DD714AB55E58B43A34AEEE4D22AC51FBD72FADDF0553835ADA95F08D1B
                9AF3CD7354C6FC9EB5E5FC6CF6A8C3D9C7999CDEAF712DEDF1B74C9DCD8E2BD9
                3E1AF8561D274B5BD9907984679AF3CF04E82DABEB293BAE501CD7B65C48B670
                25B45C281838AF570B0E547998DAFED1D8269DAE27DAB9C66AD4C82DACF2DD71
                516950891FCC3D0555F11DF003CB53D2BAA4F951E6DBDEB1CF5FCC242C3BD72F
                AA5C88632075ADD946637949ED5C5EB37009600F39AF2A6F9A47B74A9F2D3B8E
                B02D3DC28193B8D7A5DA4621B145FE2AE1BC1D60F349E7483E55E95DF6D3BC0E
                D5E9505EEA3CAC4D4BB25801C8AD382A9C4985AB91715D363954AE5B53C8AB08
                79AA61B915611AA51291714E452D46878A9298C28A28A0028A28A0028A28A002
                8A28A0028A28A00C6D707CF0B7A822B26B675B5CC5137A123FCFE558D50F71A1
                0F435CD683FBAD63528FD2E89FCC035D31E95CC69FF278AB52503AB21FFC7688
                EE0CF46B23FBB15A03A566D81FDD8AD11D2AC44737DD35C96BE7F74D5D6CDF74
                D723AFFF00AA6A00DDB31B747B41FECD3A92D4EED22D08FEED06B3285EF5CFE8
                C776A7A8B7ADDBFF003ADF1D4573FA1F1A86A03D2EE4FE7551133B187FD58A92
                9917FAB14FAA105145140051451400514514005145140051451400C738AA170B
                F78FAD5E92AACE32295877312E137294AAD2420DB951C902AFCEB824D3218F73
                60F7ACA713484B538FB98CAB9CFAD58B597915A1AB597972920715951651AB95
                AB33BA2EE8ECB469882057423919AE434A9B6915D32DC0F281CF6AE8A52B1C95
                6377A0DB923279AC8B81B5B8EF56A79F27AD5295B71A993B97056456752C684B
                5DC6ACC71EE35A36B6DF31C8ED4462372B188D66139354AE634D8C335D45D5A1
                2A702B9FBDB560AD4E4AC1095CF3ED793C9B959073DAB1AFD0491EE06B6BC48D
                B54E7B1AE7C4A25B32D9AE59A3B29B391D42322422A4D250ADDA7D454B7EA0C8
                4D1A6902E53EA29523A2A3F74FA27C1436F870F3FC34D9D54CA79E73553C2978
                A9A06DCF25698F739949CF7AE993D0F2B97DE3A0B4BA16F6AEC4735CBEA3786E
                AE89F7AB5757BB6D8853DAB061977CE49358569DA074D1A5EFDCD29088EDC9F6
                AE07C477986719AEBF51BD48ED8F35E5FE21BCF3246C1EF5E6463CF23E828DA1
                0B98F24A1D9B9AC1BA7335C141DB8AD4823795F03BD09A449F6E058704D7A942
                291E5E2EADD95EC34D77CF079A9E6D2A450490715E89A0787D27D8368E6B4FC4
                3E117B4B42C14722BB1AD0F279FDE3CF7C1FA035E5EB4AE0E10F1EF5EB56D6A2
                3450A30076AC2F0FE9FF00D9B6CAC472C39AE8E376005724D5D9DDCFEE9B1616
                F960C4715B3777AB6F6BB531C8AC7B4B9D917CD55AEEE8B9C66B4E7491CDECDC
                A42C19BA9C96AB775308202A3B5416602216AC7D7750112B2835E6D79733B23D
                4C3D1D9331F5BD58796C7B8AF3BBDBB9353BC48631CB3638AB5E22D58A3380DD
                6B47E1B68326A7AA25CCCB98D5B773F5AD30D45EECD71759463647AD7827498F
                45D01657C1959475AD0DCD24C73CEE356AE956385628B8514DB48C64135E9C55
                91F3E9B94AECD18645B2B53DC915C96A1706E2E18E7BD696AD7DB232AA6B061D
                CE4B9AC311534B1D34A8F34AE57D424F2AC88CD7053B19AF3693C6EAEAB5EBC0
                AA501AE5625DF36FF7AE4846FA9E9D49254EC7A2787EE2186C561C0048EB5D34
                2864518E9EB5E6505F34463DA7A5775E1CD663BA1E513F362BBA94EDA1E2D5A6
                DAB9BA1005FA54A8714D3C6452AD765F43922AC4C0E48AB08D5596AC47D6A50C
                B48D530E950254E3A530168A28A0028A28A0028A28A0028A28A0028A28A00CCD
                6FFE3DA3FF007FFA1AC3ADCD6FFE3D63FF007FFA1AC3A896E3415CCDB71E2DBF
                1ED11FD0D74D5CD41CF8BAF8F6DB10FD0D11DC19E81A7FDC15A63A56669FF705
                698E95622397EE9AE535E1FBA6AEB251C1AE635C5CC6D401A56073A25A1F63FC
                CD4955B477DFA05B9FEE922AC566501381581A3FCBAC6A8BE976D5BC79AC1B3F
                DDF8A3554F5955FF00351551133B28BFD58A7D4701CC62A4AA10514514005145
                14005145140051451400514514011BD4120C8AB0E2A1928032EE53E5350C6C01
                5ABB3A654D673651A94AD612DC9F50B713C1B80E715CC4F6FE5B74AEAA29B745
                B48AC7BF880CB0E95CB389DF4E57441692796056A8BF022033DAB01260BC535E
                E88A85248BE46CDA6BC0C7AD34CC198735822F0E6ACC37649A6A4983A6D1D259
                FCC456E40A02D737613F435B4978028ADA0D1CD513D8BAC01522B9AD51F6332D
                7451CC251C5735AFE637240CE68AAD0A968EC79D78961F321948EB835C2595D6
                0342C6BD07566DC920EE4118AF32BD8A4B5BC2DB4819AE4933D28C5A417884EE
                3505882275FAD4CD38946D231525A423CD1839E68A65CF63D3F41BE31582213D
                AACBDE820F3DEB9FB39BCAB2439E40E9512EA07241F5ABA9B1C915EF1D0B5E6E
                8CA93553ED222CB66B1A4D4F39F6AA936AA594AE2B92A5E4AC8F4611495C35AD
                5894650D5C93A497929E339ABF73E65C4B80A4E6B4B4BD318302529D0A2D6E69
                52BA51B10E91A1B6F5764E01AD1BFB48A1F980E4574B042B6F6A46D00E2B9BD6
                5F1131CD76422E279926E5766A7867588A0997730C035DEEB3ABDB6A1A5A8560
                5BA5782DA5FBC72100915D569DAACB23471162413EB5BF32B1C4E2F98EA70CF1
                600FBB53C1738203549691EE4E94E36F81F771EF58B8DD9D89FBA5979C18FE53
                540CE4B124D24B3790A41ACC96F142B366B8EB4EDA1DD86829B36FFB5122848D
                D5C3788B5904B9DDEB4FD43542919C1AE035DD559D8A8EA6B1A54DCE68EDA928
                D18EA42A26D675448546ECB57D0FE13D29345D1906DDAECB5E51F0CBC3A6EEED
                6FA4070A73835ECD7771B15114602F6AF554544F06BD5751E84CD331233565EE
                160B5DD9C1C5508E70EA323A554D46E83A6C0D8A99CEC10A6DEC53B8BAF3E43C
                F7A7C8EB0D993ED59A8407E4F7A66AB7AB1DA101ABCEA953999EBD1A0E11BC8E
                5B56BCF3AE8AE68822C43BAB30BF9D784E7BD6B89025BEDF6AE9834A271D6937
                2B10090EE3E82B5FC1772EFAD6D53C7FF5EB0D641F303C67BD757F0FB4575B96
                BD7CEDF7A20DF3135795533D279E334F5A770FEC293A1C0AF4E1B1E4CAD7D091
                6AC47D6A041D2AC46BCD0422C254E3A54489530E281851451400514514005145
                1400514514005145140197AD9FF47887FB7FD2B12B5F5C3FEA07FBC7F9564D43
                DC6843D2B99B3C9F156A07B6631FF8ED74CDD0D737A57EF7C41A8C9FF4D82FE4
                A288EE0CF40B01FBB15A43A567D88C462B440E2AC4324E86B9DD6133135746FD
                2B13554CC6D4010787DB7688CBFDC90FF4ABB597E1A7FDDDEC07B10C2B52B37B
                941580FF00B9F18CFE935BC6E3F0C8FE95BD585ABFEEBC45A5CDDA489E227E84
                11FCE9C44CEBAD4E63A9EAA58B6631F4AB75620A28A2800A28A2800A28A2800A
                28A2800A28A2801AC38A81EAC1E950B8A00AAEB9C8AA13C78AD1239AAF3AE41A
                2D71366787DA0D64DD5D03198C9E6B5251835CB6ADBA1BB327F0D63511D14995
                AE6E0AB601A81AEF2339AA72DC872C7354FCD38EB5C525A9E8C19AA2E727AD5C
                B69EB0125E6AE432E3BD08A91D5DB5E6D039ABAB7F92066B9786738EB56A1B82
                1F935AC65639A50BB3B4B0BCCB0E6A1D69448A5AB2EC2E332000D6E5DC264B46
                6F6AD5FBC8E7B72C8F36D4A30B2331AE3B55812E9C802BB9D62125DAB91B881B
                CD3815C359F2B3D6A4B9A270B30786620F406B474F957783DEB4751D343A938E
                6B9B567B3BBC1E99A74A771CE0EC7A25829B88C0A59EC0A13C555F0DDEA4AEA3
                35DB0D3D6E5320575F2F323CF6F96479EDCC2E8D81DEABA40ECF8AEE6F341218
                10B54069051F3B6B274ACCD5E23A15F4AD1564915997AD77963E184F203851D2
                B0EC9840403C62BB5D135547C46C456B15639E751B396D5B4F6814A815C0EB71
                908E2BDBB5DB0171097419E2BCA75DD3D83B0DB54C29CF43CE62B721D8D6EE87
                B9AFA31E8454DFD96C149DB5A3A1E9E56F0363A505B5D4EFF49B7F31D463AD6C
                5EE9C228C9C76A6F8760DD221C74AD6D7088EDDBE94D6C4A96BCA797EB53F945
                80AE42EB53386506BA0D7DCBC8F8AE2A6426E0579B595D9E9E0DF2B23BBBC664
                3935CD35BC97FAA451A8272C3F9D74175167815ADE10D2165D623775CE0E6B7C
                32B32330ABCCAC7B1F81FC3F1E97E1A49194062B4CBAC995BEB5B2D78B169D1C
                098000C55416BF6865C0EF5D72DCF2A9EC671731C44D605EDDB1908CD74DA9C1
                E42115C55FCA11C9CD73D6D8EFC3AD475CDE08D339ED5CE6A9A9B491950D51DD
                DEB39600D63CEECC79AE384353D3A957DDB162C65C1DCC7BD68BDCEF00035CF1
                9FCB5DB9E6AFD84BE60E4D692D11C1C9CCEE6AC69E6102BD1FC11AA4096DF637
                E093C66BCE61E8C3D7A55CD3EE1E29D191882AD9EB4E9CF50AF4BDD3DB5C1560
                83A1E94A148EB58DA26B91DE4081D86F418ADD661226457A74E7A1E3CA1663A3
                E6AD4639AA96C7079ABD18E6B43245841C53A907029681851451400514514005
                1451400514514005145140187ADB03731AFA2E7F5ACDABBAA36FBF7E7EE802A9
                566F7286BFDD35CF787079977772F5DF72E7F5C7F4ADEB8711C0EE7A2A9358DE
                118C9B38DCF5725FF339FEB4E22677D663082AF0E9552D461055C1D2AC435BA5
                656A2998CD6B1E9542F572868039BD09BCAD6A78BA0743FE7F4ADC3D4D736AFF
                0065D7ADE4E80B6D3F8D74B28C484544B71A1B589E261B2D2CAEC75B7BA524FF
                00B2C36FF3C56D551D660375A15FC239631175FF0079791FCA85B833574D9372
                0AD2AE73C3B742E2C60901FBC80D747DAAC41451450014514500145145001451
                412075A0028A6991477A634C074A00909E2A190D46D3D44D366801CFDEABC9D2
                9DE664D358834D09A29CB164D61EB361F69B060BC38CD744C33552741BF38E2A
                66AE690958F29955E290C5265483DE9EB06472715D5EBDA1ACE0CF1AE08E6B06
                1818808E30578AE4940EDA750A8B0B29F6A940DBCE6B6A2D3C4B1723A5529EC5
                D64E9C0A8E534F684714D85AB51CBB8E7383540C651F1DA9C0B2367B54B2934C
                E8F4EB80B32E6BBAB7659ECCF03A5797DA5C1590735DE6897BBD1509EB5AD366
                15A1D51CC6BF06C99BB57252B2AC872A2BD1FC4560642CEA38AF3DBDB665908C
                5735785CEBC2545B18D7EC1C1DA315C7EAD0725875AEE56CCCA0E45646A5A56E
                2462B960F959EAB8A944E7FC3F757104DB941214D7AEE83ACAC8155C0F7AE0FC
                296B6D06B46DAF17E47381CE2BD3E3D174D8862D9393DC366BD3A334CF9FC5C1
                C65A1AC86DEE10F22AACB611B67A0A83EC53C00F94C062A68EE0B908C7691D73
                5D0D239A37B6A73F7F11B790E3A536CB5168250735B3A95BACE9941DAB939D5E
                29F1EF50D1A247AD68F7A9A8D96C6C6718AE7FC41A0812160320FB551F0DDFB4
                12460B719E6BB9BA115CDA6E383C6451BA25FBB23CBE6D2022E36D4567642090
                91CE78AEC2F228F6100735951D99DD9C77A46EA5A1D07875422827D299E24B9F
                95D47A5258BF9117A5616BD7DB9DF9A99688882F7AE70DAA1DD2B7D6B9E9E102
                406B635098176358CCFBA4C571C95D9E8537CA8AC602CF9EB5D6786ED7C8226E
                86A969F61E748BC75AE8FC9166A8838CD74D38D95CE3AF2E667431DC96DA0F35
                D468B0875C9AE2ED5F732D779A0AE22CFB55C75662D72C6E62F8A14461B15E57
                AB4ECEEC057A978B1B2CC2BCCEEE0DEED59573B30CCC28ED8C8DCF7A8EF2C7CA
                35B50C0A1C0F7A9F56B30960D291DAA69C4AAB575B1E697773B6E88AD5D2E6DD
                8AE72E5F7DEB91EB5BBA483B41A8AF1B23BB0F1E6573A546CE0835246FE5C808
                F5AA51390715601E4572C2E3AF6E5B1D069D7F25A5C2CEAC76F75AF4BD17528E
                F2D97E61BB1D2BC9A03BA3C56C683AA49A75E2ABB7CA4D7A34A479152173D595
                8ABF15A16EDBCF4AC8B79C4B02CCA739ABF67700C9835D507738651B334E8A40
                734B5648514514005145140051451400514514005145457327956D249FDD5340
                1CDDCBF99732BFAB122A2A28ACCA3335F9BC8D12EDC75F2C81F53C7F5A9BC370
                7976F1AFF740159FE277DD6B6F6C3ACD32823D8727F956FE8916D896AA22674B
                00C28AB1514430A2A5AA101E9556E572A6AD54332E54D00711ADA18E5120EAAD
                9AE8C482682298747406B2F5C83746DC53F419FCFD20213F342C54FD2A643468
                50B82C01E41E08F6A4A290CC4F0D936735CE9EC79B69D907FBB9C8FD2BB38CE5
                0571975FE87E2B8E6E897B08FF00BED783FA62BADB4937462AC92CD145140051
                451400521207534D92558C64D66DC5E124E2802EBDD2A92055596F33DEB35EE0
                9635199734017FED47D69A6E09AA21A977D005A69E9BE713558B526FA00B7E6D
                1E6E6AAF99C527994BA8D16F7D44E075ED5179946FE79E95448922064E464560
                6A1A702C658856F9C93D78F4A610AC4AE38A8712E32B18BA74818F94DC115A37
                5A7ABC5951DAA8DCD93433F9B1B63D856B69D7E9709E5BA6D61C73DEB3944D14
                CE42FED1A224E2B34B7CB83D735DEEADA6078CBAE2B89BCB368A42DD0563289D
                10991C4FB581AE9B49BEF2D90E7A5724A727AD5EB5BAF2C8AC93B1D2D7344F48
                79A3B9B539EA45721A969E3CC66C55FB1BCDF18F9AAD5D47E6C5902B549491CF
                0E683387117944F154EE5031CE2B7EFADB664F4AC49881918AF3A74DA67AB87A
                F7D19C9EB28F0CA2E23254C7C8C558D13C777F68C04C8A501C64934FD5E23223
                0EC6B99BA8C11B546D02B5A3539771D6A2A7A9ED7A3F8A6C7578D56293331EAB
                8AB3AC42CD18923E36F2D8AF03B5BDB9D327135BC8548EC2BD3BC1FE378B535F
                B15F7EEDC8C65CF5AEE8D54CF26AD09465A1D5E9B789731F963951C127D6ABEA
                DA4955F35578ACB9263A66B202F10B73EC6BBE8E38B53D17CC5233B7A55DEE65
                768F3EB6BB682655E9CD75F6DADE6DC46CDDAB8ED561367724E3A1A822BF3C36
                7F0A4DA4369B3B33379D3E33C56B41662451815CB69779E73038AEEF4A40C992
                69AD7632778EE655E426DE127A5709ACCE4B39CD7A4788405B52077AF2CD5891
                BD6A2AE88DE9B4CE5AEE5DCE45416B6E669C5493C64484D6A68B6BBA5C9F5AE6
                4AECEC734A2749A2E9B80188E951EAAF8BD541DABA8D3E058AC8BFB572B7EA65
                D41987406BAA365138DBBC8BF627E75AF43D10E2D89F6AF3EB18C975AEEF4D93
                C8B46C8CE454C37B8EA6AAC8E7FC48FBE57AE12E70ACD5D8EB9365D8D70B7F3F
                EF08C5655DDCDA85D11DB36FBB55F7ADBF13C1E4F870BE3AAD61E98A5F504E3B
                8AEBBC730F95E148CE3EF2E6B4A4655DFBC7CF247FA4313EB5D2692C36815CE3
                1CDCB76E6B6F4A241ACB116B1EDE0D5E07420723156D53A5514930791D2AFC52
                06038AE7A6AE8C71374CBB6EBC524EE4B061C15A727DDE38A864C86C57447438
                B73B8F0B7893722DBCC40038AEEA17427CC43915E296FBA360F19DA4735E81E1
                6D6C5CAF9129C30EE6BAA9CD1C75A9B6F43D06DA4F316A7ACBB09F1214FD6B4C
                1C8ADD6A72B56168A28A04145145001451450014514500159DAC4BB2D020EAED
                8FC2B46B0B58977DD2C63A20E7EA7FC8A4F60467514521E0541473BA99FB4F88
                ADA11CAC31173F5638FE42BB3D2A2DB1AD717A5837BAC5DDD755693621FF0065
                78FF001AF40B18F6A0AB5B126820E29F48A38A5A6014C71914FA4238A00C4D4E
                1DD1B71583A149F67D4E7B663812AE47D47F935D5DE47B90D719A86EB2BF8AE5
                7AA30349EC074C78A4A52CB22AC8A72AE011499A828CBF10C25F4AFB5463F7B6
                7209863FBBD1BF435AFA55D09A08DD4E430045336A382920051C15607D08C563
                F87647B379B4E98FEF2D6429CF75EC7F2AA8899DA76A2991B8651CD3EA8414C7
                9020E69E4E066B3EE6425A802BDC5C939E6A83C858D4F2F4AAA5803408693CD2
                504E4D250005B149BE8C6682B40C50D9A334D0314B400A4D203486933400FCD2
                E6A3CD19A009775277CD3334A5B8A100488B20C1AA3342D6E44B1F6AB7922807
                272DF76931A26B1D412EA2F2E5FBDEF54358D2C49096402A2BDB7689FCF8738E
                BC55DB0BE1729B24C66B292358BB33CFAEADE4B698E47150A4E7762BBCD67475
                9A32C8BF9571B71A6C90393B4D734A2764266969F7BB3009AEA2DAED64880CF6
                AE0ED83F98062BA7D389C0C9AA86829CAE49A9C5B81AE62EE2F2F26BADBB2264
                E3B57317C36B106B0A86D41D99CE5DFEF0B0AC1B9B525FA575AD6A1D8B7AD569
                74C67390A6B150B9DFED2C8E3E5B0C90B8E48CD52F264B49FCF04895395C1AEE
                7FB2B77DF1803BD636A1A7E5D811851D0D6A938834A712C278B56FB4D48AE58F
                DA91860E3B57A9F8235813E9E222D9C815F3D5D5ABACE4A6723D2BD0BE1D6B0D
                0CCB0C8D8EDCD6F095CF3EB52B1D478AE51E7B62B8E176C250A0D773E2DB32D1
                ACCA3835E7E176DD73EB4EAE8614D5CED3429B68524D7A169177B40E7B5795E9
                D741582835DBE997995001ED4A94C2AC0D3D7EF4346466BCEF54903331AE9F5C
                958A9AE26F5CE4E69D595C54A36293461DAB73478157358684961F5ADDB09361
                5A889723AF59D52C0AE79C56225B199D9B1DEA48E6695B68E95B3A7D9163D3AD
                6BBA32D99169B624CABC5754F17936A7E94FB0D38478622A6D44622C0AA8AD08
                73D4F3ED6989635C5DEA1329AEEB55849735CCDC5A664E9595489D14E645A1DB
                6EBB4247715D8F8FA00DE118401D12B0B49B731DD271DEBAAF13C46EBC3FE5E3
                385AD29A32ACEF23E5C997CBBE75F7ADBD35941154B5BB36B7D4246C60669965
                310473586223747B98197BB63A866030477AB56F25632CFB80E6AF5BC9D2B0A6
                ECAC56263737A17C9A795DCD5461970455E85B71AD933CDB58B31C7843F4A75B
                5E4961729329201EB534401C0F5A82F1000C9E95A474666F547A8E89A80BC863
                954FD6BAC88E6306BCCFC07231B1F9BD4D7A5C1FEA56BB21B1E7D45A92514515
                4661451450014514500145145002330552C4E001935CACD219A6790F5639ADCD
                5A6F2ACCA0FBD21C7E1DEB02A2434154B55B9FB26993CDDD50EDFAF41FAD5DAC
                1D7A433DCDAD8AFF0013798F8F41D3F5A4865AF0CD998ADE35239039FAD7736C
                9851583A3DBEC8D78AE8E25C0AD09251D28A28A0028A28A008265C835CB6B96B
                BE36E2BAD7191593A8DB878DB8A00C9D0AE7ED1A6F94C7F7901DA7E9DAB46B9B
                B194E9DAD856E229BE43F5ED5D21E0E2B36861587ADCBF60D56D352030B28F22
                6FA8FBA7FA56DD50D62C86A1A5CF6E782CB953E84720D34C197AD7540CA315A7
                15C9619CD79DE85A93C91F972F134676483D08AED34F90C840AB11AC58B0AAD2
                C249CD5E518514100F51401833C6C33545A3627AD74D35B2C80E07359735A956
                3C502330A90290293565A3F988A9228727A50040919C53FC835A11DA6474A9FE
                C7C74A0662B446A331915B12DA6074AAEF6C7D280334A9C53769ABCD07B546D0
                D0054A4A9CC58A88A9A004A4CF341A31400F0C0F6A438E9DA9BD297340001918
                6E57D2A849035B4DE727DDF4157C50CA1C60D4B43B96AC6EE3BB4F2DB00FBD51
                D534A57624002ABB4525AC9E6A74AB23535B95DAC7E61594A26D091CF8D3F64D
                8C55C893C93D6AD4E547359D7572B1AEECD65B1BAD49A6B848E3392335817199
                642C7A5124AD712E73C555BEBE48A3F2C1E6B9E6755240CC03F078AD5B058A5C
                2902B926BE00F5ABF61AA0471F35281A546EC75B73A3878B72115C7EB560CB95
                0A78AEA6D35A0C9B4B75A2EA14BB42719CD6B2574611ACD3B1E5B7366304EDE6
                ACF86A1686FB774C30AE8EFB4AF2F2DB78AAFA6DA6CB9240EF4A9C5A6693A8A4
                8F44D5ADFED5E1F4940E83FA5794DEC662B935ED3A6C22EBC3ED1919201AF25F
                12DB9B6D41971DEB6ACAE8E5834A4416521470C4E6BB3D12E0BB01EB5C1D9C9B
                A402BB3F0F826641EF5CF4F735A9B1B3ABC7F27D6B8DBD889635E87AA5B66153
                8ED5C9DCD896E40AD5A324EC73D1DB3641AD48E3644181935A10694EC80EDABF
                6FA63060A475A1441C88B498598EE615D869FB500045674164600062ACEE311C
                D5A4436757048AD18C551D41C371E959D0EA055719A496E7CCE735A5F431E5D6
                E655FDBEF24D62C963B9F35D04EC1AA14B70C6A5EA6B1D0CAB0B626EC1C600AE
                9A687ED366F163B52DA69C029900AB902EDC83DEAA28CA4F53E7EF1B68125BC9
                24801233E95C142FE4B61857D37E2CF0F25E583B04C9C57CFBAE690F677AEBB7
                001A8A91B9EA612B5B4238A51B41F5ABF0CE1315871B1438357D24CD7138D99E
                8CE5CD13A08260F1171DAB4ACA5122E6B9FB09328EA6AFD8DC60E33549D8E470
                B9D4427A7350DF92A85B19C9A8E39B81EE2AD5A94BBBA4B77ED5A296A71D48B4
                767E0BB63169B1EEE0B31AF44846D8945729A540238A344FE1E6BAC8BFD5AFD2
                BBA9EC79B3BF30FA28A2AC90A28A2800A28A2800A28AAF7B702DAD5DFF00888C
                2FD68031B54B8F3AEC8072A9F28FEB54A82727268ACCA109C0AE7EC01D43589E
                EBAA6ED89FEE8FFEBE6B4359BA36D60C10FEF64FDDA7D4F7A9BC3F602185001D
                05545099D2D843B10715A6A302A08136A8AB23A550828A28A0028A28A0043556
                E63DCA6ADD4722E450070FAE599C1751861C835A7A75E0BEB08E6FE3036B8F71
                57353B60E878AE6B4D9CE9DAB340FC453F1F46ED5324347454507838A4A919C5
                6AF68749F1025DA0C5BDD1DAFE81BB1FF3E95D9E8ADB8A1CD56D4B4F8B52B292
                DA5E8C383DC1EC6AAF866E248CB5ADCF1716E7638F5F43F8D5A7724ED68A6A36
                E5069D4C0298F1AB8E453E8A00A0F63972453E2B4DA79AB94500355420C0A751
                45002100F5151B42A6A5A280293DBFB5412418ED5A64035149164500643C5559
                A1AD6783DEA068680325A3C534AE055F786ABBC3CD005534D152BC751EDC5001
                416C52138A1587714C43F21976B0E0D62DFDBBDB39963C9039AD7269B22ACD0B
                46C3391512469067333EA7BA2C679AC6B8BB69720B1A9758B792D2E0E14EDAE7
                AEEE49E51B07D2B9A475C1A279F57F2508079AC59F53339249AA57B3195BE5E2
                A048D9C60039AE7945B3B212489CDD9CF5A9E0BC60739AAD1E9B3487233530B0
                9623C826946121CEA44D9B4D45958735D56997C65001AE1ADEDE4CF435D0E9C6
                5888E0D6F18BEA73FBBB9DC416097876B7A669F1786D9252CAA71F4AA3A6EA0F
                048ACC4E3A577DA66A16F71028DA338AD945185495B61BA3D9982D5A323A8AF3
                6F1D69245D34816BD806D032318AE4BC53622FD5822FCD8A6E37463093BDCF1C
                B1B5612E706BD0BC2D645E5438EF5870698F14A55908E6BD03C2FA798943B563
                1834CDE55158B1ABC0122518ED5896DA79B8900C719ADDD7AE51485F4ACDB0BD
                58F07356EC42BDAE6A7F64C70DB83819C532D2DA2F3B2D8E2AA6A1AEFC9B4362
                B24EB87B310695D21A8C99DC496B0B2678AE6F50C24A40E951DAEBCEF1ED6735
                05D5C093273CD0E4815392DC85A7DA7AD385D7CA79ACEB8936D526BE0A7153CC
                68A17364DC64F5ABD6B2038AE692F039AD3B4BA048029A95C1AB1DDD8EC6B7C7
                152496A0F2B591A7DD18B193C1ADD8E5122E456D1B1C72B913DAA4B114719045
                79178F7C2C16579634E0FA0AF65ACAD734C5D42CD8606E02AA51BA2E8D4E596A
                7CA17BA7BC321CA915511CA3E0D7A7F893C36F1BB909D3DABCE751B096072D83
                5C73A6EE7AF1AF16AC4B6972111CE6ACD84C59B39EF580B23468D93D6B474CB8
                0A003584A2D1D74D7323B18A52547D29FF0068786E23913395EB546D2E15B156
                246C9240A984D27A93530EDA3D73C25A8ADFC21B232A2BBA8FEE0AF17F065F1B
                2BA5C9F918F22BD92071242AEBD08CD7A54649AD0F0F134DC193514515B1CA14
                514500145145001583AA5C89AE3CB53958F8FC7BD6ADF5C8B5B62C0FCE785FAD
                7344E4E4D4C98D0514554D4AEFEC766F20FBE7E541EAC6A46665C93A86B21179
                8EDFE5FAB1EB5D86996E11178AE7340B12143372C7924F735DA5B47B5455A24B
                283029F480714B4C028A28A0028A28A002908C8A5A28029DCC7B94F15C6EBB64
                D82E9C303907D0D774EB9158BA95A0911B8A00CFD2EF85FD8AB9FF005A9F2C83
                DEAED72D0CADA3EABBDB88253B5C7A7A1AEA320F20E476ACDAB0C2B375485A09
                23D5E05CBC2365C28EAD1F66FC2B48D2AB6D3D01046083DC509D80BFA6DE25C4
                2ACAC0AB0C835A35C6DA93A26A62D327EC937CF6CC7B7AAFE15D6C1289101CD6
                8225A28A2800A28A2800A28A2800A28A2800A0F4A28A0085D6AB32D5D6191503
                2D005075AAEEBC9ABCEB55DD79A00A322D4256AE48BCD40CB40155969A060D4E
                CB51B0C0A0061A6F4A71A4A1EA0B42B5ED8C57D6EC847CC4579E6AFE1B9ED266
                7553B6BD3946DE45417091CFC4880FD6B27035533C525B640D8DAD9AB961641C
                8E2BD2AE3C3769743EE2C7EE0566BF84FC83986466F6C54721AFB522D23408EE
                234C8E4D745FF082C722060BFAD64DB0BAD3D82ED3F2D6F5BF8A27863C3460E3
                D4D52892E772A7FC20983909D3DE965F0D8B58FEEF4ABA3C69B410D1A8FC6987
                C471DE0230B40267333C4F1498EC0D6D69778D1ED19AA774566938A741115607
                2682D9DFD8DC9920C93DAA84D72BF6F0A7A1155AC6E7CBB7209ED5456F165D4C
                0C8E053466F43566D3E09DC6D5E4D6A5B04B6B4603820566A4FB6618A5B9B829
                1373C1A6C85B9CEEB776D24CFCF7AC54BE68D3AD4DABCFF3922B9D9AE88C8AE7
                9E87545DD58B77BA9B9279ACF1A8B16EB552676704D51690AB5734A4CE982475
                36FA8B2E39AD682F4C9C935C225E9DC066B5AD350E319A232668E29A37EEAE46
                0F358D35CFCDD6A29EF370EB59B24C4B55BD4851B1AD6D3B19719E2BA3D3559A
                407B5725664B1523AD76BA6A6DB70D8E715A451CF559B70CDB481E95B1697E17
                009AE7A3C919A16E1924C66B6472B3B24B9F31B8AB0A772F35CFE9B75990026B
                A0420AE456B16449193AA6836F7F0B8DBF31AF37F11780DA281DD23CD7ADCD29
                8B0719150F9B0DD0F2E45041F5A1AB9509B89F23EBBA2CD65336E52306B2AD5D
                91F06BE88F1E78316E2179E04E3D857856ADA5C9A7DCB0208C1AE6A913D7C2E2
                2E5EB1B8391CD741132BC67D6B87B5BB28E335B306A24498CF06B82A41A3DB83
                524767A6DC884020F22BD87C29AA0BFD3B69605938AF9FAD6FF0C413C57A1FC3
                6D59A4D60DB03952A4F5ADB0B51A763C7CC68AB5CF60A28A2BD53C00A28A2800
                A0900124E00A2B2F56BBD89F6743F337DEC76149BB019F7F75F6AB8241F91785
                FF001AAB45150505605D39D475458D398A138FAB77AD0D56F0DB5B6D43FBD93E
                54F6F7A4D0F4FDA1588E7D69C5099BDA5DAF971AF15BB1AE0556B68B628AB806
                055885A28A2800A28A2800A28A2800A28A28010D569E20CA6AD53597228038ED
                6B4E12237CB55B42BF67536139FDF443E427F896BA9BCB70E878AE2F55B492D6
                E16EADFE5963391EFED49AB81D252556B0BD8EFECD278CF51F32FF0074F71566
                A0A19736B1DFDAB5AC8DB0E774720EA8FD8D1A2EA32891ED2E86CBA80ED75F5F
                71EC69F55EFEDA4B911DD5AF17D6E381FF003D53BA9F7F4AA8BE826752AC1972
                29D58DA3EA91DE40ACA7D8A9EA0FA1AD9072335420A28A2800A28A2800A28A28
                00A28A2800A85854D51B8A00AAF55DC55890540C2802B38E6A075AB2F5038E68
                02065A89C71539151B0A0080AD21152914C2280199229A7693C8A7114D239AAD
                091C013D6A640074A896A55E9536126C6496F1CAF975CD325B3B4284797CFD6A
                C814D9178A56344CE5B56D11A642F6F85DBD4572664BAB09CABAB601F4AF4F03
                1918AA57BA55B5DA9F31403EC2A1A2D3390B4D44C8E09AD986E8328E6A95CF87
                258497B65C8F73557CABA81B6B2F3F5A5635E6375F53F261619CF14BA2869AEF
                ED0DF77D2B36DB4FBB9D958A8D9DF9AE9EC2D56DE2A6919CA45F12206E951DC8
                69E160A706A366F9E9E5BA55D88B9C9EA16F22330704FBE2B9FB8B560F9CD7A4
                5C4315D47B31F37D2B96D5B4C92CC9755C8AC9C2E6919D8C01645A3AA171A748
                33819CFB56CA5DC617E6E0D5BB69ED6738279FA5612A47442A9C435B49149C83
                F954A93189C020D773268B0DCFCC83359F73E19913E709C52F6668AB6A73FF00
                332EECD31119DC707AD6D268F21E0AD685968DCE0AF3428172AA88B4AD3D9C86
                ED5D6DB2288C25436761F678F918A7F99B1F8AD12B1C9395CBD811A1ACE77CCD
                C55979814EB54F237E69DC8352DA5F2C839AE8B4FBE0C36B1AE31AE763633572
                D351D8C39AA521F2DCEDE602488E0D653C6D1B020F4355E2D617CB20B535B504
                7EF55CE6728348D950979686290672306BC6BE217846459249A3036F5E057AFD
                85CA32E33506B7690DF59B2B004E3D28959A2A849C647C81716EF6F3B2B02083
                4E5B8DA17D4577BE2EF0ACAB76ED0C7DEB829749BD826DAF1D60E9A68F72962B
                951716F86DC83835EA9F06AD27BBD55EF882B1A02BC8EB5E6FA1784354D66EC2
                45082BEE715F4BF837C371F87B4848B6812B0CB7D6A69514A47363713CD1B1D3
                514515DC78C14514D92458A3677385039A0086F2E96D602E7963C28F535CDBBB
                48ECEC72CC724D4D7974D75397390A3851E82ABD4377185364758D19D8E140C9
                34EAC7D4A76B99859C478072E47F2A48645023EA77E6760760E107A0AECB4FB4
                11A0E2B3748B011A2FCA2BA48630AA2B424911702A4A05140051451400514514
                0051451400514514005145140114899158BA9590910F15BC466ABCD1061D2803
                CE9259343D44C9C9B694E255F4F7AEA11D644574219586411DEABEADA68911BE
                51587A4DF369B7234EBA27C963FB973FC27FBA6A64868E969412A41070474349
                4548CA97913DB4EDAA59A9CF5B9857F887F7C7BFAD6FE9B7F1DD408E8C195864
                1ACC4728E181E45529237D2A46BDB4526CD8E67857FE591FEF0F6FE5549899D8
                5154AC6F63BA8559581046411576A8414514500145145001451450014D61C53A
                83D2802A38E6ABB8E6AD38AACFD4D00577150B0E6A7715111CD0040C2A322A76
                151EDA00888A611C54C454645004245348A94AD34AD2BB1E8463AD4AB516314A
                2402AAE1645A41914F65C8A8A295768A9B7822A58156452A72064D4582DF7FE5
                FAD5B71DC557914B7DEA120B91B1E31D47AD47E446C7261069F8EDDA9E1C81C5
                3B036300541855DBED46F206294F27268E3349A2536228C9C9A785349914858F
                6AA18E1843C1E6A39D04E1848B907A6682A4FD69C85B187E953604CF3ED7F4E9
                6CE669101D95CD0D45A29320E2BD7EF2CA1BD819245CE4715E59E28F0FCBA65C
                ABA2FEEDF278ED594F43789AFA3F88F0EAAE78F7AF4ED1E6B3D46D82B32648AF
                9EE3B8F2BA1E45761E1CF12490488BBC8A85257B14D3B5CF617F0DC0D96522A1
                1A3C56D927155ACBC4866B65C3738A5BAD49E55FBD5B2B19DE456BF6545216B1
                43E5CE6AECF379A71CD529626519A89218D967C77A84DC60673505C3951CD519
                6E86DC566DD8B48B925D82FD6916F36F7AC56B9E739A69BB1EB53CC8B513A11A
                89C7DEA99351C2FDEAE58DDE0F5EB4E3764263353CDA97CB74779A7EAFB71F35
                69AEA3E68E4F15E71677AEAFD6B621D41C63E6ABE621C2DB1A9A9A42F2076504
                03934C874FD32F1437D9A326AA4D71E644DB8F5159963AAB5A5E8424ECCD0A44
                B7247A3687A5D9DBF3142A8DED5D2561E88EB711AC884115B95BD35A1CF3936F
                50A28A2B42442428249C01D4D606A37A6E64D887F74BD3DCFAD4BA96A1E6E618
                5BE4FE223BD66543634145150DC4E96F0991FA0E83D4D21906A179F668B6A732
                BF0A3D3DE9347D3893E638CB1E493556CADA5BEB9F3E51D4F02BB0B1B511A8E2
                AD2B1259B680228E2AEA8C0A6A2E053E98051451400514514005145140051451
                40051451400514514005358669D450051B9803A9E2B92D6F485991BE5AEE1972
                2A85DDA8914F1401C6E8BAA3893FB3AF1BF7C9FEADCFF18FF1ADEAC2D6B47DDF
                3A6524539561D41A7E8DAC35C9FB25DE12ED07E0E3D45434346D52C72346DB87
                E20F434DA4A4320656D2A46BBB452D644E65847588FA81FDDFE55D0D8DF47750
                ABA38604704563C72346DB94FD7DEABB43258BB5E69EA4C3D66B61FC3FED2FF8
                55262B1D6D159FA7EA515DC2AE8E194F7AD0AA10514514005145140051451401
                0B8AAAEBF31ABCC2AB3AF26802A38A888AB4EB5115A00ACC29856AC95A8CAF34
                01030A888AB2CB51B2D004045308A9CAD30AD00562B51B2D5A2B5132D00311B0
                00A9564A848E68E450059F33351B35461A8CD002514514005252D140094B452D
                001462969714D09880556D434E8753B47B7940F98706AD814E0C14FBD44D5CB8
                3B1E1BE20D0E7D22F991D084CE573546D262260C0F4AF6BD6B498759B3789D54
                4B8E1CD78F6A7A35C69378C8EAD80DC1C75AE770D6E74A9E963B4D0B5125154B
                574D1CFCA827AD79A69975E5B2F35DDD84EB3A21DC322A912CE96DAD84A7A54D
                71A692BC0A9F476462324574AB146CA3806B448CDBB1E65AA5BEC43C722B91BC
                66048AF54D6B4BCEF20579DEAF64622DC563389AC6473AF705783510B9E6A3BA
                53E61AA0EE54D61B1B44D6FB46E239A90CDC562A5C10C39ABD1BEF02914CD28A
                535752E1862A85BC64E2B456DDB00E2AE2886CBBE73180FD2B32672E36AFDE15
                758158F18AA8B1FEF303AD125660B53B2F02EBFB271672B75E39AF4DAF0ED36D
                E5B7BD595320E6BD7348D4E1B9B48D0C83CD441BF3DAB7A5516CCE7AB4DAD4D5
                E958DA8EA3BF30427E5FE26F5F6A6EA1A91973142709DDBFBDFF00D6ACCAD9B3
                1B051452330452CC700753523124916342EC70A3AD638126A7740F4894F02967
                964D46E3CA8F22253CFBD743A669CB1A0E2A921327D3AC44683815B51A6D14D8
                620A00A9C0C55085A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
                A28A2800A28A2800A8DD722A4A28032EF2D048A78AE335AD1D8B096225254394
                75EA0D7A1BA645675DD98914F1401CA68FAC7DAFFD1AEB11DDA751D9C7A8AD8A
                C2D634525C4B1E525439575EA0D3B4AD65A571677B84BA1D0F693E9EF50D0EE6
                DD2A3B230653823A5368A431AD6AC65375A7911DCF5921FE097DC7A1AD2D3357
                4B90637052543878DB865359F9C1E3AD2CD1477ACAEEE61BA5E12E17F930EE2A
                93158E98104641A5AE7AD3549AD265B6BF511C87EEB839493DC1ADE8E5590641
                AA10FA28A2800A28A28010F4A8597353D34AD005474351943569979A8CAD0055
                64A8CAF356996A265A0081854656A765A615A00AE569856AC32D445680202B4C
                2B5395A615A00AE569856A765E6985680212A68A90AD34AD00368A5DB4628013
                BD2D18E69D8A006D14628A005CD385329CB400F0294C79E7BD2AD48066802029
                820F7158FE20D123D62D58ED1E728E0FB56F14A8DD38A525A0E32D4F139EC64D
                36F99260700F15BBA5DE796460F06BB0D73418756819B1B5C0E315E773C171A7
                4E639148553C1AC5236E6B9E8DA6EA822C65ABA6B3D7578CB5792D86A076E735
                B569AC60E091557B1363D466B88EEA2F97B8AE435CD29A44660051A76B3B8805
                856E314BB8319EB49EA3478FEA762D13B3638AE76E508278AF59D63432E8C554
                D70F7FA4B479054D63289B464727860C2B5ED14F14C36655C64568DAC4322A2C
                5731ADA6C1E63A8C5742B6B1AA0C8ACDD3422B03ED56A5BBF43D29A760B5C8AE
                550AB151D2A0B1B6F3E50E471EB52EE44B77926601735369B6B71A90D912F950
                0EAC7BFD7FC2949F3688B8DA2AECB78123086D4658F05C0FE55BBA7588B28705
                8976E5B9A7DA5945671854196EEC7FCF1566B5A74B9757B9CF56B7368B60A28A
                6BBAA29663802B63015982A9663803BD64CF3C97B2F95164203C9A259E5BE97C
                B8811183D6B734DD3046A3E515490AE2699A688D47CB5D0C308451C510C2100E
                2AC818AA10018A5A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
                28A0028A28A0028A28A0028A28A002A374C8A928A00CBBAB41229E2B93D63441
                282C010C0E5587506BBD6404552B9B50EA781401C2E9FACCB6D20B4D48E0F449
                BB37D7DEBA00C08C8AA7AAE8A932B02A0FE15896F7B73A349E4DC6E96D3B3774
                FF00EB54343B9D3D151417115C442489C3A1E8454B4863CC8B24260B88C4B09F
                E16EDF43DA9226BAD3C6FB767BBB41D463F7918FA771F4A65391DA360C848229
                A76158DAB2D4E0BC8C32386157B39AE5DE18AE25F3637FB2DD7FCF451F2BFF00
                BC3FAD5A83569AD1962BF8FCBCF0B2A9CC6FF43549DC46F5151C53A4AA0AB039
                A92980514514008541A8CA54B4119A00AEC9513A55A2B51BA1A00A8CB5195AB2
                C95195A00AE56A365AB250D4456802B95A615A9CAD34A9A00ACCB4C2B56190E6
                985680202B4D2B53942698571401115A6E2A561C5371400CC734B8A5C518A006
                629B52ED34CDA73400DA7AD26D34E031401228A99066A25153C631400A129B2C
                5F27E356156A4F2C30E690198F0305CAF15CF6B5A245A841210815C0EB5D8B21
                2307A55196DDB248E94A4871678BDF5A5C696FB486229B05FE47A1AF4FD5B458
                7508594AFCF5E5BAC68D71A65CB657E4CF6AC1A66E9A36AD353F2D970D5D6E95
                AE74563FAD794C379B58162719ADCB4D4426C704E0D38B0B1ECD692437AA15B1
                CD52D5FC311CB197403F2AE6F46D636B2FCD5E87A76A315D5BE18F38AB6912EE
                8F24D4B44F21F18E9ED58FE4F95262BD2FC470C61CB28AF3DD4648A072CEC07A
                0EE6B19170D49A198A2645352F1406441E64A7B0E82AA69F61AA6BB284B685A3
                B63F7A56E063EBFD0577BA3F872D348452A3CC980E5C8C7E42B350723575140C
                CD2FC3B35C859F502554E0AA0EBFFD6AEA6186382311C4811074029F4574460A
                3B1CD3A8E6F50A28A82E2E5214249E7D2AC81F24AB12E58D66969B50976A82B1
                E7F3A7C56F35FCA19F213B2FF8D74563A6AC6A3815490AE41A7698B1A8F9456E
                C30851D29D1421474A9C0C550800C52D14500145145001451450014514500145
                145001451450014514500145145001451450014514500145145001451450014D
                65CD3A8A00A735B87078AC2D434A5914FCB5D4119A8248430E9401E6AF6B77A4
                CE65B53F213F3467A1AD7D3F5582F9700EC947DE8DBA8ADFBCD3964078AE5B51
                D0F0FE6459490721978229343B9B54573D6DAC4F68E21BF5257A0940FE75BB14
                A932078D8329E841A919254A9395431B00F137DE461906A1A29012C5179477E9
                D3888F7B799BE53FEE9ED57E0D642C821BC8DADE5F47E87E87A1ACBA984E4C66
                29916688FF00048322A948563A24915C654834FAE6E2431366C2E4A7FD309CFC
                BF8376AB89AC340C23BE81E063D19B953F4238AA11B1454714F1CCA1918107D0
                D4940053586453A8A008196A32B5688CD30A5005565A8996AE32544579A00A65
                4D46C31569D2ABC839A0081BAD46C69EE79A8D8D0019A69A334A280232293152
                95E29B8A008F14A169FB7914F0B40116DA6EC39AB01697CBF6A00ADB0D2F966A
                CF97ED4F11F140102A1152A8C53C2628C62801CA7152A9CD419A556C1A009C8C
                D44C99045383669E050067C96C5F85EB58DAC68D0EA10988A8DFEB8AEB7CACAE
                5473559EC187EF31CD007CFF00AE68936957A4143B33D6AA41314719FBB5EDFA
                E786E3D56CDC141E601C66BC5F52B13A5DF3C139C60F0315C8E36674C59B5A55
                DB238E6BD0346D51624CC8E147D6BCBF478F50D465F2AC2D9DB0705F6E40FAF6
                1F8D7A268DE1B96D8092F65DD27A039C5545B639B45AD56EAE2FC98ED22639FE
                2C7F9C7E3542C7C1F0F9BE7EA0DE6B9E7667F99AE9D11635C2A8029D55CABA98
                F3BE83228A382358E24088A3000ED4FA28AA2429090064D472CE9129663802A8
                99A6BC6DB102A9FDEC7F2A695C449737BB4F9710DD21E829D67A749712092639
                3E9D855DD3F48540091CD6FDBDAAA01C55A561105A58AC6A38AD28E30A29CA80
                0A7D30100C52D145001451450014514500145145001451450014514500145145
                0014514500145145001451450014514500145145001451450014514500148466
                968A008D901ED54E7B457078AD0A695CD007297FA42C80FCA3F2AE75ECEEF4C9
                0BDAB10BDE33C835E8F2421AB3EE6C15C1E280396B3D6E29984538F265F46E87
                F1AD40411906A9EA1A1AC80FCB590A750D2CE1499621FC2DDAA1C4773A4A0D66
                DA6B36F7042B1F2E4FEEBF15A0083D290C5A9A3B992352808643D518641FC2A1
                A2802645B7DDBA077B37FF0063E643FF0001FF000ABB1DDDFC2B968D2EA31FC7
                01C9FC56B32955D91B729208EE29A90AC6E5BEAB6B39DBBF6B8EAADC11F855E0
                CAC3820D7366E44A02DCC49381D0B8E47E3D69F1F92BCDBDDCD6C7FBAFF3AFF8
                FEB55742B1D1515911DD6A118CF971DD20FE285B9FC8D4A35981789D6481BD24
                42B4C0D12335194A645790CA328EA7E86A6DEA7BD0055916A9CA39AD27C11C11
                54E55E7A5006749C1A849AB330C13555BAD0019C53D48A66335222FB50038F4A
                4C1A936F14E0940110539A7815288E9C23A008821A7053560474E11500402326
                A458CE2AC2C552AC3C74A00A5E49348D0B7A56888691E203140198D111DAA223
                15A32A802B326B98633F348BF4140122903AD588F69C73596D764FFAB89CFBB7
                CA3F5A04F29FBD2841E88327F3A00E811A34E4B003DE94CE8E331A193DC703F3
                AC017214E426E6F5739A6CB7534DC3C8C47A678A9E61D8B97770771CCAA3D523
                FF001AE62F7C3BA5DFDDFDA27B65639CE33D7EBEB5AB454BD4ABB238208ADE25
                8A18D638D4602A8C0152D145210514D2E05549AF510ED07737F7569D80B6CE16
                A8CB7C0929165DBFD9E83F1A6A5BDD5E9F9BE443FC2BFD4D6CD9692B181F2D52
                88AE655BE9D2DCB879CE7B818E0574169A72C607CA3F2ABD0DA84038AB6A8055
                088A38428E95385C52814B400514514005145140051451400514514005145140
                0514514005145140051451400514514005145140051451400514514005145140
                05145140051451400514514005145140084669AC80D3E8A00A92DB861D2B36EB
                4D57078ADCC531901A00E16FF410D92060FAD66A9D434E3856F3231FC2D5E892
                5B2B76ACFB8D351C1E29580E66DB5B8243B260627F7E95A4B22B80558107D2A0
                BCD091B3C5643585DD931304AC07A76A4E23B9D05158516B334276DCC591FDE5
                AD28352B79FEEC801F43C1A9B0CB74520607A1A5A005048390706A74BEB851B4
                C85D7D1FE61FAD57A2981317B490E64B4453FDE84943FA53D0C63FD55F5CC5ED
                200E3FA555A28BB158D0F32F547EEEE6D661E8495351B5D5EAFDFB2723D51C37
                F5AA74A1997A123E869F305849B52DA4F9904E9FEF466AA9D52D89FF005AA3EB
                577CE93FBEC7EA698D87FBC037D451CC16238EFEDDBA4A9F9D5A8EE623FC6BF9
                D5536F6EDD6DE23FF001482D6D47FCBB47F80C53E641634D268CFF0010FCEA55
                913D47E759420B51FF002EEBFF007D1FF1A511DA8FF977FF00C7DBFC68BA0B1B
                0244F51F9D3C4B1FA8FCEB180B61D2DC7E2EDFE34F0F00E96A9F893FE3473215
                8D9FB4423ABAFE74BF6BB65EB2A7E758E2E107DDB6807FC0334EFB74ABF71634
                FA20FF000A5CC8763616FA03F70B3FFBAA4D4A2E988F96DE53F518FE75846FEE
                8FFCB761F4E2A269E67FBD2C8DF56268E60B1D035CCA3A88A3FF007DFF00C2AA
                CD78BFC5763E912E7F5AC5A2973058B92DC42FDA590FABB71F90AAC64C1F9115
                3FDD14CA28BB014927A9A4A28A0614514D2EA3BD201D467155E5BA48C7CEEA9F
                53CD566BC690E218D9CFAB7028B08BE641DB9AA925F4609553BDBA6D4E7F5A44
                B0B8BA3FBE90ED3FC23815AB69A3A201C552885CC7582EEF0FCC7CB43FC2BFD4
                D6A5968CB181C0ADA86C9531C55C4840AA114E0B254038ABA9105A902E29D400
                81714B4514005145140051451400514514005145140051451400514514005145
                1400514514005145140051451400514514005145140051451400514514005145
                1400514514005145140051451400514514005145140084535901ED4FA2802B3C
                0ADDAA9CD60ADDAB5714D2B9A00E62E74647CFCB58F73A000495041F6AEF1A20
                7B540F6AADDA803CF7ECF7F69FEAE46207635247ABCF11C4F09FA8AECE5D3D5B
                3F28FCAB3E7D1D1FF847E54AC82E6445ABDB49D58A9F7156D278E4195707E86A
                BCFA0292485C1FA55093469A2398D9852E51DCDBC8A2B071A841D19980F5A72E
                A7751FFAC8B3F852B30B9B94564A6B29FC68CB561755B76EAC47D452B0CBD455
                75BE81BA48BF9D48278CF471F9D00494537CC53DC51B87A8A0075252647AD191
                EB400B452647AD1B87AD002D149BD47714D32A0FE21400FA2A333A0EF4DFB42F
                6CD004D45566BB55EA557EA715036A118E8F9FF74134580D0A69751D4D677DB5
                9CE16295BEBC52817929F951507D3269F2B15CBC651D81350CB7691FDF755F6E
                A7F2A8D34BB89BFD64AE7DBA0FCAAEDBE868BFC03F2A7CA17338DEB39C4513BF
                B9E053D60BCB8E09F2D4F651FD6BA1874B45FE11F955E8EC957B0A764239BB7D
                0C6773024F726B5A0D2D100F96B596003B54A100A60548AD157B5585880ED528
                14B400D0B8A75145001451450014514500145145001451450014514500145145
                0014514500145145001451450014514500145145001451450014514500145145
                0014514500145145001451450014514500145145001451450014514500145145
                0014514500145145001498A5A2801A5734D3183DAA4A2802B35BA9ED50BD9A9E
                D57E93140193269CADDAAA49A4A1FE1AE836D218C50072D2688873F2D5393405
                3FC35D99881ED4D3029ED401C2BE84C3EEEE1F8D576D1E75E8CD5DF9B653DAA3
                366A7B500707FD9D76BD18D3859DE8FE23F9D771F615F4A4FB0A7A52B01C50B5
                BD1FC47F3A77D9EF7D4FE75D9FD853D28FB0A7A51640719F67BCF7FCE97C8BCF
                4FD6BB2FB0A7A51F614F4A2C80E2CDB5E1FEEFE540B2BC3FC58FA0AED3EC2BE9
                4A2C9476A2C071C9A65D37DE95FF000C0A9D74476FBECE7EA6BAE5B451DA9E2D
                D476A6072D1684A3F86ADC7A320FE1AE8442076A708C7A5006347A62AFF0D5A4
                B151DAB4420A50B401516D5476A996103B54B8A5A00604029D8A5A2800A28A28
                00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
                00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
                00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
                00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4A28A002928A2
                800A4A28A0028A28A0028A28A002968A280014B451400B451450014514500145
                1450014514500145145001451450014514500145145001451450014514500145
                14500145145001451450014514500145145001451450014514500145145007FF
                D9}
              Stretch = True
            end
            object QR_titulo_01: TQRLabel
              Left = 300
              Top = 37
              Width = 118
              Height = 23
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                60.854166666666680000
                793.750000000000000000
                97.895833333333340000
                312.208333333333400000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'funcionarios'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 14
            end
          end
          object QRBand2: TQRBand
            Left = 38
            Top = 132
            Width = 718
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              60.854166666666680000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel7: TQRLabel
              Left = 4
              Top = 2
              Width = 45
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                10.583333333333330000
                5.291666666666667000
                119.062500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'C'#243'digo'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel8: TQRLabel
              Left = 57
              Top = 2
              Width = 38
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                150.812500000000000000
                5.291666666666667000
                100.541666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Nome'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel9: TQRLabel
              Left = 321
              Top = 2
              Width = 62
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                849.312499999999900000
                5.291666666666667000
                164.041666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Telefones'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
          end
          object QRBand3: TQRBand
            Left = 38
            Top = 155
            Width = 718
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              50.270833333333330000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText4: TQRDBText
              Left = 4
              Top = 2
              Width = 39
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                10.583333333333330000
                5.291666666666667000
                103.187500000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = qry_funcionarios
              DataField = 'codigo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRDBText5: TQRDBText
              Left = 55
              Top = 1
              Width = 256
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                145.520833333333300000
                2.645833333333333000
                677.333333333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = qry_funcionarios
              DataField = 'nome'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRDBText6: TQRDBText
              Left = 319
              Top = 1
              Width = 394
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                844.020833333333500000
                2.645833333333333000
                1042.458333333333000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = qry_funcionarios
              DataField = 'w_fones'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
          end
          object QRBand4: TQRBand
            Left = 38
            Top = 174
            Width = 718
            Height = 45
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRSysData1: TQRSysData
              Left = 652
              Top = 14
              Width = 58
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1725.083333333334000000
                37.041666666666670000
                153.458333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              Color = clWhite
              Data = qrsDateTime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Default'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              FontSize = 7
            end
          end
        end
      end
      object radio_destino: TRadioGroup
        Left = 27
        Top = 7
        Width = 120
        Height = 63
        Caption = 'Destino '
        Color = clSkyBlue
        ItemIndex = 0
        Items.Strings = (
          'Tela'
          'Impressora')
        ParentColor = False
        TabOrder = 0
      end
      object Radio_aparencia: TRadioGroup
        Left = 154
        Top = 7
        Width = 120
        Height = 63
        Caption = 'Aparencia'
        Color = clSkyBlue
        ItemIndex = 0
        Items.Strings = (
          'Liso'
          'Zebrado')
        ParentColor = False
        TabOrder = 1
      end
      object Radio_ordem: TRadioGroup
        Left = 281
        Top = 7
        Width = 120
        Height = 63
        Caption = 'Ordem Relatorio'
        Color = clSkyBlue
        ItemIndex = 0
        Items.Strings = (
          'C'#243'digo'
          'Alfabetico')
        ParentColor = False
        TabOrder = 2
      end
      object QuickRep1: TQuickRep
        Left = 509
        Top = 88
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = qry_funcionarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Continuous = False
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsMaximized
        PreviewWidth = 100
        PrevInitialZoom = qrZoomToWidth
        PreviewDefaultSaveType = stQRP
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 94
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            248.708333333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QR_titulo: TQRLabel
            Left = 156
            Top = 7
            Width = 406
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              412.750000000000100000
              18.520833333333330000
              1074.208333333333000000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RELA'#199#195'O DE LOCAIS DE FUNCIONARIOS'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Default'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 14
          end
          object qr_periodo_data: TQRLabel
            Left = 90
            Top = 47
            Width = 6
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              238.125000000000000000
              124.354166666666700000
              15.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object qr_filtros: TQRLabel
            Left = 90
            Top = 66
            Width = 4
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              238.125000000000000000
              174.625000000000000000
              10.583333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 38
          Top = 132
          Width = 718
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            60.854166666666680000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel4: TQRLabel
            Left = 4
            Top = 2
            Width = 45
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              5.291666666666667000
              119.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 57
            Top = 2
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              150.812500000000000000
              5.291666666666667000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nome'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
        end
        object DetailBand1: TQRBand
          Left = 38
          Top = 155
          Width = 718
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText2: TQRDBText
            Left = 4
            Top = 2
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              5.291666666666667000
              103.187500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_funcionarios
            DataField = 'codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText3: TQRDBText
            Left = 55
            Top = 1
            Width = 256
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              145.520833333333300000
              2.645833333333333000
              677.333333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_funcionarios
            DataField = 'nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object SummaryBand1: TQRBand
          Left = 38
          Top = 174
          Width = 718
          Height = 45
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            119.062500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRSysData2: TQRSysData
            Left = 652
            Top = 14
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1725.083333333334000000
              37.041666666666670000
              153.458333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            FontSize = 7
          end
        end
      end
      object Edit_ativo: TEdit
        Left = 727
        Top = 229
        Width = 121
        Height = 21
        TabOrder = 3
        Visible = False
      end
      object Edit_inclui_user: TEdit
        Left = 727
        Top = 275
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'Edit1'
        Visible = False
      end
      object Edit_altera_user: TEdit
        Left = 727
        Top = 322
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'Edit1'
        Visible = False
      end
      object Edit_exclui_user: TEdit
        Left = 727
        Top = 369
        Width = 121
        Height = 21
        TabOrder = 6
        Text = 'Edit1'
        Visible = False
      end
      object Edit_inclui_data: TDateEdit
        Left = 727
        Top = 252
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 7
        Visible = False
      end
      object Edit_altera_data: TDateEdit
        Left = 727
        Top = 299
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 8
        Visible = False
      end
      object Edit_exclui_data: TDateEdit
        Left = 727
        Top = 345
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 9
        Visible = False
      end
      object Button1: TButton
        Left = 731
        Top = 174
        Width = 75
        Height = 25
        Caption = 'Importa'
        TabOrder = 10
        Visible = False
        OnClick = Button1Click
      end
      object BitBtn1: TBitBtn
        Left = 731
        Top = 145
        Width = 75
        Height = 25
        Caption = 'superfiltro'
        TabOrder = 11
        Visible = False
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 732
        Top = 198
        Width = 75
        Height = 25
        Caption = 'tELEFONES'
        TabOrder = 12
        Visible = False
        OnClick = BitBtn2Click
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Controle de Socios'
      ImageIndex = 6
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 468
        Align = alClient
        Color = 16446151
        TabOrder = 0
        object Label24: TLabel
          Left = 77
          Top = 63
          Width = 38
          Height = 13
          Caption = 'Nome:'
        end
        object Edit1: TEdit
          Left = 123
          Top = 60
          Width = 160
          Height = 21
          TabOrder = 0
        end
        object Button2: TButton
          Left = 309
          Top = 56
          Width = 75
          Height = 25
          Caption = 'Selecionar'
          TabOrder = 1
          OnClick = Button2Click
        end
        object DBGrid5: TDBGrid
          Left = 18
          Top = 90
          Width = 726
          Height = 307
          Color = clInfoBk
          DataSource = dts_qry_exclusao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'codigo'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Width = 252
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'endereco'
              Width = 263
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bairro'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ativo'
              Visible = True
            end>
        end
      end
    end
  end
  object GradPan1: TGradPan
    Left = 0
    Top = 496
    Width = 764
    Height = 80
    Align = alBottom
    TabOrder = 1
    Bitmap.Data = {
      46270000424D4627000000000000360000002800000032000000320000000100
      2000000000001027000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFFFF00000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFF}
    object Label_Registros: TLabel
      Left = 593
      Top = 29
      Width = 8
      Height = 13
      Caption = '..'
      Transparent = True
    end
    object Btn_Incluir: TsuiButton
      Left = 4
      Top = 0
      Width = 80
      Height = 76
      Caption = '&Incliur'
      AutoSize = False
      UIStyle = MacOS
      TabOrder = 0
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphTop
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = Btn_IncluirClick
      ResHandle = 0
    end
    object Btn_Alterar: TsuiButton
      Left = 85
      Top = 4
      Width = 80
      Height = 76
      Caption = '&Alterar'
      AutoSize = False
      UIStyle = MacOS
      TabOrder = 1
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphTop
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = Btn_AlterarClick
      ResHandle = 0
    end
    object Btn_Excluir: TsuiButton
      Left = 170
      Top = 2
      Width = 80
      Height = 76
      Caption = '&Excluir'
      AutoSize = False
      UIStyle = MacOS
      TabOrder = 2
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphTop
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = Btn_ExcluirClick
      ResHandle = 0
    end
    object Btn_Salvar: TsuiButton
      Left = 249
      Top = 2
      Width = 80
      Height = 76
      Caption = '&Salvar'
      AutoSize = False
      UIStyle = MacOS
      TabOrder = 3
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphTop
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = Btn_SalvarClick
      ResHandle = 0
    end
    object DBNavigator1: TsuiDBNavigator
      Left = 392
      Top = 2
      Width = 104
      Height = 76
      Cursor = crDefault
      UIStyle = MacOS
      DataSource = DTS_funcionarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object Btn_Sair: TsuiButton
      Left = 678
      Top = 3
      Width = 80
      Height = 76
      Caption = 'Sai&r'
      AutoSize = False
      UIStyle = MacOS
      TabOrder = 5
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphTop
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = Btn_SairClick
      ResHandle = 0
    end
  end
  object qry_funcionarios: TZQuery
    Connection = DataModule1.asprev
    AfterScroll = QRY_funcionariosAfterScroll
    OnCalcFields = qry_funcionariosCalcFields
    Active = True
    SQL.Strings = (
      'Select * from funcionarios'
      'order by tipo_tabela,codigo')
    Params = <>
    Left = 679
    Top = 1
    object qry_funcionariostipo_tabela: TStringField
      FieldName = 'tipo_tabela'
      Required = True
      Size = 15
    end
    object qry_funcionarioscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_funcionariosrelevancia: TIntegerField
      FieldName = 'relevancia'
      Required = True
    end
    object qry_funcionariosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object qry_funcionariossetor: TStringField
      FieldName = 'setor'
      Required = True
      Size = 30
    end
    object qry_funcionariosdatanascimento: TDateField
      FieldName = 'datanascimento'
    end
    object qry_funcionariosendereco: TStringField
      FieldName = 'endereco'
      Size = 70
    end
    object qry_funcionarioscep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object qry_funcionariosbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qry_funcionariosrg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object qry_funcionariosdataemissao: TDateField
      FieldName = 'dataemissao'
    end
    object qry_funcionarioscpf_cgc: TStringField
      FieldName = 'cpf_cgc'
      Size = 18
    end
    object qry_funcionariostitulo: TStringField
      FieldName = 'titulo'
      Size = 15
    end
    object qry_funcionariosseccao: TStringField
      FieldName = 'seccao'
      Size = 5
    end
    object qry_funcionarioszona: TStringField
      FieldName = 'zona'
      Size = 5
    end
    object qry_funcionariospis: TStringField
      FieldName = 'pis'
      Size = 14
    end
    object qry_funcionariosfiliacaopai: TStringField
      FieldName = 'filiacaopai'
      Size = 50
    end
    object qry_funcionariosfiliacaomae: TStringField
      FieldName = 'filiacaomae'
      Size = 50
    end
    object qry_funcionariosconjuge: TStringField
      FieldName = 'conjuge'
      Size = 50
    end
    object qry_funcionariosdataadmissao: TDateField
      FieldName = 'dataadmissao'
    end
    object qry_funcionariosbanco: TStringField
      FieldName = 'banco'
      Size = 15
    end
    object qry_funcionariosagencia: TStringField
      FieldName = 'agencia'
      Size = 10
    end
    object qry_funcionarioscontacorrente: TStringField
      FieldName = 'contacorrente'
      Size = 12
    end
    object qry_funcionariosusointernolunav: TStringField
      FieldName = 'usointernolunav'
      Size = 30
    end
    object qry_funcionariosfuncao: TStringField
      FieldName = 'funcao'
      Size = 30
    end
    object qry_funcionarioshorario: TStringField
      FieldName = 'horario'
      Size = 30
    end
    object qry_funcionariosdatademissao: TDateField
      FieldName = 'datademissao'
    end
    object qry_funcionariossenha: TStringField
      FieldName = 'senha'
    end
    object qry_funcionariossuperfiltro: TStringField
      FieldName = 'superfiltro'
      Size = 4000
    end
    object qry_funcionariossuperagenda: TStringField
      FieldName = 'superagenda'
      Size = 4000
    end
    object qry_funcionariosobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object qry_funcionarioscontagem1: TFloatField
      FieldName = 'contagem1'
    end
    object qry_funcionarioscontagem2: TFloatField
      FieldName = 'contagem2'
    end
    object qry_funcionarioscontagem3: TFloatField
      FieldName = 'contagem3'
    end
    object qry_funcionariosativo: TStringField
      FieldName = 'ativo'
      Required = True
      Size = 3
    end
    object qry_funcionariosinclui_data: TDateTimeField
      FieldName = 'inclui_data'
    end
    object qry_funcionariosinclui_user: TStringField
      FieldName = 'inclui_user'
      Size = 15
    end
    object qry_funcionariosaltera_data: TDateTimeField
      FieldName = 'altera_data'
    end
    object qry_funcionariosaltera_user: TStringField
      FieldName = 'altera_user'
      Size = 15
    end
    object qry_funcionariosexclui_data: TDateTimeField
      FieldName = 'exclui_data'
    end
    object qry_funcionariosexclui_user: TStringField
      FieldName = 'exclui_user'
      Size = 15
    end
    object qry_funcionariosobs_exclusao: TMemoField
      FieldName = 'obs_exclusao'
      BlobType = ftMemo
    end
    object qry_funcionariosw_fones: TStringField
      FieldKind = fkCalculated
      FieldName = 'w_fones'
      Size = 80
      Calculated = True
    end
  end
  object DTS_funcionarios: TDataSource
    DataSet = qry_funcionarios
    Left = 678
    Top = 27
  end
  object qry_log: TZQuery
    Connection = DataModule1.asprev
    Active = True
    SQL.Strings = (
      'Select * from funcionarios')
    Params = <>
    Left = 705
    object qry_logtipo_tabela: TStringField
      FieldName = 'tipo_tabela'
      Required = True
      Size = 15
    end
    object qry_logcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_logrelevancia: TIntegerField
      FieldName = 'relevancia'
      Required = True
    end
    object qry_lognome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object qry_logsetor: TStringField
      FieldName = 'setor'
      Required = True
      Size = 30
    end
    object qry_logdatanascimento: TDateField
      FieldName = 'datanascimento'
    end
    object qry_logendereco: TStringField
      FieldName = 'endereco'
      Size = 70
    end
    object qry_logcep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object qry_logbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qry_logrg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object qry_logdataemissao: TDateField
      FieldName = 'dataemissao'
    end
    object qry_logcpf_cgc: TStringField
      FieldName = 'cpf_cgc'
      Size = 18
    end
    object qry_logtitulo: TStringField
      FieldName = 'titulo'
      Size = 15
    end
    object qry_logseccao: TStringField
      FieldName = 'seccao'
      Size = 5
    end
    object qry_logzona: TStringField
      FieldName = 'zona'
      Size = 5
    end
    object qry_logpis: TStringField
      FieldName = 'pis'
      Size = 14
    end
    object qry_logfiliacaopai: TStringField
      FieldName = 'filiacaopai'
      Size = 50
    end
    object qry_logfiliacaomae: TStringField
      FieldName = 'filiacaomae'
      Size = 50
    end
    object qry_logconjuge: TStringField
      FieldName = 'conjuge'
      Size = 50
    end
    object qry_logdataadmissao: TDateField
      FieldName = 'dataadmissao'
    end
    object qry_logbanco: TStringField
      FieldName = 'banco'
      Size = 15
    end
    object qry_logagencia: TStringField
      FieldName = 'agencia'
      Size = 10
    end
    object qry_logcontacorrente: TStringField
      FieldName = 'contacorrente'
      Size = 12
    end
    object qry_logusointernolunav: TStringField
      FieldName = 'usointernolunav'
      Size = 30
    end
    object qry_logfuncao: TStringField
      FieldName = 'funcao'
      Size = 30
    end
    object qry_loghorario: TStringField
      FieldName = 'horario'
      Size = 30
    end
    object qry_logdatademissao: TDateField
      FieldName = 'datademissao'
    end
    object qry_logsenha: TStringField
      FieldName = 'senha'
    end
    object qry_logsuperfiltro: TStringField
      FieldName = 'superfiltro'
      Size = 4000
    end
    object qry_logsuperagenda: TStringField
      FieldName = 'superagenda'
      Size = 4000
    end
    object qry_logobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object qry_logcontagem1: TFloatField
      FieldName = 'contagem1'
    end
    object qry_logcontagem2: TFloatField
      FieldName = 'contagem2'
    end
    object qry_logcontagem3: TFloatField
      FieldName = 'contagem3'
    end
    object qry_logativo: TStringField
      FieldName = 'ativo'
      Required = True
      Size = 3
    end
    object qry_loginclui_data: TDateTimeField
      FieldName = 'inclui_data'
    end
    object qry_loginclui_user: TStringField
      FieldName = 'inclui_user'
      Size = 15
    end
    object qry_logaltera_data: TDateTimeField
      FieldName = 'altera_data'
    end
    object qry_logaltera_user: TStringField
      FieldName = 'altera_user'
      Size = 15
    end
    object qry_logexclui_data: TDateTimeField
      FieldName = 'exclui_data'
    end
    object qry_logexclui_user: TStringField
      FieldName = 'exclui_user'
      Size = 15
    end
    object qry_logobs_exclusao: TMemoField
      FieldName = 'obs_exclusao'
      BlobType = ftMemo
    end
  end
  object DTS_log: TDataSource
    DataSet = qry_funcionarios
    Left = 711
    Top = 27
  end
  object qry_rede: TZQuery
    Connection = DataModule1.asprev
    Active = True
    SQL.Strings = (
      'Select * from funcionarios where 1=0 ')
    Params = <>
    Left = 740
    object qry_redetipo_tabela: TStringField
      FieldName = 'tipo_tabela'
      Required = True
      Size = 15
    end
    object qry_redecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_rederelevancia: TIntegerField
      FieldName = 'relevancia'
      Required = True
    end
    object qry_redenome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object qry_redesetor: TStringField
      FieldName = 'setor'
      Required = True
      Size = 30
    end
    object qry_rededatanascimento: TDateField
      FieldName = 'datanascimento'
    end
    object qry_redeendereco: TStringField
      FieldName = 'endereco'
      Size = 70
    end
    object qry_redecep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object qry_redebairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qry_rederg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object qry_rededataemissao: TDateField
      FieldName = 'dataemissao'
    end
    object qry_redecpf_cgc: TStringField
      FieldName = 'cpf_cgc'
      Size = 18
    end
    object qry_redetitulo: TStringField
      FieldName = 'titulo'
      Size = 15
    end
    object qry_redeseccao: TStringField
      FieldName = 'seccao'
      Size = 5
    end
    object qry_redezona: TStringField
      FieldName = 'zona'
      Size = 5
    end
    object qry_redepis: TStringField
      FieldName = 'pis'
      Size = 14
    end
    object qry_redefiliacaopai: TStringField
      FieldName = 'filiacaopai'
      Size = 50
    end
    object qry_redefiliacaomae: TStringField
      FieldName = 'filiacaomae'
      Size = 50
    end
    object qry_redeconjuge: TStringField
      FieldName = 'conjuge'
      Size = 50
    end
    object qry_rededataadmissao: TDateField
      FieldName = 'dataadmissao'
    end
    object qry_redebanco: TStringField
      FieldName = 'banco'
      Size = 15
    end
    object qry_redeagencia: TStringField
      FieldName = 'agencia'
      Size = 10
    end
    object qry_redecontacorrente: TStringField
      FieldName = 'contacorrente'
      Size = 12
    end
    object qry_redeusointernolunav: TStringField
      FieldName = 'usointernolunav'
      Size = 30
    end
    object qry_redefuncao: TStringField
      FieldName = 'funcao'
      Size = 30
    end
    object qry_redehorario: TStringField
      FieldName = 'horario'
      Size = 30
    end
    object qry_rededatademissao: TDateField
      FieldName = 'datademissao'
    end
    object qry_redesenha: TStringField
      FieldName = 'senha'
    end
    object qry_redesuperfiltro: TStringField
      FieldName = 'superfiltro'
      Size = 4000
    end
    object qry_redesuperagenda: TStringField
      FieldName = 'superagenda'
      Size = 4000
    end
    object qry_redeobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object qry_redecontagem1: TFloatField
      FieldName = 'contagem1'
    end
    object qry_redecontagem2: TFloatField
      FieldName = 'contagem2'
    end
    object qry_redecontagem3: TFloatField
      FieldName = 'contagem3'
    end
    object qry_redeativo: TStringField
      FieldName = 'ativo'
      Required = True
      Size = 3
    end
    object qry_redeinclui_data: TDateTimeField
      FieldName = 'inclui_data'
    end
    object qry_redeinclui_user: TStringField
      FieldName = 'inclui_user'
      Size = 15
    end
    object qry_redealtera_data: TDateTimeField
      FieldName = 'altera_data'
    end
    object qry_redealtera_user: TStringField
      FieldName = 'altera_user'
      Size = 15
    end
    object qry_redeexclui_data: TDateTimeField
      FieldName = 'exclui_data'
    end
    object qry_redeexclui_user: TStringField
      FieldName = 'exclui_user'
      Size = 15
    end
    object qry_redeobs_exclusao: TMemoField
      FieldName = 'obs_exclusao'
      BlobType = ftMemo
    end
  end
  object DTS_rede: TDataSource
    DataSet = qry_funcionarios
    Left = 742
    Top = 27
  end
  object qry_tipo_tabelas: TZQuery
    Connection = DataModule1.asprev
    AfterScroll = QRY_funcionariosAfterScroll
    Active = True
    SQL.Strings = (
      'Select * from tipo_tabelas'
      '')
    Params = <>
    Left = 704
    Top = 191
    object qry_tipo_tabelascodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_tipo_tabelastipo_tabelas: TStringField
      FieldName = 'tipo_tabelas'
      Required = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = qry_tipo_tabelas
    Left = 702
    Top = 218
  end
  object qry_setores: TZQuery
    Connection = DataModule1.asprev
    SQL.Strings = (
      'Select * from setores')
    Params = <>
    Left = 394
    Top = 24
    object qry_setorescodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_setoresrelevancia: TIntegerField
      FieldName = 'relevancia'
      Required = True
    end
    object qry_setoressetor: TStringField
      FieldName = 'setor'
      Required = True
      Size = 30
    end
    object qry_setorescontagem1: TFloatField
      FieldName = 'contagem1'
      Required = True
    end
    object qry_setorescontagem2: TFloatField
      FieldName = 'contagem2'
      Required = True
    end
    object qry_setorescontagem3: TFloatField
      FieldName = 'contagem3'
      Required = True
    end
  end
  object DTS_setores: TDataSource
    DataSet = qry_setores
    Left = 395
    Top = 53
  end
  object qry_funcionarios_fones: TZQuery
    Connection = DataModule1.asprev
    AfterScroll = qry_funcionarios_fonesAfterScroll
    Active = True
    SQL.Strings = (
      'Select * from funcionarios_fones'
      'where 1=0')
    Params = <>
    Left = 549
    Top = 65534
    object qry_funcionarios_fonestipo_tabela: TStringField
      FieldName = 'tipo_tabela'
      Required = True
      Size = 15
    end
    object qry_funcionarios_fonescodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_funcionarios_fonesfone: TStringField
      FieldName = 'fone'
      Required = True
      Size = 14
    end
    object qry_funcionarios_fonesdescricao: TStringField
      FieldName = 'descricao'
      Required = True
    end
  end
  object DTS_funcionarios_fones: TDataSource
    DataSet = qry_funcionarios_fones
    Left = 549
    Top = 28
  end
  object qry_funcionarios_dependentes: TZQuery
    Connection = DataModule1.asprev
    AfterScroll = qry_funcionarios_dependentesAfterScroll
    OnCalcFields = qry_funcionarios_dependentesCalcFields
    Active = True
    SQL.Strings = (
      'Select * from funcionarios_dependentes'
      'where 1=0')
    Params = <>
    Left = 578
    Top = 65535
    object qry_funcionarios_dependentestipo_tabela: TStringField
      FieldName = 'tipo_tabela'
      Required = True
      Size = 15
    end
    object qry_funcionarios_dependentescodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_funcionarios_dependentesdatanascimento: TDateField
      FieldName = 'datanascimento'
      Required = True
    end
    object qry_funcionarios_dependentesnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object qry_funcionarios_dependentesparentesco: TStringField
      FieldName = 'parentesco'
      Size = 15
    end
    object qry_funcionarios_dependentesidade: TCurrencyField
      Alignment = taCenter
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'idade'
      DisplayFormat = '0'
      Calculated = True
    end
  end
  object dts_funcionarios_dependentes: TDataSource
    DataSet = qry_funcionarios_dependentes
    Left = 578
    Top = 28
  end
  object qry_funcoes: TZQuery
    Connection = DataModule1.asprev
    SQL.Strings = (
      'Select * from funcoes'
      '')
    Params = <>
    Left = 441
    Top = 23
    object qry_funcoescodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_funcoesrelevancia: TIntegerField
      FieldName = 'relevancia'
      Required = True
    end
    object qry_funcoesfuncao: TStringField
      FieldName = 'funcao'
      Required = True
      Size = 30
    end
    object qry_funcoescontagem1: TFloatField
      FieldName = 'contagem1'
      Required = True
    end
    object qry_funcoescontagem2: TFloatField
      FieldName = 'contagem2'
      Required = True
    end
    object qry_funcoescontagem3: TFloatField
      FieldName = 'contagem3'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = qry_funcoes
    Left = 443
    Top = 53
  end
  object qry_banco: TZQuery
    Connection = DataModule1.asprev
    AfterScroll = QRY_funcionariosAfterScroll
    Active = True
    SQL.Strings = (
      'Select distinct banco from funcionarios'
      'order by tipo_tabela, banco')
    Params = <>
    Left = 622
    Top = 1
    object qry_bancobanco: TStringField
      FieldName = 'banco'
      Size = 15
    end
  end
  object DataSource3: TDataSource
    DataSet = qry_banco
    Left = 622
    Top = 27
  end
  object dts_teste: TDataSource
    DataSet = qry_teste
    Left = 505
    Top = 216
  end
  object qry_teste: TZQuery
    Connection = DataModule1.asprev
    AfterScroll = QRY_funcionariosAfterScroll
    Active = True
    SQL.Strings = (
      'Select * from teste'
      ''
      '')
    Params = <>
    Left = 503
    Top = 183
    object qry_testea: TStringField
      FieldName = 'a'
      Size = 100
    end
    object qry_testeb: TStringField
      FieldName = 'b'
      Size = 100
    end
    object qry_testec: TStringField
      FieldName = 'c'
      Size = 100
    end
    object qry_tested: TStringField
      FieldName = 'd'
      Size = 100
    end
    object qry_testee: TStringField
      FieldName = 'e'
      Size = 100
    end
    object qry_testef: TStringField
      FieldName = 'f'
      Size = 100
    end
  end
  object qry_bairros: TZQuery
    Connection = DataModule1.asprev
    Active = True
    SQL.Strings = (
      'Select DISTINCT   bairro from funcionarios ORDER BY BAIRRO')
    Params = <>
    Left = 679
    Top = 193
    object qry_bairrosbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
  end
  object dts_bairros: TDataSource
    DataSet = qry_funcionarios
    Left = 681
    Top = 219
  end
  object qry_funcionarios_financeiro: TZQuery
    Connection = DataModule1.asprev
    AfterScroll = qry_funcionarios_fonesAfterScroll
    Active = True
    SQL.Strings = (
      'Select * from funcionarios_financeiro'
      'where 1=0')
    Params = <>
    Left = 646
    Top = 197
    object qry_funcionarios_financeirotipo_tabela: TStringField
      FieldName = 'tipo_tabela'
      Required = True
      Size = 15
    end
    object qry_funcionarios_financeirocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_funcionarios_financeirodata_pag: TDateField
      FieldName = 'data_pag'
      Required = True
    end
    object qry_funcionarios_financeirodescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 80
    end
    object qry_funcionarios_financeirovalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
  end
  object DataSource4: TDataSource
    DataSet = qry_funcionarios_financeiro
    Left = 646
    Top = 226
  end
  object qry_exclusao: TZQuery
    Connection = DataModule1.asprev
    Active = True
    SQL.Strings = (
      'Select * from funcionarios where 1=0 ')
    Params = <>
    Left = 677
    Top = 56
    object qry_exclusaotipo_tabela: TStringField
      FieldName = 'tipo_tabela'
      Required = True
      Size = 15
    end
    object qry_exclusaocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_exclusaorelevancia: TIntegerField
      FieldName = 'relevancia'
      Required = True
    end
    object qry_exclusaonome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object qry_exclusaosetor: TStringField
      FieldName = 'setor'
      Size = 30
    end
    object qry_exclusaodatanascimento: TDateField
      FieldName = 'datanascimento'
    end
    object qry_exclusaoendereco: TStringField
      FieldName = 'endereco'
      Size = 70
    end
    object qry_exclusaocep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object qry_exclusaobairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qry_exclusaorg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object qry_exclusaodataemissao: TDateField
      FieldName = 'dataemissao'
    end
    object qry_exclusaocpf_cgc: TStringField
      FieldName = 'cpf_cgc'
      Size = 18
    end
    object qry_exclusaotitulo: TStringField
      FieldName = 'titulo'
      Size = 15
    end
    object qry_exclusaoseccao: TStringField
      FieldName = 'seccao'
      Size = 5
    end
    object qry_exclusaozona: TStringField
      FieldName = 'zona'
      Size = 5
    end
    object qry_exclusaopis: TStringField
      FieldName = 'pis'
      Size = 14
    end
    object qry_exclusaofiliacaopai: TStringField
      FieldName = 'filiacaopai'
      Size = 50
    end
    object qry_exclusaofiliacaomae: TStringField
      FieldName = 'filiacaomae'
      Size = 50
    end
    object qry_exclusaoconjuge: TStringField
      FieldName = 'conjuge'
      Size = 50
    end
    object qry_exclusaodataadmissao: TDateField
      FieldName = 'dataadmissao'
    end
    object qry_exclusaobanco: TStringField
      FieldName = 'banco'
      Size = 15
    end
    object qry_exclusaoagencia: TStringField
      FieldName = 'agencia'
      Size = 10
    end
    object qry_exclusaocontacorrente: TStringField
      FieldName = 'contacorrente'
      Size = 12
    end
    object qry_exclusaousointernolunav: TStringField
      FieldName = 'usointernolunav'
      Size = 30
    end
    object qry_exclusaofuncao: TStringField
      FieldName = 'funcao'
      Size = 30
    end
    object qry_exclusaohorario: TStringField
      FieldName = 'horario'
      Size = 30
    end
    object qry_exclusaodatademissao: TDateField
      FieldName = 'datademissao'
    end
    object qry_exclusaosenha: TStringField
      FieldName = 'senha'
    end
    object qry_exclusaosuperfiltro: TStringField
      FieldName = 'superfiltro'
      Size = 4000
    end
    object qry_exclusaosuperagenda: TStringField
      FieldName = 'superagenda'
      Size = 4000
    end
    object qry_exclusaoobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object qry_exclusaocontagem1: TFloatField
      FieldName = 'contagem1'
    end
    object qry_exclusaocontagem2: TFloatField
      FieldName = 'contagem2'
    end
    object qry_exclusaocontagem3: TFloatField
      FieldName = 'contagem3'
    end
    object qry_exclusaoativo: TStringField
      FieldName = 'ativo'
      Required = True
      Size = 3
    end
    object qry_exclusaoinclui_data: TDateTimeField
      FieldName = 'inclui_data'
    end
    object qry_exclusaoinclui_user: TStringField
      FieldName = 'inclui_user'
      Size = 15
    end
    object qry_exclusaoaltera_data: TDateTimeField
      FieldName = 'altera_data'
    end
    object qry_exclusaoaltera_user: TStringField
      FieldName = 'altera_user'
      Size = 15
    end
    object qry_exclusaoexclui_data: TDateTimeField
      FieldName = 'exclui_data'
    end
    object qry_exclusaoexclui_user: TStringField
      FieldName = 'exclui_user'
      Size = 15
    end
    object qry_exclusaoobs_exclusao: TMemoField
      FieldName = 'obs_exclusao'
      BlobType = ftMemo
    end
  end
  object dts_qry_exclusao: TDataSource
    DataSet = qry_exclusao
    Left = 678
    Top = 83
  end
end
