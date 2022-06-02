object Frm_configuracoes: TFrm_configuracoes
  Left = 0
  Top = 0
  Caption = 'Frm_configuracoes'
  ClientHeight = 494
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 90
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 0
    object pnl_superior: TXBanner
      Left = 1
      Top = 1
      Width = 860
      Height = 88
      Align = alClient
      Angle = 0
      Caption = ''
      ColorOf = 12615935
      ColorFor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      Horizontal = True
      ParentFont = False
      ShadeLTSet = False
      Style3D = A3dNormal
      OnClick = pnl_superiorClick
      ExplicitLeft = 2
      ExplicitTop = 2
    end
    object Lbl_titulo: TLabel
      Left = 8
      Top = 1
      Width = 808
      Height = 40
      Alignment = taCenter
      AutoSize = False
      Caption = 'Configura'#231#245'es do Sistema'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -32
      Font.Name = 'Segoe UI 8'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = Lbl_tituloClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 96
    Width = 862
    Height = 398
    Align = alBottom
    TabOrder = 1
    object Pnl_Corpo: TXBanner
      Left = 1
      Top = 1
      Width = 860
      Height = 396
      Align = alClient
      Angle = 0
      Caption = ''
      ColorOf = clLime
      ColorFor = clWhite
      Horizontal = True
      ShadeLTSet = False
      Style3D = A3dNormal
      OnClick = Pnl_CorpoClick
      ExplicitTop = 0
    end
    object Lbl_corpo: TLabel
      Left = 416
      Top = 193
      Width = 46
      Height = 13
      Caption = 'Lbl_corpo'
      OnClick = Lbl_corpoClick
    end
    object Pnl_grava: TPageControl
      Left = 12
      Top = 54
      Width = 269
      Height = 325
      ActivePage = TabSheet2
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Cor Superior'
        OnShow = TabSheet1Show
        object pnl_superior_2: TXBanner
          Left = 0
          Top = 0
          Width = 261
          Height = 297
          Align = alClient
          Angle = 0
          Caption = ''
          ColorOf = clBlue
          ColorFor = clWhite
          Horizontal = True
          ShadeLTSet = False
          Style3D = A3dNormal
          ExplicitLeft = 1
          ExplicitTop = 184
          ExplicitWidth = 260
          ExplicitHeight = 40
        end
        object Btn_Titulo_superior: TButton
          Left = 93
          Top = 96
          Width = 75
          Height = 25
          Caption = 'Panel Superior'
          TabOrder = 0
          OnClick = Btn_Titulo_superiorClick
        end
        object Btn_Titulo_Inferior: TButton
          Left = 93
          Top = 127
          Width = 75
          Height = 25
          Caption = 'Panel Inferior'
          TabOrder = 1
          OnClick = Btn_Titulo_InferiorClick
        end
        object Btn_Titulo_texto: TButton
          Left = 93
          Top = 175
          Width = 75
          Height = 25
          Caption = 'Cor Texto'
          TabOrder = 2
          OnClick = Btn_Titulo_textoClick
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Cor Central'
        ImageIndex = 2
        OnExit = TabSheet3Exit
        object Pnl_Corpo_1: TXBanner
          Left = 0
          Top = 0
          Width = 261
          Height = 297
          Align = alClient
          Angle = 0
          Caption = ''
          ColorOf = clBlue
          ColorFor = clWhite
          Horizontal = True
          ShadeLTSet = False
          Style3D = A3dNormal
          ExplicitLeft = 1
          ExplicitTop = 176
          ExplicitWidth = 260
          ExplicitHeight = 40
        end
        object Button5: TButton
          Left = 62
          Top = 105
          Width = 121
          Height = 25
          Caption = 'Cor Label'
          TabOrder = 0
          OnClick = Button5Click
        end
        object Btn_cor_edit_entrada: TButton
          Left = 62
          Top = 136
          Width = 121
          Height = 25
          Caption = 'Cor Edit Entrada Fundo'
          TabOrder = 1
          OnClick = Btn_cor_edit_entradaClick
        end
        object Button7: TButton
          Left = 62
          Top = 198
          Width = 137
          Height = 25
          Caption = 'Cor Edit Foco Fundo'
          TabOrder = 2
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 62
          Top = 167
          Width = 121
          Height = 25
          Caption = 'Cor Edit Entrada Texto'
          TabOrder = 3
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 62
          Top = 229
          Width = 137
          Height = 25
          Caption = 'Cor Edit Foco Texto'
          TabOrder = 4
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 62
          Top = 74
          Width = 121
          Height = 25
          Caption = 'Cor Panel Inferior'
          TabOrder = 5
          OnClick = Button10Click
        end
        object Button13: TButton
          Left = 62
          Top = 42
          Width = 121
          Height = 25
          Caption = 'Cor Panel Superior'
          TabOrder = 6
          OnClick = Button13Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Skins'
        ImageIndex = 2
        OnShow = TabSheet2Show
        object PNL_Skins: TXBanner
          Left = 0
          Top = 0
          Width = 261
          Height = 297
          Align = alClient
          Angle = 0
          Caption = ''
          ColorOf = 12615935
          ColorFor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Horizontal = True
          ParentFont = False
          ShadeLTSet = False
          Style3D = A3dNormal
          OnClick = pnl_superiorClick
          ExplicitTop = -3
        end
        object Label1: TLabel
          Left = 32
          Top = 24
          Width = 88
          Height = 13
          Caption = 'Padr~~oes salvos'
          OnClick = Lbl_corpoClick
        end
        object Label2: TLabel
          Left = 7
          Top = 190
          Width = 108
          Height = 13
          Caption = 'Nome Padr~~ao Atual'
          OnClick = Lbl_corpoClick
        end
        object cmb_cores_padroes: TComboBox
          Left = 32
          Top = 43
          Width = 145
          Height = 21
          TabOrder = 0
          OnChange = cmb_cores_padroesChange
          OnDrawItem = cmb_cores_padroesDrawItem
        end
        object Button1: TButton
          Left = 32
          Top = 232
          Width = 121
          Height = 25
          Caption = 'Salvar Padrao Atual'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Edit_CorEsquema: TEdit
          Left = 4
          Top = 204
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          OnClick = Edit_EntradaClick
        end
        object Btn_Excluir_cor_Padrao: TButton
          Left = 112
          Top = 72
          Width = 74
          Height = 25
          Caption = 'Exclui'
          Enabled = False
          TabOrder = 3
          OnClick = Btn_Excluir_cor_PadraoClick
        end
        object Btn_Fixar: TButton
          Left = 32
          Top = 72
          Width = 74
          Height = 25
          Caption = 'Fixa'
          Enabled = False
          TabOrder = 4
          OnClick = Btn_FixarClick
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Filtros OS'
        ImageIndex = 3
        OnShow = TabSheet4Show
        object pnl_skin: TXBanner
          Left = 0
          Top = 0
          Width = 261
          Height = 297
          Align = alClient
          Angle = 0
          Caption = ''
          ColorOf = 12615935
          ColorFor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Horizontal = True
          ParentFont = False
          ShadeLTSet = False
          Style3D = A3dNormal
          OnClick = pnl_superiorClick
          ExplicitLeft = 1
        end
        object Label3: TLabel
          Left = 36
          Top = 31
          Width = 40
          Height = 13
          Caption = 'ABERTO'
          OnClick = Lbl_corpoClick
        end
        object Label4: TLabel
          Left = 30
          Top = 88
          Width = 46
          Height = 13
          Caption = 'PRONTO:'
          OnClick = Lbl_corpoClick
        end
        object Label5: TLabel
          Left = 28
          Top = 142
          Width = 56
          Height = 13
          Caption = 'ENTREGUE:'
          OnClick = Lbl_corpoClick
        end
        object Label6: TLabel
          Left = 11
          Top = 206
          Width = 65
          Height = 13
          Caption = 'CANCELADO:'
          OnClick = Lbl_corpoClick
        end
        object Button2: TButton
          Left = 78
          Top = 16
          Width = 121
          Height = 25
          Caption = 'OS Aberta Fundo'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 78
          Top = 38
          Width = 121
          Height = 25
          Caption = 'OS Aberta Texto'
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button11: TButton
          Left = 78
          Top = 72
          Width = 121
          Height = 25
          Caption = 'OS Pronto Fundo'
          TabOrder = 2
          OnClick = Button11Click
        end
        object Button12: TButton
          Left = 78
          Top = 94
          Width = 121
          Height = 25
          Caption = 'OS Pronto Texto'
          TabOrder = 3
          OnClick = Button12Click
        end
        object Button14: TButton
          Left = 78
          Top = 128
          Width = 121
          Height = 25
          Caption = 'OS Entregue Fundo'
          TabOrder = 4
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 78
          Top = 148
          Width = 121
          Height = 25
          Caption = 'OS Entregue Texto'
          TabOrder = 5
          OnClick = Button15Click
        end
        object Button16: TButton
          Left = 78
          Top = 192
          Width = 121
          Height = 25
          Caption = 'OS Entregue Fundo'
          TabOrder = 6
          OnClick = Button16Click
        end
        object Button17: TButton
          Left = 78
          Top = 212
          Width = 121
          Height = 25
          Caption = 'OS Entregue Texto'
          TabOrder = 7
          OnClick = Button17Click
        end
      end
    end
    object Edit_Entrada: TEdit
      Left = 416
      Top = 212
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'Entrada'
      OnClick = Edit_EntradaClick
    end
    object Edit_em_foco: TEdit
      Left = 416
      Top = 260
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = 'Em Foco'
      OnClick = Edit_em_focoClick
    end
  end
  object Panel3: TPanel
    Left = 291
    Top = 170
    Width = 555
    Height = 236
    TabOrder = 2
    object Pnl_Dbagrid: TXBanner
      Left = 1
      Top = 1
      Width = 553
      Height = 234
      Align = alClient
      Angle = 0
      Caption = ''
      ColorOf = clLime
      ColorFor = clWhite
      Horizontal = True
      ShadeLTSet = False
      Style3D = A3dNormal
      Visible = False
      OnClick = Pnl_CorpoClick
      ExplicitLeft = 2
      ExplicitTop = 2
    end
    object lBL_ABERTO_: TLabel
      Left = 64
      Top = 52
      Width = 40
      Height = 13
      Caption = 'ABERTO'
      OnClick = Lbl_corpoClick
    end
    object Lbl_pronto_: TLabel
      Left = 62
      Top = 72
      Width = 42
      Height = 13
      Caption = 'PRONTO'
      OnClick = Lbl_corpoClick
    end
    object Lbl_entregue_: TLabel
      Left = 52
      Top = 95
      Width = 52
      Height = 13
      Caption = 'ENTREGUE'
      OnClick = Lbl_corpoClick
    end
    object Lbl_cancelado_: TLabel
      Left = 43
      Top = 119
      Width = 61
      Height = 13
      Caption = 'CANCELADO'
      OnClick = Lbl_corpoClick
    end
    object Edit_aberto_: TEdit
      Left = 112
      Top = 48
      Width = 419
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 
        'X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.' +
        'X.X.X.X.X.X.X.X.X'
      OnClick = Edit_EntradaClick
    end
    object Edit_pronto_: TEdit
      Left = 112
      Top = 71
      Width = 419
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 
        'X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.' +
        'X.X.X.X.X.X.X.X.X'
      OnClick = Edit_EntradaClick
    end
    object Edit_entregue_: TEdit
      Left = 112
      Top = 95
      Width = 419
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = 
        'X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.' +
        'X.X.X.X.X.X.X.X.X'
      OnClick = Edit_EntradaClick
    end
    object Edit_cancelado_: TEdit
      Left = 112
      Top = 115
      Width = 419
      Height = 21
      ReadOnly = True
      TabOrder = 3
      Text = 
        'X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.' +
        'X.X.X.X.X.X.X.X.X'
      OnClick = Edit_EntradaClick
    end
  end
  object qry_login: TFDQuery
    Connection = U_Dm.FD_Conn
    SQL.Strings = (
      'select * from login')
    Left = 438
    Top = 34
    object qry_logincodigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 10
    end
    object qry_loginsenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 50
    end
    object qry_loginnivel: TStringField
      FieldName = 'nivel'
      Origin = 'nivel'
      Required = True
      Size = 10
    end
    object qry_loginnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 200
    end
    object qry_loginendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object qry_logincidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object qry_loginbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object qry_logincep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 9
    end
    object qry_loginfone: TStringField
      FieldName = 'fone'
      Origin = 'fone'
      Size = 15
    end
    object qry_logincelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Size = 15
    end
    object qry_loginemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object qry_loginobs: TBlobField
      FieldName = 'obs'
      Origin = 'obs'
    end
    object qry_loginrestrito: TBlobField
      FieldName = 'restrito'
      Origin = 'restrito'
    end
    object qry_logincor_titulo_superior: TIntegerField
      FieldName = 'cor_titulo_superior'
      Origin = 'cor_titulo_superior'
      Required = True
    end
    object qry_logincor_titulo_inferior: TIntegerField
      FieldName = 'cor_titulo_inferior'
      Origin = 'cor_titulo_inferior'
      Required = True
    end
    object qry_logincor_titulo_texto: TIntegerField
      FieldName = 'cor_titulo_texto'
      Origin = 'cor_titulo_texto'
      Required = True
    end
    object qry_logincor_padrao: TIntegerField
      FieldName = 'cor_padrao'
      Origin = 'cor_padrao'
      Required = True
    end
    object qry_logincor_corpo_superior: TIntegerField
      FieldName = 'cor_corpo_superior'
      Origin = 'cor_corpo_superior'
      Required = True
    end
    object qry_logincor_corpo_inferior: TIntegerField
      FieldName = 'cor_corpo_inferior'
      Origin = 'cor_corpo_inferior'
      Required = True
    end
    object qry_logincor_corpo_texto: TIntegerField
      FieldName = 'cor_corpo_texto'
      Origin = 'cor_corpo_texto'
      Required = True
    end
    object qry_logincor_edit_entrada_fundo: TIntegerField
      FieldName = 'cor_edit_entrada_fundo'
      Origin = 'cor_edit_entrada_fundo'
      Required = True
    end
    object qry_logincor_edit_entrada_texto: TIntegerField
      FieldName = 'cor_edit_entrada_texto'
      Origin = 'cor_edit_entrada_texto'
      Required = True
    end
    object qry_logincor_edit_foco_fundo: TIntegerField
      FieldName = 'cor_edit_foco_fundo'
      Origin = 'cor_edit_foco_fundo'
      Required = True
    end
    object qry_logincor_edit_foco_texto: TIntegerField
      FieldName = 'cor_edit_foco_texto'
      Origin = 'cor_edit_foco_texto'
      Required = True
    end
    object qry_loginrelevancia: TIntegerField
      FieldName = 'relevancia'
      Origin = 'relevancia'
    end
    object qry_loginos_aberto_fundo: TIntegerField
      FieldName = 'os_aberto_fundo'
      Origin = 'os_aberto_fundo'
      Required = True
    end
    object qry_loginos_aberto_texto: TIntegerField
      FieldName = 'os_aberto_texto'
      Origin = 'os_aberto_texto'
      Required = True
    end
    object qry_loginos_pronto_fundo: TIntegerField
      FieldName = 'os_pronto_fundo'
      Origin = 'os_pronto_fundo'
      Required = True
    end
    object qry_loginos_pronto_texto: TIntegerField
      FieldName = 'os_pronto_texto'
      Origin = 'os_pronto_texto'
      Required = True
    end
    object qry_loginos_retirado_fundo: TIntegerField
      FieldName = 'os_retirado_fundo'
      Origin = 'os_retirado_fundo'
      Required = True
    end
    object qry_loginos_retirado_texto: TIntegerField
      FieldName = 'os_retirado_texto'
      Origin = 'os_retirado_texto'
      Required = True
    end
    object qry_loginos_cancelado_fundo: TIntegerField
      FieldName = 'os_cancelado_fundo'
      Origin = 'os_cancelado_fundo'
      Required = True
    end
    object qry_loginos_cancelado_texto: TIntegerField
      FieldName = 'os_cancelado_texto'
      Origin = 'os_cancelado_texto'
      Required = True
    end
  end
  object Ds_Login: TDataSource
    DataSet = qry_login
    Left = 440
    Top = 62
  end
  object DialogColor: TColorDialog
    Left = 393
    Top = 55
  end
end
