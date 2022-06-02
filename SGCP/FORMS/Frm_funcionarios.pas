//====================================================================
// MODULO GERADO PELO PROGRAMA PLEBEU V - 10.3 30-09-12
// ANALISTA....: ITAMAR B. ROLOFF
// DATA / HORA.: 02/abr/2015 16:19:15
// PROGRAMADOR.:
// ===================================================================
// SISTEMA....:
// TABELA.....:funcionarios
// EMPRESA....:Roloff & Silva Ltda
// DESCRIÇÃO..:
// OBS........:
// ===================================================================
unit Frm_funcionarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Db, Buttons, ExtCtrls,
  ComCtrls, Mask, SSBaseXP, SSEdit, ZAbstractRODataset, Gradpan,
  ZAbstractDataset, ZDataset, XiButton, Grids, DBGrids, ToolEdit,
  CurrEdit, DBCtrls, SUIComboBox, SUIDBCtrls, SUIButton, SUIEdit,
  SUIImagePanel, SUIMemo, QRCtrls, jpeg, QuickRpt;

type
  TFrm_funcionarios = class(TForm)
      //-----IBR---componentes nao visuais ------------------------------
    QRY_funcionarios: TZQuery;
    DTS_funcionarios: TDataSource;
    QRY_log: TZQuery;
    DTS_log: TDataSource;
    QRY_rede: TZQuery;
    DTS_rede: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;

      //-----IBR---botoes do sistema ------------------------------
    Radio_Filtra: TRadioGroup;
    Radio_Posiciona: TRadioGroup;
    Edit_Posiciona: TEdit;
    Edit_Filtra: TEdit;
    Btn_Filtra: TXiButton;
    BTN_Todo_Cadastro: TXiButton;
    qry_tipo_tabelas: TZQuery;
    DataSource1: TDataSource;
    qry_tipo_tabelascodigo: TIntegerField;
    qry_tipo_tabelastipo_tabelas: TStringField;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    qry_setores: TZQuery;
    DTS_setores: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    qry_funcionarios_fones: TZQuery;
    DTS_funcionarios_fones: TDataSource;
    suiImagePanel1: TsuiImagePanel;
    lbl_dataadmissao: TLabel;
    lbl_banco: TLabel;
    lbl_agencia: TLabel;
    lbl_contacorrente: TLabel;
    lbl_usointernolunav: TLabel;
    lbl_funcao: TLabel;
    lbl_horario: TLabel;
    lbl_datademissao: TLabel;
    lbl_senha: TLabel;
    Edit_dataadmissao: TDateEdit;
    Edit_agencia: TEdit;
    Edit_contacorrente: TEdit;
    Edit_usointernolunav: TEdit;
    Edit_horario: TEdit;
    Edit_datademissao: TDateEdit;
    Edit_senha: TEdit;
    suiImagePanel2: TsuiImagePanel;
    lbl_tipo_tabela: TLabel;
    lbl_codigo: TLabel;
    lbl_nome: TLabel;
    lbl_datanascimento: TLabel;
    lbl_endereco: TLabel;
    lbl_cep: TLabel;
    lbl_bairro: TLabel;
    lbl_rg: TLabel;
    lbl_cpf_cgc: TLabel;
    lbl_filiacaopai: TLabel;
    lbl_filiacaomae: TLabel;
    lbl_conjuge: TLabel;
    Edit_codigo: TCurrencyEdit;
    Edit_nome: TEdit;
    Edit_datanascimento: TDateEdit;
    Edit_endereco: TEdit;
    Edit_cep: TEdit;
    Edit_rg: TEdit;
    Edit_tipo_tabela: TsuiComboBox;
    Edit_filiacaopai: TEdit;
    Edit_filiacaomae: TEdit;
    Edit_conjuge: TEdit;
    Edit_superfiltro: TEdit;
    suiImagePanel3: TsuiImagePanel;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Edit_fones_telefone: TEdit;
    Edit_fones_descricao: TEdit;
    btn_fone_incluir: TsuiButton;
    btn_fone_excluir: TsuiButton;
    btn_fone_salvar: TsuiButton;
    btn_fone_fechar: TsuiButton;
    suiImagePanel4: TsuiImagePanel;
    DBGrid3: TDBGrid;
    qry_funcionarios_dependentes: TZQuery;
    dts_funcionarios_dependentes: TDataSource;
    edit_dependentes_datanascimento: TDateEdit;
    edit_dependentes_nome: TEdit;
    edit_dependentes_dependente: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btn_funcionarios_dependentes_incluir: TsuiButton;
    btn_funcionarios_dependentes_excluir: TsuiButton;
    btn_funcionarios_dependentes_salvar: TsuiButton;
    btn_funcionarios_dependentes_fechar: TsuiButton;
    Edit_superagenda: TEdit;
    qry_funcionarios_fonestipo_tabela: TStringField;
    qry_funcionarios_fonescodigo: TIntegerField;
    qry_funcionarios_fonesfone: TStringField;
    qry_funcionarios_fonesdescricao: TStringField;
    qry_funcionarios_dependentestipo_tabela: TStringField;
    qry_funcionarios_dependentescodigo: TIntegerField;
    qry_funcionarios_dependentesdatanascimento: TDateField;
    qry_funcionarios_dependentesnome: TStringField;
    qry_funcionarios_dependentesparentesco: TStringField;
    Edit_funcao: TsuiComboBox;
    lbl_setor: TLabel;
    Label7: TLabel;
    Edit_setor: TsuiComboBox;
    qry_funcoes: TZQuery;
    DataSource2: TDataSource;
    qry_funcionarios_dependentesidade: TCurrencyField;
    Edit_banco: TsuiComboBox;
    qry_banco: TZQuery;
    DataSource3: TDataSource;
    qry_bancobanco: TStringField;
    TabSheet6: TTabSheet;
    radio_destino: TRadioGroup;
    Radio_aparencia: TRadioGroup;
    Radio_ordem: TRadioGroup;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QR_titulo: TQRLabel;
    qr_periodo_data: TQRLabel;
    qr_filtros: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    qry_setorescodigo: TIntegerField;
    qry_setoresrelevancia: TIntegerField;
    qry_setoressetor: TStringField;
    qry_setorescontagem1: TFloatField;
    qry_setorescontagem2: TFloatField;
    qry_setorescontagem3: TFloatField;
    qry_funcoescodigo: TIntegerField;
    qry_funcoesrelevancia: TIntegerField;
    qry_funcoesfuncao: TStringField;
    qry_funcoescontagem1: TFloatField;
    qry_funcoescontagem2: TFloatField;
    qry_funcoescontagem3: TFloatField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit_ativo: TEdit;
    Edit_inclui_user: TEdit;
    Edit_altera_user: TEdit;
    Edit_exclui_user: TEdit;
    Edit_inclui_data: TDateEdit;
    Edit_altera_data: TDateEdit;
    Edit_exclui_data: TDateEdit;
    StatusBar1: TStatusBar;
    edit_obs_exclusao: TsuiMemo;
    Label15: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    Edit_obs: TsuiMemo;
    lbl_titulo: TLabel;
    Edit_titulo: TEdit;
    lbl_seccao: TLabel;
    Edit_seccao: TEdit;
    lbl_dataemissao: TLabel;
    Edit_dataemissao: TDateEdit;
    lbl_zona: TLabel;
    Edit_zona: TEdit;
    Edit_pis: TEdit;
    lbl_pis: TLabel;
    dts_teste: TDataSource;
    qry_teste: TZQuery;
    qry_testea: TStringField;
    qry_testeb: TStringField;
    qry_testec: TStringField;
    qry_tested: TStringField;
    qry_testee: TStringField;
    qry_testef: TStringField;
    Button1: TButton;
    qry_redetipo_tabela: TStringField;
    qry_redecodigo: TIntegerField;
    qry_rederelevancia: TIntegerField;
    qry_redenome: TStringField;
    qry_redesetor: TStringField;
    qry_rededatanascimento: TDateField;
    qry_redeendereco: TStringField;
    qry_redecep: TStringField;
    qry_redebairro: TStringField;
    qry_rederg: TStringField;
    qry_rededataemissao: TDateField;
    qry_redecpf_cgc: TStringField;
    qry_redetitulo: TStringField;
    qry_redeseccao: TStringField;
    qry_redezona: TStringField;
    qry_redepis: TStringField;
    qry_redefiliacaopai: TStringField;
    qry_redefiliacaomae: TStringField;
    qry_redeconjuge: TStringField;
    qry_rededataadmissao: TDateField;
    qry_redebanco: TStringField;
    qry_redeagencia: TStringField;
    qry_redecontacorrente: TStringField;
    qry_redeusointernolunav: TStringField;
    qry_redefuncao: TStringField;
    qry_redehorario: TStringField;
    qry_rededatademissao: TDateField;
    qry_redesenha: TStringField;
    qry_redesuperfiltro: TStringField;
    qry_redesuperagenda: TStringField;
    qry_redeobs: TMemoField;
    qry_redecontagem1: TFloatField;
    qry_redecontagem2: TFloatField;
    qry_redecontagem3: TFloatField;
    qry_redeativo: TStringField;
    qry_redeinclui_data: TDateTimeField;
    qry_redeinclui_user: TStringField;
    qry_redealtera_data: TDateTimeField;
    qry_redealtera_user: TStringField;
    qry_redeexclui_data: TDateTimeField;
    qry_redeexclui_user: TStringField;
    qry_redeobs_exclusao: TMemoField;
    qry_funcionariostipo_tabela: TStringField;
    qry_funcionarioscodigo: TIntegerField;
    qry_funcionariosrelevancia: TIntegerField;
    qry_funcionariosnome: TStringField;
    qry_funcionariossetor: TStringField;
    qry_funcionariosdatanascimento: TDateField;
    qry_funcionariosendereco: TStringField;
    qry_funcionarioscep: TStringField;
    qry_funcionariosbairro: TStringField;
    qry_funcionariosrg: TStringField;
    qry_funcionariosdataemissao: TDateField;
    qry_funcionarioscpf_cgc: TStringField;
    qry_funcionariostitulo: TStringField;
    qry_funcionariosseccao: TStringField;
    qry_funcionarioszona: TStringField;
    qry_funcionariospis: TStringField;
    qry_funcionariosfiliacaopai: TStringField;
    qry_funcionariosfiliacaomae: TStringField;
    qry_funcionariosconjuge: TStringField;
    qry_funcionariosdataadmissao: TDateField;
    qry_funcionariosbanco: TStringField;
    qry_funcionariosagencia: TStringField;
    qry_funcionarioscontacorrente: TStringField;
    qry_funcionariosusointernolunav: TStringField;
    qry_funcionariosfuncao: TStringField;
    qry_funcionarioshorario: TStringField;
    qry_funcionariosdatademissao: TDateField;
    qry_funcionariossenha: TStringField;
    qry_funcionariossuperfiltro: TStringField;
    qry_funcionariossuperagenda: TStringField;
    qry_funcionariosobs: TMemoField;
    qry_funcionarioscontagem1: TFloatField;
    qry_funcionarioscontagem2: TFloatField;
    qry_funcionarioscontagem3: TFloatField;
    qry_funcionariosativo: TStringField;
    qry_funcionariosinclui_data: TDateTimeField;
    qry_funcionariosinclui_user: TStringField;
    qry_funcionariosaltera_data: TDateTimeField;
    qry_funcionariosaltera_user: TStringField;
    qry_funcionariosexclui_data: TDateTimeField;
    qry_funcionariosexclui_user: TStringField;
    qry_funcionariosobs_exclusao: TMemoField;
    qry_logtipo_tabela: TStringField;
    qry_logcodigo: TIntegerField;
    qry_logrelevancia: TIntegerField;
    qry_lognome: TStringField;
    qry_logsetor: TStringField;
    qry_logdatanascimento: TDateField;
    qry_logendereco: TStringField;
    qry_logcep: TStringField;
    qry_logbairro: TStringField;
    qry_logrg: TStringField;
    qry_logdataemissao: TDateField;
    qry_logcpf_cgc: TStringField;
    qry_logtitulo: TStringField;
    qry_logseccao: TStringField;
    qry_logzona: TStringField;
    qry_logpis: TStringField;
    qry_logfiliacaopai: TStringField;
    qry_logfiliacaomae: TStringField;
    qry_logconjuge: TStringField;
    qry_logdataadmissao: TDateField;
    qry_logbanco: TStringField;
    qry_logagencia: TStringField;
    qry_logcontacorrente: TStringField;
    qry_logusointernolunav: TStringField;
    qry_logfuncao: TStringField;
    qry_loghorario: TStringField;
    qry_logdatademissao: TDateField;
    qry_logsenha: TStringField;
    qry_logsuperfiltro: TStringField;
    qry_logsuperagenda: TStringField;
    qry_logobs: TMemoField;
    qry_logcontagem1: TFloatField;
    qry_logcontagem2: TFloatField;
    qry_logcontagem3: TFloatField;
    qry_logativo: TStringField;
    qry_loginclui_data: TDateTimeField;
    qry_loginclui_user: TStringField;
    qry_logaltera_data: TDateTimeField;
    qry_logaltera_user: TStringField;
    qry_logexclui_data: TDateTimeField;
    qry_logexclui_user: TStringField;
    qry_logobs_exclusao: TMemoField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit_bairro: TComboBox;
    qry_bairros: TZQuery;
    dts_bairros: TDataSource;
    qry_bairrosbairro: TStringField;
    suiImagePanel5: TsuiImagePanel;
    suiImagePanel6: TsuiImagePanel;
    Label17: TLabel;
    Label18: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label19: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label20: TLabel;
    qry_funcionarios_financeiro: TZQuery;
    qry_funcionarios_financeirotipo_tabela: TStringField;
    qry_funcionarios_financeirocodigo: TIntegerField;
    qry_funcionarios_financeirodata_pag: TDateField;
    qry_funcionarios_financeirodescricao: TStringField;
    qry_funcionarios_financeirovalor: TFloatField;
    DBGrid4: TDBGrid;
    Edit_cpf_cgc: TEdit;
    Edit_fones: TEdit;
    Label21: TLabel;
    qry_funcionariosw_fones: TStringField;
    GradPan1: TGradPan;
    Label_Registros: TLabel;
    Btn_Incluir: TsuiButton;
    Btn_Alterar: TsuiButton;
    Btn_Excluir: TsuiButton;
    Btn_Salvar: TsuiButton;
    DBNavigator1: TsuiDBNavigator;
    Btn_Sair: TsuiButton;
    suiButton1: TsuiButton;
    btn_relatorio: TsuiButton;
    suiButton2: TsuiButton;
    DataSource4: TDataSource;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand4: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QR_titulo_01: TQRLabel;
    Label22: TLabel;
    Edit_fone_01: TEdit;
    Label23: TLabel;
    Edit_descricao_01: TEdit;
    TabSheet7: TTabSheet;
    Panel1: TPanel;
    Edit1: TEdit;
    Label24: TLabel;
    Button2: TButton;
    DBGrid5: TDBGrid;
    qry_exclusao: TZQuery;
    dts_qry_exclusao: TDataSource;
    qry_exclusaotipo_tabela: TStringField;
    qry_exclusaocodigo: TIntegerField;
    qry_exclusaorelevancia: TIntegerField;
    qry_exclusaonome: TStringField;
    qry_exclusaosetor: TStringField;
    qry_exclusaodatanascimento: TDateField;
    qry_exclusaoendereco: TStringField;
    qry_exclusaocep: TStringField;
    qry_exclusaobairro: TStringField;
    qry_exclusaorg: TStringField;
    qry_exclusaodataemissao: TDateField;
    qry_exclusaocpf_cgc: TStringField;
    qry_exclusaotitulo: TStringField;
    qry_exclusaoseccao: TStringField;
    qry_exclusaozona: TStringField;
    qry_exclusaopis: TStringField;
    qry_exclusaofiliacaopai: TStringField;
    qry_exclusaofiliacaomae: TStringField;
    qry_exclusaoconjuge: TStringField;
    qry_exclusaodataadmissao: TDateField;
    qry_exclusaobanco: TStringField;
    qry_exclusaoagencia: TStringField;
    qry_exclusaocontacorrente: TStringField;
    qry_exclusaousointernolunav: TStringField;
    qry_exclusaofuncao: TStringField;
    qry_exclusaohorario: TStringField;
    qry_exclusaodatademissao: TDateField;
    qry_exclusaosenha: TStringField;
    qry_exclusaosuperfiltro: TStringField;
    qry_exclusaosuperagenda: TStringField;
    qry_exclusaoobs: TMemoField;
    qry_exclusaocontagem1: TFloatField;
    qry_exclusaocontagem2: TFloatField;
    qry_exclusaocontagem3: TFloatField;
    qry_exclusaoativo: TStringField;
    qry_exclusaoinclui_data: TDateTimeField;
    qry_exclusaoinclui_user: TStringField;
    qry_exclusaoaltera_data: TDateTimeField;
    qry_exclusaoaltera_user: TStringField;
    qry_exclusaoexclui_data: TDateTimeField;
    qry_exclusaoexclui_user: TStringField;
    qry_exclusaoobs_exclusao: TMemoField;
    ListBox1: TListBox;
      //-----IBR----Procedures e Funcoes--------------------------
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_SalvarClick(Sender: TObject);
    procedure Btn_SairClick(Sender: TObject);
      //procedure FormKeyPress(Sender    : TObject; var Key: Char;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Limpa_Campos;
    procedure Carrega_query;
    procedure Le_query;
    procedure Liga_Campos;
    procedure Desliga_os_Campos;
    procedure Carrega_query_log;
    procedure QRY_funcionariosAfterScroll(DataSet: TDataSet);
    procedure Edit_PosicionaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClick(Sender: TObject);
    procedure Radio_FiltraClick(Sender: TObject);
    procedure Radio_PosicionaClick(Sender: TObject);
    procedure Btn_FiltraClick(Sender: TObject);
    procedure Btn_Todo_CadastroClick(Sender: TObject);
    procedure Edit_FiltraExit(Sender: TObject);
    procedure Edit_FiltraKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_tipo_tabelaExit(Sender: TObject);
    procedure Edit_cepEnter(Sender: TObject);
    procedure Edit_cepExit(Sender: TObject);
    procedure Edit_cpf_cgcEnter(Sender: TObject);
    procedure Edit_cpf_cgcExit(Sender: TObject);
    procedure Edit_cpf_cgcChange(Sender: TObject);
    procedure Edit_pisEnter(Sender: TObject);
    procedure Edit_pisExit(Sender: TObject);
    procedure Edit_conjugeExit(Sender: TObject);
    procedure Edit_horarioExit(Sender: TObject);
    procedure Edit_conjugeEnter(Sender: TObject);
    procedure Edit_dataadmissaoEnter(Sender: TObject);
    procedure Edit_conjugeKeyPress(Sender: TObject; var Key: Char);
    procedure btn_fone_incluirClick(Sender: TObject);
    procedure btn_fone_salvarClick(Sender: TObject);
    procedure t(Sender: TObject);
    procedure Edit_fones_telefoneEnter(Sender: TObject);
    procedure Edit_nomeExit(Sender: TObject);
    procedure Edit_nomeEnter(Sender: TObject);
    procedure Edit_enderecoEnter(Sender: TObject);
    procedure Edit_bairroEnter(Sender: TObject);
    procedure Edit_setorEnter(Sender: TObject);
    procedure Edit_datanascimentoEnter(Sender: TObject);
    procedure Edit_rgEnter(Sender: TObject);
    procedure Edit_dataemissaoEnter(Sender: TObject);
    procedure Edit_tituloEnter(Sender: TObject);
    procedure Edit_seccaoEnter(Sender: TObject);
    procedure Edit_zonaEnter(Sender: TObject);
    procedure Edit_filiacaopaiEnter(Sender: TObject);
    procedure Edit_filiacaomaeEnter(Sender: TObject);
    procedure Edit_funcaoEnter(Sender: TObject);
    procedure Edit_bancoEnter(Sender: TObject);
    procedure Edit_agenciaEnter(Sender: TObject);
    procedure Edit_contacorrenteEnter(Sender: TObject);
    procedure Edit_usointernolunavEnter(Sender: TObject);
    procedure Edit_horarioEnter(Sender: TObject);
    procedure Edit_datademissaoEnter(Sender: TObject);
    procedure Edit_dataadmissaoExit(Sender: TObject);
    procedure qry_funcionarios_fonesAfterScroll(DataSet: TDataSet);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_fone_excluirClick(Sender: TObject);
    procedure btn_funcionarios_dependentes_incluirClick(Sender: TObject);
    procedure btn_funcionarios_dependentes_salvarClick(Sender: TObject);
    procedure edit_dependentes_datanascimentoEnter(Sender: TObject);
    procedure edit_dependentes_nomeEnter(Sender: TObject);
    procedure edit_dependentes_dependenteEnter(Sender: TObject);
    procedure edit_dependentes_dependenteExit(Sender: TObject);
    procedure edit_dependentes_nomeExit(Sender: TObject);
    procedure edit_dependentes_datanascimentoExit(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qry_funcionarios_dependentesAfterScroll(DataSet: TDataSet);
    procedure qry_funcionarios_dependentesCalcFields(DataSet: TDataSet);
    procedure Edit_obsExit(Sender: TObject);
    procedure Edit_obsEnter(Sender: TObject);
    procedure Edit_funcaoExit(Sender: TObject);
    procedure Edit_cpf_cgcKeyPress(Sender: TObject; var Key: Char);
    procedure btn_relatorioClick(Sender: TObject);
    procedure controle_permissoes;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit_bairroExit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure Edit_rgExit(Sender: TObject);
    procedure qry_funcionariosCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Edit_fone_01Exit(Sender: TObject);
    procedure Edit_descricao_01Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit_fone_01Enter(Sender: TObject);

  private
    procedure carrega_telefones;
    procedure super_filtro;
    procedure carrega_setores;
    procedure carrega_funcoes;
    procedure carrega_bairros;
    function carrega_imagens(padrao: Integer): Boolean;
      { Private declarations }
  public
      { Public declarations }
    wy_nome_form_local: string;
    Tipo_Operacao: string;
    desliga_enter: Boolean;
    w_dt_inc,
      w_dt_alt,
      w_us_inc,
      w_us_alt: string;

  end;
var
  w_Frm_funcionarios: TFrm_funcionarios;

implementation

uses dm1, UTL_BIBLIOTECA, UTL_APOIO, frm__exclusao, frm_menu;

{$R *.DFM}
//============================== formClose===============================

procedure TFrm_funcionarios.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ZebrarDbGrid(DTS_funcionarios, DBGrid1, State, Rect, Column);
end;

procedure TFrm_funcionarios.FormClose(Sender: TObject; var Action:
  TCloseAction);
var
  ww_numero: Integer;
begin
  with datamodule1.qry_memoria_janela do
  begin
    sql.clear;
    sql.add('Select * from memoria_janela where w_janela = :ww1 and w_maquina = :ww2');
    Params[0].AsString := 'Frm_funcionarios';
    Params[1].AsString := datamodule1.c_Pub_User; //wy_maquina;
    open
  end;
  ww_numero := 0;
  if datamodule1.qry_memoria_janela.RecordCount > 0 then
    ww_numero := datamodule1.qry_memoria_janelaw_numer_de_usos.AsInteger + 1;
  with datamodule1.qry_memoria_janela do
  begin
    sql.clear;
    sql.add('Replace into memoria_janela(w_janela,w_maquina, w_lef, w_top, w_wid, w_siz, w_data_uso, w_numer_de_usos)');
    sql.Add('Values(:w_janela, :w_maquina, :w_lef, :w_top, :w_wid, :w_siz, :w_data_uso, :w_numer_de_usos)');
    Params[0].AsString := 'Frm_funcionarios';
    Params[1].AsString := datamodule1.c_Pub_User;
    Params[2].AsInteger := Self.left;
    Params[3].AsInteger := Self.Top;
    Params[4].AsInteger := Self.Width;
    Params[5].AsInteger := Self.Height;
    Params[6].AsDateTime := now;
    Params[7].AsInteger := ww_numero;
    ExecSql;
  end;
end;
//============================== formActivate ===============================

procedure TFrm_funcionarios.Carrega_query_log;
begin
  with qry_log do
  begin
    SQL.Clear;
    SQL.Add('Select * from funcionarios Where tipo_tabela=:tipo_tabela');
    Params[0].asstring := Edit_tipo_tabela.Text;
    open;
  end;
end;
//========================= Btn_IncluirClick ====================================

procedure TFrm_funcionarios.Btn_IncluirClick(Sender: TObject);
begin
   //Controle de Operacoes Para os Logs
  desliga_enter := False;
  carrega_imagens(0);
  Tipo_operacao := 'I';
  Carrega_query_log;
   //Controle de Botões
  btn_Incluir.Enabled := False;
  btn_Alterar.Enabled := False;
  btn_Excluir.Enabled := False;
  btn_Salvar.Enabled := True;
  btn_Sair.Enabled := True;
  PageControl1.ActivePage := TabSheet1;
   //ligas os edits
   //============ Controle do Cancela ===================
  Btn_Sair.font.Color := ClRed;
  Btn_Sair.Caption := 'Cancelar';

  with QRY_funcionarios do
  begin
    Sql.Clear;
    Sql.add('Select * from funcionarios WHERE TIPO_TABELA=:T1 order by tipo_tabela,codigo');
    params[0].AsString := DataModule1.tipo_tabela;
    Open;
  end;
   //Posiciona a tabela no Final
  Qry_funcionarios.Last;

   // CARREGA BAIRROS
  carrega_bairros;

   //limpa os edits
  Limpa_Campos;
//Edit_tipo_tabela.Text := form_menu.ORIGEM_CHAMADA_CADASTRO;
  Edit_tipo_tabela.Text := DataModule1.tipo_tabela ;
   //{
  if Qry_funcionarios.RecordCount = 0 then
    Edit_codigo.Text := '1';
  if Qry_funcionarios.RecordCount > 0 then
    Edit_codigo.Text := IntToStr(qry_funcionarioscodigo.AsInteger + 1);
   //}

   //carrega_setores;
   //carrega_funcoes;
  qry_banco.First;
  edit_banco.Clear;
  while not qry_banco.Eof do
  begin
    Edit_banco.Items.Add(qry_bancobanco.AsString);
    qry_banco.Next;
  end;
   {suiImagePanel1.Color := form_menu.cor_do_form;
   suiImagePanel2.Color := form_menu.cor_do_form;
   suiImagePanel3.Color := form_menu.cor_do_form;
   suiImagePanel4.Color := form_menu.cor_do_form;
   suiImagePanel5.Color := form_menu.cor_do_form;
   suiImagePanel6.Color := form_menu.cor_do_form;
   }
  DBText1.Color := form_menu.cor_do_form;
  DBText2.Color := form_menu.cor_do_form;
  DBText3.Color := form_menu.cor_do_form;

  w_dt_inc := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
  w_us_inc := DataModule1.c_Pub_User;
  w_dt_alt := '';
  w_us_alt := '';

  Liga_Campos;
   // Limpa_Campos;
  Edit_codigo.Enabled := False;
  Edit_RG.SetFocus;
end;
//=============================================================

procedure TFrm_funcionarios.carrega_bairros;
begin
  Edit_bairro.Clear;
  qry_bairros.First;
  while not qry_bairros.Eof do
  begin
    Edit_bairro.Items.Add(qry_bairrosbairro.AsString);
    qry_bairros.Next;
  end;
end;

procedure TFrm_funcionarios.carrega_setores;
begin
   { with qry_setores do
    begin
       sql.Clear;
       sql.Add('Select * from setores order by setor');
       Open;
    end;
    Edit_setor.Clear;
    qry_setores.First;
    while not qry_setores.Eof do
    begin
       Edit_setor.Items.Add(qry_setoressetor.AsString);
       qry_setores.Next;
    end;
    }
end;

procedure TFrm_funcionarios.carrega_funcoes;
begin
   {   with qry_funcoes do
      begin
         sql.Clear;
         sql.Add('Select * from funcoes order by funcao');
         Open;
      end;
      Edit_funcao.Clear;
      qry_funcoes.First;
      while not qry_funcoes.Eof do
      begin
         Edit_funcao.Items.Add(qry_funcoesfuncao.AsString);
         qry_funcoes.Next;
      end;
      }
end;

procedure TFrm_funcionarios.Btn_AlterarClick(Sender: TObject);
var
  setor_atual, funcao_atual: string;
begin
   //Controle de Operacoes Para os Logs
  Tipo_operacao := 'A';
  carrega_imagens(0);
  Carrega_query_log;
   //Controle de Botões
  btn_Incluir.Enabled := False;
  btn_Alterar.Enabled := False;
  btn_Excluir.Enabled := False;
  btn_Salvar.Enabled := True;
  btn_Sair.Enabled := True;
  PageControl1.ActivePage := TabSheet1;
   //ligas os edits
   //============ Controle do Cancela ===================
  Btn_Sair.font.Color := ClRed;
  Btn_Sair.Caption := 'Cancelar';
  liga_campos;
  setor_atual := Edit_setor.Text;
  funcao_atual := Edit_funcao.Text;

  carrega_setores;
  carrega_funcoes;
  carrega_bairros;

  Edit_setor.Text := setor_atual;
  Edit_funcao.Text := funcao_atual;

  w_dt_inc := qry_funcionariosinclui_data.AsString;
  w_us_inc := qry_funcionariosinclui_user.AsString;
  w_dt_alt := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
  w_us_alt := DataModule1.c_Pub_User;
  ;

  Edit_tipo_tabela.Enabled := False;
  Edit_codigo.Enabled := False;
  Edit_rg.SetFocus;
end;

//============================== LIMPA ===============================

procedure TFrm_funcionarios.Limpa_Campos;
begin
  Edit_tipo_tabela.Text := '';
  Edit_codigo.Text := '';
  Edit_fone_01.Text := '';
  Edit_descricao_01.Text := '';
  Edit_nome.Text := '';
  Edit_setor.Text := '';
  Edit_datanascimento.Text := '';
  Edit_endereco.Text := '';
  Edit_cep.Text := '';
  Edit_bairro.Text := '';
  Edit_rg.Text := '';
  Edit_dataemissao.Text := '';
  Edit_cpf_cgc.Text := '';
  Edit_titulo.Text := '';
  Edit_seccao.Text := '';
  Edit_zona.Text := '';
  Edit_pis.Text := '';
  Edit_filiacaopai.Text := '';
  Edit_filiacaomae.Text := '';
  Edit_conjuge.Text := '';
  Edit_dataadmissao.Text := '';
  Edit_banco.Text := '';
  Edit_agencia.Text := '';
  Edit_contacorrente.Text := '';
  Edit_usointernolunav.Text := '';
  Edit_funcao.Text := '';
  Edit_horario.Text := '';
  Edit_datademissao.Text := '';
  Edit_senha.Text := '';

  Edit_obs.Clear;
  Edit_fones.Clear;


  Edit_ativo.Text := 'SIM';
  Edit_inclui_user.Text := '';
  Edit_altera_user.Text := '';
  Edit_exclui_user.Text := '';

  Edit_inclui_data.Clear;
  Edit_altera_data.Clear;
  Edit_exclui_data.Clear;
  edit_obs_exclusao.Clear;
end;
//============================== LIGA CAMPOS ===============================

procedure TFrm_funcionarios.Liga_Campos;
begin
  Edit_tipo_tabela.Enabled := True;
  Edit_codigo.Enabled := True;
  Edit_fones.Enabled := True;
  Edit_fone_01.Enabled := True;
  Edit_descricao_01.Enabled := True;

  Edit_nome.Enabled := True;
  Edit_setor.Enabled := True;
  Edit_datanascimento.Enabled := True;
  Edit_endereco.Enabled := True;
  Edit_cep.Enabled := True;
  Edit_bairro.Enabled := True;
  Edit_rg.Enabled := True;
  Edit_dataemissao.Enabled := True;
  Edit_cpf_cgc.Enabled := True;
  Edit_titulo.Enabled := True;
  Edit_seccao.Enabled := True;
  Edit_zona.Enabled := True;
  Edit_pis.Enabled := True;
  Edit_filiacaopai.Enabled := True;
  Edit_filiacaomae.Enabled := True;
  Edit_conjuge.Enabled := True;
  Edit_dataadmissao.Enabled := True;
  Edit_banco.Enabled := True;
  Edit_agencia.Enabled := True;
  Edit_contacorrente.Enabled := True;
  Edit_usointernolunav.Enabled := True;
  Edit_funcao.Enabled := True;
  Edit_horario.Enabled := True;
  Edit_datademissao.Enabled := True;
  Edit_senha.Enabled := True;
  Edit_obs.Enabled := True;
  edit_obs_exclusao.Enabled := False;
   //----------------------------------- Cores --------------------------------
  Edit_tipo_tabela.Color := ClWindow;
  Edit_codigo.Color := ClWindow;
  Edit_fones.Color := clWindow;
  Edit_fone_01.Color := clWindow;
  Edit_descricao_01.Color := clWindow;
  Edit_nome.Color := ClWindow;
  Edit_setor.Color := ClWindow;
  Edit_datanascimento.Color := ClWindow;
  Edit_endereco.Color := ClWindow;
  Edit_cep.Color := ClWindow;
  Edit_bairro.Color := ClWindow;
  Edit_rg.Color := ClWindow;
  Edit_dataemissao.Color := ClWindow;
  Edit_cpf_cgc.Color := ClWindow;
  Edit_titulo.Color := ClWindow;
  Edit_seccao.Color := ClWindow;
  Edit_zona.Color := ClWindow;
  Edit_pis.Color := ClWindow;
  Edit_filiacaopai.Color := ClWindow;
  Edit_filiacaomae.Color := ClWindow;
  Edit_conjuge.Color := ClWindow;
  Edit_dataadmissao.Color := ClWindow;
  Edit_banco.Color := ClWindow;
  Edit_agencia.Color := ClWindow;
  Edit_contacorrente.Color := ClWindow;
  Edit_usointernolunav.Color := ClWindow;
  Edit_funcao.Color := ClWindow;
  Edit_horario.Color := ClWindow;
  Edit_datademissao.Color := ClWindow;
  Edit_senha.Color := ClWindow;
  Edit_obs.Color := clWindow;
  edit_obs_exclusao.Color := clBtnFace;

  Application.ProcessMessages;
end;
//============================== DESLIGA CAMPOS ===============================

procedure TFrm_funcionarios.Desliga_os_Campos;
begin
  Edit_tipo_tabela.Enabled := False;
  Edit_codigo.Enabled := False;
  Edit_fones.Enabled := False;
  Edit_nome.Enabled := False;
  Edit_fone_01.Enabled := False;
  Edit_descricao_01.Enabled := False;
  Edit_setor.Enabled := False;
  Edit_datanascimento.Enabled := False;
  Edit_endereco.Enabled := False;
  Edit_cep.Enabled := False;
  Edit_bairro.Enabled := False;
  Edit_rg.Enabled := False;
  Edit_dataemissao.Enabled := False;
  Edit_cpf_cgc.Enabled := False;
  Edit_titulo.Enabled := False;
  Edit_seccao.Enabled := False;
  Edit_zona.Enabled := False;
  Edit_pis.Enabled := False;
  Edit_filiacaopai.Enabled := False;
  Edit_filiacaomae.Enabled := False;
  Edit_conjuge.Enabled := False;
  Edit_dataadmissao.Enabled := False;
  Edit_banco.Enabled := False;
  Edit_agencia.Enabled := False;
  Edit_contacorrente.Enabled := False;
  Edit_usointernolunav.Enabled := False;
  Edit_funcao.Enabled := False;
  Edit_horario.Enabled := False;
  Edit_datademissao.Enabled := False;
  Edit_senha.Enabled := False;
  Edit_obs.Enabled := False;
  Edit_obs.Enabled := False;

   //----------------------------------- Cores --------------------------------
  Edit_tipo_tabela.Color := ClBtnFace;
  Edit_codigo.Color := ClBtnFace;
  Edit_fones.Color := clBtnFace;
  Edit_nome.Color := ClBtnFace;
  Edit_fone_01.Color := clBtnFace;
  Edit_descricao_01.Color := clBtnFace;
  Edit_setor.Color := ClBtnFace;
  Edit_datanascimento.Color := ClBtnFace;
  Edit_endereco.Color := ClBtnFace;
  Edit_cep.Color := ClBtnFace;
  Edit_bairro.Color := ClBtnFace;
  Edit_rg.Color := ClBtnFace;
  Edit_dataemissao.Color := ClBtnFace;
  Edit_cpf_cgc.Color := ClBtnFace;
  Edit_titulo.Color := ClBtnFace;
  Edit_seccao.Color := ClBtnFace;
  Edit_zona.Color := ClBtnFace;
  Edit_pis.Color := ClBtnFace;
  Edit_filiacaopai.Color := ClBtnFace;
  Edit_filiacaomae.Color := ClBtnFace;
  Edit_conjuge.Color := ClBtnFace;
  Edit_dataadmissao.Color := ClBtnFace;
  Edit_banco.Color := ClBtnFace;
  Edit_agencia.Color := ClBtnFace;
  Edit_contacorrente.Color := ClBtnFace;
  Edit_usointernolunav.Color := ClBtnFace;
  Edit_funcao.Color := ClBtnFace;
  Edit_horario.Color := ClBtnFace;
  Edit_datademissao.Color := ClBtnFace;
  Edit_senha.Color := ClBtnFace;
  Edit_obs.Color := clBtnFace;
  Edit_obs.Color := clBtnFace;

end;
//============================== Le Query ===============================

procedure TFrm_funcionarios.Le_query;
begin
  with QRY_funcionarios do
  begin
    SQL.clear;
    SQL.add('Select * from funcionarios');
    case Radio_Filtra.ItemIndex of
      0:
        begin
          SQL.add(' where Upper(superfiltro) like :edit_filtra ');
          ParamByName('edit_filtra').AsString := '%' +
            UpperCase(Edit_filtra.text) + '%';
        end;
      1:
        begin
          SQL.add(' where Upper(nome) like :edit_filtra ');
          ParamByName('edit_filtra').AsString := '%' +
            UpperCase(Edit_filtra.text) + '%';
        end;
      2:
        begin
          SQL.add(' where Upper(bairro) like :edit_filtra ');
          ParamByName('edit_filtra').AsString := '%' +
            UpperCase(Edit_filtra.text) + '%';
        end;
      3:
        begin
          SQL.add(' where Upper(rg) like :edit_filtra ');
          ParamByName('edit_filtra').AsString := '%' +
            UpperCase(Edit_filtra.text) + '%';
        end;
    end;
    case radio_posiciona.itemIndex of
      0: SQL.add(' order by codigo');
      1: SQL.add(' order by nome');
      2: SQL.add(' order by bairro,nome');
      3: SQL.add(' order by rg');
    else
      SQL.add(' order by codigo');
    end;
      //ShowMessage(sql.text);
    Open;
    QRY_funcionarios.last;
    Carrega_query;
  end;

end;
//============================== carrega ===============================

procedure TFrm_funcionarios.Carrega_query;
begin
  edit_tipo_tabela.text := QRY_funcionariostipo_tabela.AsString;
  edit_codigo.text := QRY_funcionarioscodigo.AsString;
  edit_nome.text := QRY_funcionariosnome.AsString;

  Edit_fones_telefone.Text  := Formata_fone(qry_funcionarios_fonesfone.AsString);
  Edit_fones_descricao.Text := qry_funcionarios_fonesdescricao.AsString;



  edit_setor.text := QRY_funcionariossetor.AsString;
  Edit_funcao.Text := qry_funcionariosfuncao.AsString;
  edit_datanascimento.text := QRY_funcionariosdatanascimento.AsString;
  edit_endereco.text := QRY_funcionariosendereco.AsString;
  edit_cep.text := QRY_funcionarioscep.AsString;
  edit_bairro.text := QRY_funcionariosbairro.AsString;
  edit_rg.text := QRY_funcionariosrg.AsString;
  edit_dataemissao.text := QRY_funcionariosdataemissao.AsString;
  edit_cpf_cgc.text := QRY_funcionarioscpf_cgc.AsString;
  edit_titulo.text := QRY_funcionariostitulo.AsString;
  edit_seccao.text := QRY_funcionariosseccao.AsString;
  edit_zona.text := QRY_funcionarioszona.AsString;
  edit_pis.text := QRY_funcionariospis.AsString;
  edit_filiacaopai.text := QRY_funcionariosfiliacaopai.AsString;
  edit_filiacaomae.text := QRY_funcionariosfiliacaomae.AsString;
  edit_conjuge.text := QRY_funcionariosconjuge.AsString;
  edit_dataadmissao.text := QRY_funcionariosdataadmissao.AsString;
  edit_banco.text := QRY_funcionariosbanco.AsString;
  edit_agencia.text := QRY_funcionariosagencia.AsString;
  edit_contacorrente.text := QRY_funcionarioscontacorrente.AsString;
  edit_usointernolunav.text := QRY_funcionariosusointernolunav.AsString;
   {if Length(SoNumeros(qry_funcionariosfuncao.AsString)) = 0 then
     Edit_funcao.Clear
   else
     edit_funcao.text := QRY_funcionariosfuncao.AsString;
   }
  if Length(Edit_horario.Text) < 1 then
    Edit_horario.Text := ''
  else
    edit_horario.text := QRY_funcionarioshorario.AsString;

  if Length(SoNumeros(QRY_funcionariosdatademissao.AsString)) = 0 then
    edit_datademissao.clear
  else
    edit_datademissao.text := QRY_funcionariosdatademissao.AsString;
  edit_senha.text := QRY_funcionariossenha.AsString;
  Edit_superfiltro.Text := qry_funcionariossuperfiltro.AsString;
  Edit_superagenda.Text := qry_funcionariossuperagenda.AsString;
  Edit_obs.Text := qry_funcionariosobs.AsString;

  Edit_ativo.Text := 'SIM';
  Edit_inclui_user.Text := qry_funcionariosinclui_user.AsString;
  Edit_altera_user.Text := qry_funcionariosaltera_user.AsString;
  Edit_exclui_user.Text := qry_funcionariosexclui_user.AsString;

  Edit_inclui_data.Text := qry_funcionariosinclui_data.AsString;
  Edit_altera_data.Text := qry_funcionariosaltera_data.AsString;
  Edit_exclui_data.Text := qry_funcionariosexclui_user.AsString;
  edit_obs_exclusao.Text := qry_funcionariosobs_exclusao.AsString;

  carrega_telefones;

end;
//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Btn_ExcluirClick(Sender: TObject);
var
  f: TextFile;
  l, w_local: string;

begin
   //Controle de Operacoes Para os Logs
  Tipo_operacao := 'E';
  Carrega_query_log;
   //Controle de Botões
  btn_Salvar.Enabled := True;
  btn_Sair.Enabled := True;
   //ligas os edits
   // depende da regra de exclusao da tabela
//------------------------------------------------------------------------------
     //colocar filtro conforme primay key para deletar somente um registro
  if MessageDlg('Tem Certeza Que deseja Excluir Este Registro?',
    mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    w_local := ExtractFileDir(Application.ExeName) + '\Exclusoes\';
    ForceDirectories(w_local);
    L := w_local + 'funcionarios.log';


    if Btn_Excluir.Caption = '&Excluir' then
    begin
      //Btn_Excluir.Caption := 'Recu&perar';
      with QRY_rede do
      begin
        sql.clear;
        sql.add('Update funcionarios set ' +
          'ativo=:a1, ' +
          'exclui_user=:a2, ' +
          'exclui_data=:a3  ' +
          'where codigo=:c4');
        Params[0].AsString := 'NAO';
        Params[1].AsString := DataModule1.c_Pub_User;
        Params[2].AsDateTime := now;
        Params[3].AsInteger := StrToInt(Edit_codigo.Text);
        ExecSql;
      end;
      AssignFile(F, l);
      if FileExists(L) then
        Append(f)
      else
      begin
        rewrite(F);
        writeln(F,
          '*---------------*-----*--------*----------------------*----------------------*------------------*---------------------*');
        writeln(F,
          '| DATA E HORA   |USER | codigo |nome                  | ACÃO                 |    Numero IP     | User Windows        |');
        writeln(F,
          '*---------------*-----*--------*----------------------*----------------------*------------------*---------------------*');

      end;
      L := '|' + FormatDateTime('dd/mm/yy hh:mm', now) + ' | ' +
        DataModule1.c_Pub_User + ' | ' +
        padl(Edit_codigo.Text, 6) + ' | ' +
        padl(Edit_nome.Text, 20) + ' | ' +
        padl(Btn_Excluir.Caption, 20) + ' | ' +
        padl(DataModule1.wy_ip, 16) + ' | ' +
        padl(DataModule1.wy_maquina, 20) + '|';

      writeln(F, L);

      CloseFile(F);
      Exit;
    end;
    if Btn_Excluir.Caption = 'Recu&perar' then
    begin
      Btn_Excluir.Caption := '&Excluir';
      with QRY_rede do
      begin
        sql.clear;
        sql.add('Update funcionarios set ' +
          'ativo=:a1, ' +
          'exclui_user=:a2, ' +
          'exclui_data=:a3  ' +
          'where codigo=:c4');
        Params[0].AsString := 'SIM';
        Params[1].AsString := DataModule1.c_Pub_User;
        Params[2].AsDateTime := now;
        Params[3].AsInteger := StrToInt(Edit_codigo.Text);
        ExecSql;
      end;
      AssignFile(F, l);
      if FileExists(L) then
        Append(f)
      else
      begin
        rewrite(F);
        writeln(F,
          '*---------------*-----*--------*----------------------*----------------------*------------------*---------------------*');
        writeln(F,
          '| DATA E HORA   |USER | codigo |nome                  | ACÃO                 |    Numero IP     | User Windows        |');
        writeln(F,
          '*---------------*-----*--------*----------------------*----------------------*------------------*---------------------*');

      end;
      L := '|' + FormatDateTime('dd/mm/yy hh:mm', now) + ' | ' +
        DataModule1.c_Pub_User + ' | ' +
        padl(Edit_codigo.Text, 6) + ' | ' +
        padl(Edit_nome.Text, 20) + ' | ' +
        padl(Btn_Excluir.Caption, 20) + ' | ' +
        padl(DataModule1.wy_ip, 16) + ' | ' +
        padl(DataModule1.wy_maquina, 20) + '|';

      writeln(F, L);

      CloseFile(F);

    end;

    Le_Query;
    Desliga_os_Campos;
    Carrega_query;
  end;
end;
//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Edit_FiltraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0; { Suprime o som }
    Btn_FiltraClick(Application);
  end;
end;
//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Btn_SalvarClick(Sender: TObject);
var
  x: integer;
  Diferencas: string;
  posicao: string;
  w_tipo_acao: string;
begin
  diferencas := '';
  posicao := Edit_codigo.Text;
  w_tipo_acao := Tipo_Operacao;
   {
   for x:=0 to QRY_log.FieldCount-1 do
   begin
      if QRY_Log.Fields[x].AsString  <> QRY_rede.Fields[x].AsString then
         diferencas := diferencas + qry_log.fields[x].FieldName + ' = ' + qry_log.Fields[x].AsString +' --> '+qry_rede.Fields[x].asstring+#10+#12;
   end;
   if Length(diferencas) > 3 then
   Begin
      ShowMessage('Registro Já Aletrado '+#10+#13+Diferencas);
      Carrega_query;
      Edit_codigo.SetFocus;
      Exit;
   End;
   }
//I- Persistencia tipo_tabela --------------------------------------------------R
  if length(Edit_tipo_tabela.Text) = 0 then
  begin
    Showmessage('TIPO TABELA é Campo OBRIGATÓRIO!!!');
    //Edit_tipo_tabela.SetFocus;
    Edit_tipo_tabela.Text := 'SOCIO';
    // Exit
  end;
   //I- Persistencia codigo -------------------------------------------------------R
  if strtoint(Edit_codigo.Text) = 0 then
  begin
    Showmessage('CODIGO é Campo OBRIGATÓRIO!!!');
    PageControl1.ActivePage := TabSheet1;
    Edit_codigo.SetFocus;
    Exit
  end;
   //I- Persistencia nome ---------------------------------------------------------R
  if length(Edit_nome.Text) = 0 then
  begin
    Showmessage('NOME é Campo OBRIGATÓRIO!!!');
    PageControl1.ActivePage := TabSheet1;
    Edit_nome.SetFocus;
    Exit
  end;
   //I- Persistencia RGsetor --------------------------------------------------------R
  if length(Edit_rg.Text) = 0 then
  begin
    Showmessage('RG é Campo OBRIGATÓRIO!!!');
    PageControl1.ActivePage := TabSheet1;
    Edit_rg.SetFocus;
    Exit
  end;
   //I- Persistencia funcao--------------------------------------------------------R
{   if length(Edit_funcao.Text) = 0 then
   begin
      Showmessage('FUNÇÃO é Campo OBRIGATÓRIO!!!');
      PageControl1.ActivePage := TabSheet2;
      Edit_funcao.SetFocus;
      Exit
   end;
   }
   //Controle de Botões
  btn_Incluir.Enabled := True;
  btn_Alterar.Enabled := True;
  btn_Excluir.Enabled := True;
  btn_Salvar.Enabled := False;
  btn_Sair.Enabled := True;
   //Desliga os edits

     if (Length(SoNumeros(Edit_fone_01.Text)) <> 0) or
     (Length((Edit_descricao_01.Text)) <> 0) then
  begin
         // pesrsiste os campos
      if Length(SoNumeros(Edit_fone_01.Text)) < 5 then
      begin
        ShowMessage('Telefone Muito Curto!!!');
        Edit_fones_telefone.SetFocus;
      end;
      if Length((Edit_descricao_01.Text)) < 3 then
      begin
        ShowMessage('Descrição Muito Curta!!!');
        Edit_fones_descricao.SetFocus;
      end;

      with qry_funcionarios_fones do
      begin
        sql.Clear;
        sql.Add('Replace into funcionarios_fones (tipo_tabela, codigo, fone, descricao)');
        sql.Add('Values (:tipo_tabela, :codigo, :fone, :descricao)');
        Params[0].AsString := Edit_tipo_tabela.Text;
        Params[1].AsInteger := strtoint(edit_codigo.Text);
        Params[2].AsString := Edit_fone_01.Text;
        Params[3].AsString := Edit_descricao_01.Text;
        ExecSQL;
        sql.Clear;
        sql.Add('Select * from funcionarios_fones where tipo_tabela=:t1 and codigo=:t2 order by fone');
        Params[0].AsString := Edit_tipo_tabela.Text;
        Params[1].AsInteger := strtoint(edit_codigo.Text);
        Open;
      end;
  end;


  Desliga_os_Campos;
  with QRY_funcionarios do
  begin
    Sql.Clear;
    Sql.add('Replace into  funcionarios(' +
      ' tipo_tabela    ,  codigo         ,  nome           ,  setor          ,  datanascimento , ' +
      ' endereco       ,  cep            ,  bairro         ,  rg             ,  dataemissao    , ' +
      ' cpf_cgc        ,  titulo         ,  seccao         ,  zona           ,  pis            , ' +
      ' filiacaopai    ,  filiacaomae    ,  conjuge        ,  dataadmissao   ,  banco          , ' +
      ' agencia        ,  contacorrente  ,  usointernolunav,  funcao         ,  horario        , ' +
      ' datademissao   ,  senha          ,superfiltro      ,  superagenda, obs,  ' +
      ' ativo, inclui_data, inclui_user, altera_data, altera_user,exclui_data, exclui_user)');
    Sql.add('Values (' +
      ':tipo_tabela    , :codigo         , :nome           , :setor          , :datanascimento , ' +
      ':endereco       , :cep            , :bairro         , :rg             , :dataemissao    , ' +
      ':cpf_cgc        , :titulo         , :seccao         , :zona           , :pis            , ' +
      ':filiacaopai    , :filiacaomae    , :conjuge        , :dataadmissao   , :banco          , ' +
      ':agencia        , :contacorrente  , :usointernolunav, :funcao         , :horario        , ' +
      ':datademissao   , :senha          ,:superfiltro     ,  :superagenda, :obs,  ' +
      ' :ativo, :inclui_data, :inclui_user, :altera_data, :altera_user,:exclui_data, :exclui_user)');
    Params[000].asString := DataModule1.tipo_tabela; //Edit_tipo_tabela.Text;
    Params[001].asInteger := StrToInt(Edit_codigo.Text);
    Params[002].asString := Edit_nome.Text;
    Params[003].asString := Edit_setor.Text;
    if length(sonumeros(Edit_datanascimento.Text)) = 0 then
      Params[004].clear
    else
      Params[004].asDate := StrToDate(Edit_datanascimento.Text);
    Params[005].asString := Edit_endereco.Text;
    Params[006].asString := sonumeros(Edit_cep.Text);
    Params[007].asString := Edit_bairro.Text;
    Params[008].asString := Edit_rg.Text;
    if length(sonumeros(Edit_dataemissao.Text)) = 0 then
      Params[009].clear
    else
      Params[009].asDate := StrToDate(Edit_dataemissao.Text);
    Params[010].asString := Edit_cpf_cgc.Text;
    Params[011].asString := Edit_titulo.Text;
    Params[012].asString := Edit_seccao.Text;
    Params[013].asString := Edit_zona.Text;
    Params[014].asString := Edit_pis.Text;
    Params[015].asString := Edit_filiacaopai.Text;
    Params[016].asString := Edit_filiacaomae.Text;
    Params[017].asString := Edit_conjuge.Text;
    if length(sonumeros(Edit_dataadmissao.Text)) = 0 then
      Params[018].clear
    else
      Params[018].asDate := StrToDate(Edit_dataadmissao.Text);
    Params[019].asString := Edit_banco.Text;
    Params[020].asString := Edit_agencia.Text;
    Params[021].asString := Edit_contacorrente.Text;
    Params[022].asString := Edit_usointernolunav.Text;
    Params[023].asString := Edit_funcao.Text;
    Params[024].asString := Edit_horario.Text;
    if length(sonumeros(Edit_datademissao.Text)) = 0 then
      Params[025].clear
    else
      Params[025].asDate := StrToDate(Edit_datademissao.Text);
    Params[026].asString := Edit_senha.Text;
    Params[027].AsString := '|' + SoNumeros(Edit_cpf_cgc.Text) +
      '|' + Edit_nome.Text +
      '|' + Edit_endereco.Text +
      '|' + Edit_bairro.Text +
      '|' + Edit_cep.Text +
      '|' + Edit_setor.Text +
      '|' + Edit_datanascimento.Text +
      '|' + Edit_rg.Text +
      '|' + Edit_datademissao.Text +
      '|' + Edit_titulo.Text +
      '|' + Edit_seccao.Text +
      '|' + Edit_zona.Text +
      '|' + SoNumeros(Edit_pis.Text) +
      '|' + Edit_filiacaopai.Text +
      '|' + Edit_filiacaomae.Text +
      '|' + Edit_conjuge.Text +
      '|' + Edit_dataadmissao.Text +
      '|' + Edit_funcao.Text +
      '|' + Edit_banco.Text +
      '|' + Edit_agencia.Text +
      '|' + Edit_contacorrente.Text +
      '|' + Edit_usointernolunav.Text +
      '|' + Edit_horario.Text +
      '|' + Edit_datademissao.Text;
    Params[28].AsString := '';
    Params[29].AsString := Edit_obs.Text;
    Params[30].AsString := 'SIM';
    if Length(w_dt_inc) = 0 then
    begin
      Params[31].clear;
      Params[32].Clear;
    end
    else
    begin
      Params[31].AsDateTime := StrToDateTime(w_dt_inc);
      Params[32].AsString := w_us_inc;
    end;
    if Tipo_Operacao = 'A' then
    begin
      Params[33].AsDateTime := StrToDateTime(w_dt_alt);
      Params[34].AsString := w_us_alt;
    end
    else
    begin
      Params[33].Clear;
      Params[34].Clear;
    end;
    Params[35].Clear;
    Params[36].Clear;
      // Geração do controle dos campos de registro de Inclusao e Alteração;
      // ==================================================================;
    ExecSql;
  end;

     // super_filtro;
  // end;


//  if Length(Edit_fone_01.Text) > 0 then
//  begin
//    btn_fone_salvar.Enabled := True;
//    btn_fone_salvarClick(self);
//    btn_fone_salvar.Enabled := False;
//  end;
  if (Tipo_operacao = 'I') or (Tipo_operacao = 'E') then
  begin
    if qry_log.RecordCount > 0 then
    begin
      DataModule1.y_desc.Clear;
      for x := 0 to QRY_LOG.FieldCount - 1 do
      begin
        DataModule1.y_desc.Lines.Add(qry_log.fields[x].FieldName + ' = ' +
          qry_log.Fields[x].AsString);
      end;
      if Tipo_operacao = 'I' then
        DataModule1.grava_log_form('Inclusão de funcionarios - ' +
          Edit_tipo_tabela.Text, 0, 0, 0, 0);
      if Tipo_operacao = 'E' then
        DataModule1.grava_log_form('Exclusão de funcionarios - ' +
          Edit_tipo_tabela.Text, 0, 0, 0, 0);
    end;
  end;
  if Tipo_operacao = 'A' then
  begin
    if qry_log.RecordCount > 0 then
    begin
      DataModule1.y_desc.Clear;
      for x := 0 to QRY_LOG.FieldCount - 1 do
      begin
        DataModule1.y_desc.Lines.Add(qry_log.fields[x].FieldName + ' = ' +
          qry_log.Fields[x].AsString);
      end;
      DataModule1.grava_log_form('Alteração.. de funcionarios - ' +
        Edit_tipo_tabela.Text, 0, 0, 0, 0);
    end;
  end;
   //============ Controle do Cancela ===================
  super_filtro; // carrega os campos para o super filtro
   //-----------------------------------------------------
  Btn_Sair.font.Color := ClBlack;
  Btn_Sair.Caption := 'Sai&r';
  Le_query;
  if (w_tipo_acao = 'A') or (W_tipo_acao = 'I') then
    qry_funcionarios.Locate('codigo', posicao, [loCaseInsensitive,
      loPartialKey]);

end;
//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Btn_SairClick(Sender: TObject);
begin
   //------------- IBR ------ encerramento do sistema -------------
   //============ Controle do Cancela ===================
  if Btn_Sair.caption = 'Cancelar' then
  begin
    Btn_Sair.Font.Color := ClBlack;
    carrega_imagens(1);
    Btn_Sair.Caption := 'Sai&r';
    btn_Incluir.Enabled := True;
    btn_Alterar.Enabled := True;
    btn_Excluir.Enabled := True;
    btn_Salvar.Enabled := False;
    btn_Sair.Enabled := True;
      //Desliga os edits
    Desliga_os_Campos;
    Exit;
  end;
  carrega_imagens(0);
  Close;
end;
//------------------------------------------------------------------------------

procedure TFrm_funcionarios.QRY_funcionariosAfterScroll(DataSet: TDataSet);
begin
   //------------- IBR ------ ativa o rolamento dos dados nos campos de tela-------------
   {if Tipo_Operacao = 'Z' then
   Begin
            //Desliga_os_Campos;
         Btn_Alterar.Enabled := True;
         Btn_Incluir.Enabled := True;
         Btn_Excluir.Enabled := True;

      Exit
   End
   else
   begin
   }

  if Tipo_Operacao = 'I' then EXIT;
  if Tipo_Operacao = 'A' then EXIT;
  // posicionamento dos telefones conform o funcionario
    with qry_funcionarios_fones do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios_fones where tipo_tabela=:t1 and codigo=:t2 order by fone');
    Params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Open;
  end;
  if qry_funcionarios_fones.RecordCount = 0 then
  begin
     Edit_fone_01.Text := '';
     Edit_descricao_01.Text := '';
  end
  else
  begin
     Edit_fone_01.Text := Formata_fone(qry_funcionarios_fonesfone.AsString);
     Edit_descricao_01.Text := qry_funcionarios_fonesdescricao.AsString;

  end;

  with qry_funcionarios_dependentes do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios_dependentes where tipo_tabela=:t1 and codigo=:t2 order by datanascimento,nome');
    Params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Open;
  end;




  if qry_funcionariosativo.AsString = 'SIM' then
    Btn_Excluir.Caption := '&Excluir'
  else
  Begin
    Btn_Excluir.Caption := 'Recu&perar';
    Btn_Excluir.Enabled := True;
    Btn_Incluir.Enabled := true;
  End;


  StatusBar1.Panels[0].Text := 'Inc:' + qry_funcionariosinclui_user.AsString
    + ' - ' +
    qry_funcionariosinclui_data.AsString;

  StatusBar1.Panels[1].Text := '';
  StatusBar1.Panels[2].Text := '';
  if Length(qry_funcionariosaltera_user.AsString) > 0 then
    StatusBar1.Panels[1].Text := 'Alt:' +
      qry_funcionariosaltera_user.AsString
      + ' - ' +
      qry_funcionariosaltera_data.AsString;
  if Length(qry_funcionariosexclui_user.AsString) > 0 then
    StatusBar1.Panels[2].Text := 'Exc:' +
      qry_funcionariosexclui_user.AsString
      + ' - ' +
      qry_funcionariosexclui_data.AsString;

  if Tipo_Operacao = 'I' then
    Exit;
  Carrega_query;
  if qry_funcionariosativo.Text = 'SIM' then
  begin
    suiImagePanel1.Color := clYellow;
    suiImagePanel2.Color := clYellow;
    suiImagePanel3.Color := clYellow;
    suiImagePanel4.Color := clYellow;
    Desliga_os_Campos;
    Btn_Alterar.Enabled := True;
    Btn_Incluir.Enabled := True;
    Btn_Excluir.Enabled := True;
      // dependentes
    btn_funcionarios_dependentes_incluir.Enabled := True;
    btn_funcionarios_dependentes_excluir.Enabled := True;
      // telefones
    btn_fone_incluir.Enabled := True;
    btn_fone_excluir.Enabled := True;
  end
  else
  begin
    suiImagePanel1.Color := form_menu.cor_do_form;
    suiImagePanel2.Color := form_menu.cor_do_form;
    suiImagePanel3.Color := form_menu.cor_do_form;
    suiImagePanel4.Color := form_menu.cor_do_form;
    suiImagePanel5.Color := form_menu.cor_do_form;
    suiImagePanel6.Color := form_menu.cor_do_form;
    DBText1.Color := form_menu.cor_do_form;
    DBText2.Color := form_menu.cor_do_form;
    DBText3.Color := form_menu.cor_do_form;

    //Desliga_os_Campos;
    Btn_Alterar.Enabled := False;
    Btn_Incluir.Enabled := True;
    btn_funcionarios_dependentes_incluir.Enabled := False;
    btn_funcionarios_dependentes_excluir.Enabled := True;

      // telefones
    btn_fone_incluir.Enabled := True;
    btn_fone_excluir.Enabled := False;
  end;
  if qry_funcionariosativo.AsString = 'NAO' then
  begin
      {Btn_Incluir.Enabled := False;
      Btn_Alterar.Enabled := False;
      Btn_Excluir.Enabled := False;
      Btn_Salvar.Enabled := False;
      Btn_Sair.Enabled := True;
      }
    suiImagePanel1.Color := $002EB9FC;
    suiImagePanel2.Color := $002EB9FC;
    suiImagePanel3.Color := $002EB9FC;
    suiImagePanel4.Color := $002EB9FC;
    suiImagePanel5.Color := $002EB9FC;
  end
  else
  begin
      {Btn_Incluir.Enabled := True;
      Btn_Alterar.Enabled := True;
      Btn_Excluir.Enabled := True;
      Btn_Salvar.Enabled := False;
      }

    controle_permissoes;

    Btn_Sair.Enabled := True;
    suiImagePanel1.Color := form_menu.cor_do_form;
    suiImagePanel2.Color := form_menu.cor_do_form;
    suiImagePanel3.Color := form_menu.cor_do_form;
    suiImagePanel4.Color := form_menu.cor_do_form;
    suiImagePanel5.Color := form_menu.cor_do_form;
    suiImagePanel6.Color := form_menu.cor_do_form;
    DBText1.Color := form_menu.cor_do_form;
    DBText2.Color := form_menu.cor_do_form;
    DBText3.Color := form_menu.cor_do_form;

  end;

   // carga do cadastro dependentes
   //==============================
   //
  with qry_funcionarios_fones do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios_fones where tipo_tabela=:t1 and codigo=:t2 order by fone');
    Params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Open;
  end;

  with qry_funcionarios_dependentes do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios_dependentes where tipo_tabela=:t1 and codigo=:t2 order by datanascimento,nome');
    Params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Open;
  end;

   //end;
  Label_Registros.Caption := inttostr(qry_funcionarios.recno) + '/' +
    inttostr(qry_funcionarios.RecordCount);
  Application.ProcessMessages;
end;
//------------------------------------------------------------------------------

procedure tfrm_funcionarios.carrega_telefones;
begin
  with qry_funcionarios_fones do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios_fones where tipo_tabela=:t1 and codigo=:t2 order by fone');
    Params[0].AsString := Edit_tipo_tabela.Text;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Open;
  end;
  if qry_funcionarios_fones.RecordCount > 0 then
  begin
    qry_funcionarios_fones.First;
    Edit_fone_01.Text := qry_funcionarios_fonesfone.AsString;
    Edit_descricao_01.Text := qry_funcionarios_fonesdescricao.AsString;

  end;
end;

procedure TFrm_funcionarios.FormClick(Sender: TObject);
begin
   //------------- IBR ------ trav a aplicacao para a frente-------------
  SetForegroundWindow(handle);
  ;
end;
//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Edit_PosicionaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //--- Localiza  -----------------------------------------------------------------R
  case Radio_Posiciona.ItemIndex of
    0: qry_funcionarios.Locate('tipo_tabela', edit_Posiciona.Text,
        [loCaseInsensitive, loPartialKey]);
    1: qry_funcionarios.Locate('codigo', edit_Posiciona.Text,
        [loCaseInsensitive, loPartialKey]);
    2: qry_funcionarios.Locate('nome', edit_Posiciona.Text,
        [loCaseInsensitive, loPartialKey]);
    3: qry_funcionarios.Locate('setor', edit_Posiciona.Text,
        [loCaseInsensitive, loPartialKey]);
  end;
end;

//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Radio_FiltraClick(Sender: TObject);
begin
  edit_Filtra.Clear;
  edit_Filtra.Visible := true;
  edit_Filtra.SetFocus;
end;

//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Radio_PosicionaClick(Sender: TObject);
begin
  edit_Posiciona.Clear;
  edit_Posiciona.Visible := true;
  edit_Posiciona.SetFocus;
  Le_query;
end;

//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Btn_FiltraClick(Sender: TObject);
begin
  Le_query;
end;

//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Btn_Todo_CadastroClick(Sender: TObject);
begin
  Radio_Posiciona.ItemIndex := -1;
  Radio_Filtra.ItemIndex := -1;
  edit_Posiciona.Clear;
  edit_Filtra.Clear;
  edit_Posiciona.Visible := false;
  edit_Filtra.Visible := false;
  Le_query;
end;

//------------------------------------------------------------------------------

procedure TFrm_funcionarios.Edit_FiltraExit(Sender: TObject);
begin
   // itamar
  Btn_FiltraClick(Application);
end;
//------------------------------------------------------------------------------
//============================== FormKeyPress ===============================

procedure TFrm_funcionarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if desliga_enter = True then
    Exit;
  if Key = #13 then
    if not (ActiveControl is TDBGrid) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else
    begin
      if (ActiveControl is TDBGrid) then
        with TDBGrid(ActiveControl) do
          if selectedindex < (fieldcount - 1) then
            selectedindex := selectedindex + 1
          else
            selectedindex := 0;
    end;
end;

procedure TFrm_funcionarios.Edit_tipo_tabelaExit(Sender: TObject);
begin
  with QRY_funcionarios do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios where tipo_tabela=:T1 order by codigo');
    Params[0].AsString := Edit_tipo_tabela.Text;
    Open;
  end;
  if Tipo_Operacao = 'I' then
  begin
    if QRY_funcionarios.RecordCount = 0 then
      Edit_codigo.Text := '1'
    else
      Edit_codigo.Text := IntToStr(qry_funcionarioscodigo.AsInteger + 1);

  end;
end;

procedure TFrm_funcionarios.Edit_cepEnter(Sender: TObject);
begin
  Edit_cep.Text := SoNumeros(Edit_cep.Text);
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_cepExit(Sender: TObject);
begin
  muda_na_saida(Sender, 'I');
  Edit_cep.Text := formata_cep(Edit_cep.Text);
end;

procedure TFrm_funcionarios.Edit_cpf_cgcEnter(Sender: TObject);
begin
   //Edit_cpf_cgc.Text := SoNumeros(Edit_cpf_cgc.Text);
  muda_na_entrada(Sender, 'I');
  if Length(SoNumeros(Edit_cpf_cgc.Text)) = 0 then
    Edit_cpf_cgc.Clear;
end;

procedure TFrm_funcionarios.Edit_cpf_cgcExit(Sender: TObject);
var
  l: string;
begin
  if Length(Edit_cpf_cgc.Text) = 0 then
    Exit;
  if Length(SoNumeros(Edit_cpf_cgc.Text)) > 11 then
  begin
    if cgc(SoNumeros(Edit_cpf_cgc.Text)) = False then
    begin
      ShowMessage('CPF Invalido ou Digito Incorreto!!!');

      Edit_cpf_cgc.SetFocus;
      Exit;
    end;
  end;
  if Length(Edit_cpf_cgc.Text) < 12 then
  begin
    if cpf(SoNumeros(Edit_cpf_cgc.Text)) = False then
    begin
      ShowMessage('CPF Invalido ou Digito Incorreto!!!');

      Edit_cpf_cgc.SetFocus;
      Exit;
    end;
      //L := formata_cpf(Edit_cpf_cgc.Text);
      //Edit_cpf_cgc.Clear;
      //Edit_cpf_cgc.Text := L;
      //Edit_cpf_cgc.Text := formata_cpf(Edit_cpf_cgc.Text);

      //Application.ProcessMessages;
  end;
  if cpf(Edit_cpf_cgc.Text) = False then
  begin
    if cgc(SoNumeros(Edit_cpf_cgc.Text)) = False then
    begin
      ShowMessage('CPF Invalido ou Digito Incorreto!!!');

      Edit_cpf_cgc.SetFocus;
      Exit;
    end;

  end;
   // busca cpf
  with QRY_rede do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios where cpf_cgc=:c1 order by dataadmissao');
    Params[0].AsString := SoNumeros(Edit_cpf_cgc.Text);
    Open;
  end;
  if Tipo_Operacao = 'I' then
  begin
    if QRY_rede.RecordCount > 0 then
    begin
         //QRY_rede.Last; // coloca os dados no final do arquivo
         //====================================================
      if Length(SoNumeros(qry_rededatademissao.AsString)) > 0 then
      begin
            // joga os dados nos campos
        ShowMessage('RECUPERANDO DADOS! Funcionario Desligado!!!');

        suiImagePanel1.Color := form_menu.cor_do_form;
        suiImagePanel2.Color := form_menu.cor_do_form;
        suiImagePanel3.Color := form_menu.cor_do_form;
        suiImagePanel4.Color := form_menu.cor_do_form;
        suiImagePanel5.Color := form_menu.cor_do_form;
        suiImagePanel6.Color := form_menu.cor_do_form;
        DBText1.Color := form_menu.cor_do_form;
        DBText2.Color := form_menu.cor_do_form;
        DBText3.Color := form_menu.cor_do_form;

        edit_tipo_tabela.text := qry_redetipo_tabela.AsString;
            //edit_codigo.text := qry_redecodigo.AsString;
        edit_nome.text := qry_redenome.AsString;
        edit_setor.text := qry_redesetor.AsString;
        edit_datanascimento.text := qry_rededatanascimento.AsString;
        edit_endereco.text := qry_redeendereco.AsString;
        edit_cep.text := qry_redecep.AsString;
        edit_bairro.text := qry_redebairro.AsString;
        edit_rg.text := qry_rederg.AsString;
        edit_dataemissao.text := qry_rededataemissao.AsString;
        edit_cpf_cgc.text := qry_redecpf_cgc.AsString;
        edit_titulo.text := qry_redetitulo.AsString;
        edit_seccao.text := qry_redeseccao.AsString;
        edit_zona.text := qry_redezona.AsString;
        edit_pis.text := qry_redepis.AsString;
        edit_filiacaopai.text := qry_redefiliacaopai.AsString;
        edit_filiacaomae.text := qry_redefiliacaomae.AsString;
        edit_conjuge.text := qry_redeconjuge.AsString;
        edit_dataadmissao.text := qry_rededataadmissao.AsString;
        edit_banco.text := qry_redebanco.AsString;
        edit_agencia.text := qry_redeagencia.AsString;
        edit_contacorrente.text := qry_redecontacorrente.AsString;
        edit_usointernolunav.text := qry_redeusointernolunav.AsString;
        if Length(SoNumeros(qry_redefuncao.AsString)) = 0 then
          Edit_funcao.Clear
        else
          edit_funcao.text := qry_redefuncao.AsString;
        if Length(Edit_horario.Text) < 1 then
          Edit_horario.Text := ''
        else
          edit_horario.text := qry_redehorario.AsString;

        if Length(SoNumeros(qry_rededatademissao.AsString)) = 0 then
          edit_datademissao.clear
        else
          edit_datademissao.Clear; //text := qry_rededatademissao.AsString;
        edit_senha.text := qry_redesenha.AsString;
        Edit_superfiltro.Text := qry_redesuperfiltro.AsString;
        Edit_superagenda.Text := qry_redesuperagenda.AsString;
        Edit_obs.Text := qry_redeobs.AsString;
        carrega_telefones;

      end
      else
      begin
            // coloca os dados em edição nao
            // permitindo a duplicação do registro
        Tipo_Operacao := 'A';
        ShowMessage('Funcionario Ativo, Entrando em Modo de EDIÇÃO!!!');

        edit_tipo_tabela.text := qry_redetipo_tabela.AsString;
        edit_codigo.text := qry_redecodigo.AsString;
        edit_nome.text := qry_redenome.AsString;
        edit_setor.text := qry_redesetor.AsString;
        edit_datanascimento.text := qry_rededatanascimento.AsString;
        edit_endereco.text := qry_redeendereco.AsString;
        edit_cep.text := qry_redecep.AsString;
        edit_bairro.text := qry_redebairro.AsString;
        edit_rg.text := qry_rederg.AsString;
        edit_dataemissao.text := qry_rededataemissao.AsString;
        edit_cpf_cgc.text := qry_redecpf_cgc.AsString;
        edit_titulo.text := qry_redetitulo.AsString;
        edit_seccao.text := qry_redeseccao.AsString;
        edit_zona.text := qry_redezona.AsString;
        edit_pis.text := qry_redepis.AsString;
        edit_filiacaopai.text := qry_redefiliacaopai.AsString;
        edit_filiacaomae.text := qry_redefiliacaomae.AsString;
        edit_conjuge.text := qry_redeconjuge.AsString;
        edit_dataadmissao.text := qry_rededataadmissao.AsString;
        edit_banco.text := qry_redebanco.AsString;
        edit_agencia.text := qry_redeagencia.AsString;
        edit_contacorrente.text := qry_redecontacorrente.AsString;
        edit_usointernolunav.text := qry_redeusointernolunav.AsString;
        if Length(SoNumeros(qry_redefuncao.AsString)) = 0 then
          Edit_funcao.Clear
        else
          edit_funcao.text := qry_redefuncao.AsString;
        if Length(Edit_horario.Text) < 1 then
          Edit_horario.Text := ''
        else
          edit_horario.text := qry_redehorario.AsString;

        if Length(SoNumeros(qry_rededatademissao.AsString)) = 0 then
          edit_datademissao.clear
        else
          edit_datademissao.text := qry_rededatademissao.AsString;
        edit_senha.text := qry_redesenha.AsString;
        Edit_superfiltro.Text := qry_redesuperfiltro.AsString;
        Edit_superagenda.Text := qry_redesuperagenda.AsString;
        Edit_obs.Text := qry_redeobs.AsString;
        carrega_telefones;

      end;
    end;
  end;
  muda_na_saida(Sender, 'I');
  Edit_cpf_cgc.Text := formata_cpf(Edit_cpf_cgc.Text);

end;

procedure TFrm_funcionarios.Edit_cpf_cgcChange(Sender: TObject);
begin
  if Length(SoNumeros(Edit_cpf_cgc.Text)) = 0 then
    Edit_cpf_cgc.Clear;
  Edit_cpf_cgc.Text := SoNumeros(Edit_cpf_cgc.Text);
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_pisEnter(Sender: TObject);
begin
  Edit_pis.Text := SoNumeros(Edit_pis.Text);
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_pisExit(Sender: TObject);
begin
  if vpis(Edit_pis.Text) = False then
  begin
    Edit_pis.SetFocus;
    Exit;
  end;
   //Edit_pis.Text := formata_pis(Edit_pis.Text):
end;

procedure TFrm_funcionarios.Edit_conjugeExit(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
  Application.ProcessMessages;
  Edit_dataadmissao.SetFocus;
  desliga_enter := False;
end;

procedure TFrm_funcionarios.Edit_horarioExit(Sender: TObject);
begin
  Btn_Salvar.SetFocus;
end;

procedure TFrm_funcionarios.Edit_conjugeEnter(Sender: TObject);
begin
  desliga_enter := True;
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_dataadmissaoEnter(Sender: TObject);
begin
  desliga_enter := False;
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_conjugeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TFrm_funcionarios.btn_fone_incluirClick(Sender: TObject);
begin
   // fecha os outros controles
  Btn_Incluir.Enabled := False;
  Btn_Alterar.Enabled := False;
  Btn_Excluir.Enabled := False;
  Btn_Salvar.Enabled := False;
  Btn_Sair.Enabled := True;

   // segunda linha de botoes
  btn_fone_incluir.Enabled := False;
  btn_fone_excluir.Enabled := False;
  btn_fone_salvar.Enabled := True;
  btn_fone_fechar.Enabled := True;

   // linha de edits
  Edit_fones_telefone.Enabled := True;
  Edit_fones_descricao.Enabled := True;
  Edit_fones_telefone.Text := '';
  Edit_fones_descricao.Text := '';
  Edit_fones_telefone.SetFocus;

end;

procedure TFrm_funcionarios.btn_fone_salvarClick(Sender: TObject);
begin
   // pesrsiste os campos
  if Length(SoNumeros(Edit_fones_telefone.Text)) < 5 then
  begin
    ShowMessage('Telefone Muito Curto!!!');
    Edit_fones_telefone.SetFocus;
  end;
  if Length((Edit_fones_descricao.Text)) < 3 then
  begin
    ShowMessage('Descrição Muito Curta!!!');
    Edit_fones_descricao.SetFocus;
  end;

  with qry_funcionarios_fones do
  begin
    sql.Clear;
    sql.Add('Replace into funcionarios_fones (tipo_tabela, codigo, fone, descricao)');
    sql.Add('Values (:tipo_tabela, :codigo, :fone, :descricao)');
    Params[0].AsString := Edit_tipo_tabela.Text;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Params[2].AsString := Edit_fones_telefone.Text;
    Params[3].AsString := Edit_fones_descricao.Text;
    ExecSQL;
    sql.Clear;
    sql.Add('Select * from funcionarios_fones where tipo_tabela=:t1 and codigo=:t2 order by fone');
    Params[0].AsString := Edit_tipo_tabela.Text;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Open;
  end;
  super_filtro;
   // fecha os outros controles
  Btn_Incluir.Enabled := True;
  Btn_Alterar.Enabled := True;
  Btn_Excluir.Enabled := True;
  Btn_Salvar.Enabled := False;
  Btn_Sair.Enabled := True;

   // segunda linha de botoes
  btn_fone_incluir.Enabled := True;
  btn_fone_excluir.Enabled := True;
  btn_fone_salvar.Enabled := False;
  btn_fone_fechar.Enabled := True;
  btn_fone_incluir.SetFocus;

end;

procedure TFrm_funcionarios.super_filtro;
var
  L0, L1, L2, L3: string;
begin
  l0 := '|' + SoNumeros(Edit_cpf_cgc.Text) +
    '|' + Edit_nome.Text;

  l1 := '|' + SoNumeros(Edit_cpf_cgc.Text) +
    '|' + Edit_nome.Text +
    '|' + Edit_endereco.Text +
    '|' + Edit_bairro.Text +
    '|' + Edit_cep.Text +
    '|' + Edit_setor.Text +
    '|' + Edit_datanascimento.Text +
    '|' + Edit_rg.Text +
    '|' + Edit_datademissao.Text +
    '|' + Edit_titulo.Text +
    '|' + Edit_seccao.Text +
    '|' + Edit_zona.Text +
    '|' + SoNumeros(Edit_pis.Text) +
    '|' + Edit_filiacaopai.Text +
    '|' + Edit_filiacaomae.Text +
    '|' + Edit_conjuge.Text +
    '|' + Edit_dataadmissao.Text +
    '|' + Edit_funcao.Text +
    '|' + Edit_banco.Text +
    '|' + Edit_agencia.Text +
    '|' + Edit_contacorrente.Text +
    '|' + Edit_usointernolunav.Text +
    '|' + Edit_horario.Text +
    '|' + Edit_datademissao.Text;

  l2 := '';
  qry_funcionarios_fones.First;
  while not qry_funcionarios_fones.Eof do
  begin
    l2 := L2 + '[' + SoNumeros(qry_funcionarios_fonesfone.AsString) + ']' +
      ' [' + qry_funcionarios_fonesdescricao.AsString + ']';
    qry_funcionarios_fones.Next;
  end;
  l3 := '';
  while not qry_funcionarios_dependentes.Eof do
  begin
    l3 := L3 + '{' + qry_funcionarios_dependentesdatanascimento.AsString + '}'
      +
      ' {' + qry_funcionarios_dependentesnome.AsString + '}' +
      ' {' + qry_funcionarios_dependentesparentesco.AsString + '}';
    qry_funcionarios_dependentes.Next;
  end;

  with QRY_rede do
  begin
      // super filtro
    sql.Clear;
    sql.Add('Update funcionarios set superfiltro=:f1 where tipo_tabela=:f2 and codigo=:f3');
    Params[0].AsString := L1 + L2 + l3;
    Params[1].AsString := DataModule1.tipo_tabela;
    Params[2].AsInteger := strtoint(edit_codigo.Text);
    ExecSQL;
      // super agenda
    sql.Clear;
    sql.Add('Update funcionarios set superagenda=:f1 where tipo_tabela=:f2 and codigo=:f3');
    Params[0].AsString := L0 + L2;
    Params[1].AsString := DataModule1.tipo_tabela;
    Params[2].AsInteger := strtoint(edit_codigo.Text);
    ExecSQL;

  end;

end;

procedure TFrm_funcionarios.t(Sender: TObject);
begin
  Edit_fones_telefone.Text := Formata_fone(Edit_fones_telefone.Text);
  muda_na_saida(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_fones_telefoneEnter(Sender: TObject);
begin
  Edit_fones_telefone.Text := SoNumeros(Edit_fones_telefone.Text);
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_nomeExit(Sender: TObject);
begin
  muda_na_saida(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_nomeEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_enderecoEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_bairroEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
  Edit_bairro.DroppedDown := True;
end;

procedure TFrm_funcionarios.Edit_setorEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_datanascimentoEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_rgEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_dataemissaoEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_tituloEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_seccaoEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_zonaEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_filiacaopaiEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_filiacaomaeEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_funcaoEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_bancoEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_agenciaEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_contacorrenteEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_usointernolunavEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_horarioEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_datademissaoEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_dataadmissaoExit(Sender: TObject);
begin
  muda_na_saida(Sender, 'I');
end;

procedure TFrm_funcionarios.qry_funcionarios_fonesAfterScroll(
  DataSet: TDataSet);
begin
  Edit_fones_telefone.Text :=
    Formata_fone(qry_funcionarios_fonesfone.AsString);
  Edit_fones_descricao.Text := qry_funcionarios_fonesdescricao.AsString;
end;

procedure TFrm_funcionarios.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ZebrarDbGrid(DTS_funcionarios_fones, DBGrid2, State, Rect, Column);
end;

procedure TFrm_funcionarios.btn_fone_excluirClick(Sender: TObject);
begin
   // pede confirmação
  if MessageDlg('Tem Certeza Que deseja Excluir Este Registro?',
    mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    with qry_funcionarios_fones do
    begin
      sql.clear;
      sql.add('Delete from funcionarios_fones  where tipo_tabela=:T1 AND' +
        ' codigo =:codigo ' +
        ' AND  fone=:f1 ' +
        ' and descricao=:d1');
      Params[0].AsString := DataModule1.tipo_tabela;
      Params[1].AsInteger := strtoint(Edit_codigo.Text);
      Params[2].AsString := Edit_fones_telefone.Text;
      Params[3].AsString := Edit_fones_descricao.Text;
      ExecSql;
    end;
    carrega_telefones;
    super_filtro;
  end;
end;

procedure TFrm_funcionarios.btn_funcionarios_dependentes_incluirClick(Sender:
  TObject);
begin
   // fecha os outros controles
  Btn_Incluir.Enabled := False;
  Btn_Alterar.Enabled := False;
  Btn_Excluir.Enabled := False;
  Btn_Salvar.Enabled := False;
  Btn_Sair.Enabled := True;

   // segunda linha de botoes
  btn_funcionarios_dependentes_incluir.Enabled := False;
  btn_funcionarios_dependentes_excluir.Enabled := False;
  btn_funcionarios_dependentes_salvar.Enabled := True;
  btn_funcionarios_dependentes_fechar.Enabled := True;

   // linha de edits
  edit_dependentes_datanascimento.Enabled := True;
  edit_dependentes_nome.Enabled := True;
  edit_dependentes_dependente.Enabled := True;
  edit_dependentes_datanascimento.Text := '';
  edit_dependentes_nome.Text := '';
  edit_dependentes_dependente.Text := '';
  edit_dependentes_datanascimento.SetFocus;

end;

procedure TFrm_funcionarios.btn_funcionarios_dependentes_salvarClick(
  Sender: TObject);
begin
  with qry_funcionarios_dependentes do
  begin
    sql.Clear;
    sql.Add('Replace Into Funcionarios_dependentes (tipo_tabela, codigo, datanascimento, nome,parentesco )');
    sql.Add('Values (:tipo_tabela, :codigo, :datanascimento, :nome, :parentesco )');
    Params[0].AsString := Edit_tipo_tabela.Text;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Params[2].asdatetime :=
      strtodatetime(edit_dependentes_datanascimento.Text);
    Params[3].AsString := edit_dependentes_nome.Text;
    Params[4].AsString := edit_dependentes_dependente.Text;
    ExecSQL;
    sql.Clear;
    sql.Add('Select * from funcionarios_dependentes where tipo_tabela=:t1 and codigo=:t2 order by datanascimento,nome');
    Params[0].AsString := Edit_tipo_tabela.Text;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Open;
  end;

  super_filtro;

   // segunda linha de botoes
  btn_funcionarios_dependentes_incluir.Enabled := True;
  btn_funcionarios_dependentes_excluir.Enabled := True;
  btn_funcionarios_dependentes_salvar.Enabled := False;
  btn_funcionarios_dependentes_fechar.Enabled := True;

end;

procedure TFrm_funcionarios.edit_dependentes_datanascimentoEnter(
  Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.edit_dependentes_nomeEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.edit_dependentes_dependenteEnter(
  Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
  edit_dependentes_dependente.DroppedDown := True;
end;

procedure TFrm_funcionarios.edit_dependentes_dependenteExit(
  Sender: TObject);
begin
  muda_na_saida(Sender, 'I');
  edit_dependentes_dependente.DroppedDown := False;
end;

procedure TFrm_funcionarios.edit_dependentes_nomeExit(Sender: TObject);
begin
  edit_dependentes_dependente.DroppedDown := False;
  muda_na_saida(Sender, 'I');
end;

procedure TFrm_funcionarios.edit_dependentes_datanascimentoExit(
  Sender: TObject);
begin
  edit_dependentes_dependente.DroppedDown := False;
end;

procedure TFrm_funcionarios.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ZebrarDbGrid(dts_funcionarios_dependentes, DBGrid3, State, Rect, Column);
end;

procedure TFrm_funcionarios.qry_funcionarios_dependentesAfterScroll(
  DataSet: TDataSet);
begin
  edit_dependentes_datanascimento.Text :=
    qry_funcionarios_dependentesdatanascimento.AsString;
  edit_dependentes_nome.Text := qry_funcionarios_dependentesnome.AsString;
  edit_dependentes_dependente.Text :=
    qry_funcionarios_dependentesparentesco.AsString;
end;

procedure TFrm_funcionarios.qry_funcionarios_dependentesCalcFields(
  DataSet: TDataSet);
begin
  qry_funcionarios_dependentesidade.AsCurrency :=
    idade(qry_funcionarios_dependentesdatanascimento.asstring,
    FormatDateTime('dd/mm/yyyy', date));
end;

procedure TFrm_funcionarios.Edit_obsExit(Sender: TObject);
begin
  muda_na_saida(Sender, 'I');
  Btn_Salvar.SetFocus;
end;

procedure TFrm_funcionarios.Edit_obsEnter(Sender: TObject);
begin
  muda_na_entrada(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_funcaoExit(Sender: TObject);
begin
  muda_na_saida(Sender, 'I');
end;

procedure TFrm_funcionarios.Edit_cpf_cgcKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Edit_nome.SetFocus;
end;

procedure TFrm_funcionarios.btn_relatorioClick(Sender: TObject);
begin
  case Radio_ordem.ItemIndex of
    0:
      begin
        with QRY_funcionarios do
        begin
          sql.Clear;
          sql.Add('Select * from funcionarios where tipo_tabela=:t1 order by CODIGO');
          params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
          Open;
        end;
        qr_periodo_data.Caption := 'Ordem de CÓDIGO';
      end;
    1:
      begin
        with QRY_funcionarios do
        begin
          sql.Clear;
          sql.Add('Select * from funcionarios where tipo_tabela=:t1 order by nome');
          params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
          Open;
        end;
        qr_periodo_data.Caption := 'Ordem de ALFABETICO';
      end;
  end;
  QR_titulo.Caption := 'RELAÇÃO DE ' + form_menu.ORIGEM_CHAMADA_CADASTRO;
  case radio_destino.ItemIndex of
    0: QuickRep1.Preview;
    1: QuickRep1.Print;
  end;

end;

procedure TFrm_funcionarios.controle_permissoes;
begin
  Tipo_Operacao := 'Z';
  with DataModule1.qry_formularios_usuarios do
  begin
    sql.Clear;
    sql.Add('Select * from z_formularios_usiarios where sistema=:s1 and formulario=:s2 and usuario=:s3');
    Params[0].AsString := DataModule1.wy_nome_sistema;
    Params[1].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
    Params[2].AsString := DataModule1.c_Pub_User;
    Open;
  end;

  if DataModule1.qry_formularios_usuarios.RecordCount > 0 then
  begin
    if DataModule1.qry_formularios_usuariosformulario_acesso.AsString = 'NAO'
      then
    begin
      BTN_Todo_Cadastro.Enabled := False;
      Btn_Filtra.Enabled := False;
      Radio_Posiciona.Enabled := False;
      Radio_Filtra.Enabled := False;
      with QRY_funcionarios do
      begin
        sql.Clear;
        sql.Add('Select * from funcionarios where 0=1');
        Open;
      end;
      DBNavigator1.Enabled := False;
      btn_funcionarios_dependentes_incluir.Enabled := False;
      btn_funcionarios_dependentes_excluir.Enabled := False;
      btn_funcionarios_dependentes_salvar.Enabled := False;

      btn_fone_incluir.Enabled := False;
      btn_fone_excluir.Enabled := False;
      btn_fone_salvar.Enabled := False;

      btn_relatorio.Enabled := False;
    end
    else
    begin
      if DataModule1.qry_formularios_usuariosincluir.AsString = 'SIM' then
        Btn_Incluir.Enabled := True
      else
        Btn_Incluir.Enabled := False;

      if DataModule1.qry_formularios_usuariosalterar.AsString = 'SIM' then
        Btn_Alterar.Enabled := True
      else
        Btn_Alterar.Enabled := False;

      if DataModule1.qry_formularios_usuariosexcluir.AsString = 'SIM' then
        //Btn_Excluir.Enabled := True
      else
        //Btn_Excluir.Enabled := False;
         // botoes de relatorios
      if DataModule1.qry_formularios_usuariosrelatorios.AsString = 'SIM' then
        btn_relatorio.Enabled := True
      else
        btn_relatorio.Enabled := False;
    end;
  end;
end;

procedure TFrm_funcionarios.FormActivate(Sender: TObject);
var
  tcs_color: TColorScheme;
begin
   //Desligas os edits
  Tipo_Operacao := 'Z';
  DataModule1.cadastra_formulario(Datamodule1.wy_nome_sistema,
    wy_nome_form_local);
  controle_permissoes;


   {suiImagePanel1.Color := DataModule1.cor_form;
   suiImagePanel2.Color := DataModule1.cor_form;
   suiImagePanel3.Color := DataModule1.cor_form;
   suiImagePanel4.Color := DataModule1.cor_form;
   suiImagePanel5.Color := DataModule1.cor_form;
   }
  DecimalSeparator := ',';
  ShortDateFormat := 'dd/mm/yyyy';
  QuickRep1.Left := 1000;
  QuickRep2.Left := 1000;

  DataModule1.tipo_tabela := form_menu.ORIGEM_CHAMADA_CADASTRO;
  Desliga_os_Campos;
  PageControl1.activepage := Tabsheet1;
  case datamodule1.wy_estilo of
    0: tcs_color := csDesert;
    1: tcs_color := csGrass;
    2: tcs_color := csRose;
    3: tcs_color := csSilver;
    4: tcs_color := csSky;
    5: tcs_color := csSun;
    6: tcs_color := csNeoDesert;
    7: tcs_color := csNeoGrass;
    8: tcs_color := csNeoRose;
    9: tcs_color := csNeoSilver;
    10: tcs_color := csNeoSky;
    11: tcs_color := csNeoSun;
  end;
   //============================== 16/11/08====================================
   // forca a ativaçãoo das queryes
   //============================== 14/11/08====================================
  Qry_funcionarios.Active := True;
  with QRY_funcionarios do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios where tipo_tabela=:t1 order by codigo');
    Params[0].AsString := DataModule1.tipo_tabela;
    Open;
  end;

  QRY_log.Active := True;
  QRY_rede.Active := True;
  QRY_funcionarios.Last;
   // posicinamento da janela
  with DataModule1.qry_memoria_janela do
  begin
    sql.Clear;
    sql.Add('Select * from memoria_janela where w_janela = :w1 and w_maquina = :w2 ');
    Params[0].AsString := 'Frm_funcionarios';
    Params[1].AsString := DataModule1.c_Pub_User; //ok
    Open;
  end;
  if DataModule1.qry_memoria_janela.RecordCount > 0 then
  begin
    Self.Top := DataModule1.qry_memoria_janelaw_top.AsInteger;
    Self.Left := DataModule1.qry_memoria_janelaw_lef.AsInteger;
    Self.Height := DataModule1.qry_memoria_janelaw_siz.AsInteger;
    Self.Width := DataModule1.qry_memoria_janelaw_wid.AsInteger;
  end;
   // carga basicas
  with qry_tipo_tabelas do
  begin
    sql.Clear;
    sql.Add('Select * from tipo_tabelas order by tipo_tabelas');
    Open;
  end;
  Edit_tipo_tabela.Clear;
  qry_tipo_tabelas.First;
  while not qry_tipo_tabelas.Eof do
  begin
    Edit_tipo_tabela.Items.Add(qry_tipo_tabelastipo_tabelas.AsString);
    qry_tipo_tabelas.Next;
  end;

   // carga setores
  carrega_setores;

  if Length(SoNumeros(Edit_datademissao.Text)) = 0 then
    if qry_funcionariosativo.AsString = 'SIM' then
      Btn_incluir.SetFocus;

  Application.ProcessMessages;
   {
   //Bloco do Create Table

    Sql.Clear;
    Sql.add('Create if not exists Table funcionarios('+
           'tipo_tabela     : String(16)';
           'codigo          : Integer(4)';
           'nome            : String(51)';
           'setor           : String(31)';
           'datanascimento  : Date(4)';
           'endereco        : String(51)';
           'cep             : String(10)';
           'bairro          : String(31)';
           'rg              : String(16)';
           'dataemissao     : Date(4)';
           'cpf_cgc         : String(19)';
           'titulo          : String(16)';
           'seccao          : String(6)';
           'zona            : String(6)';
           'pis             : String(15)';
           'filiacaopai     : String(51)';
           'filiacaomae     : String(51)';
           'conjuge         : String(51)';
           'dataadmissao    : Date(4)';
           'banco           : String(16)';
           'agencia         : String(6)';
           'contacorrente   : String(13)';
           'usointernolunav : String(31)';
           'funcao          : String(31)';
           'horario         : String(31)';
           'datademissao    : Date(4)';
           'senha           : String(21)';
    ExecSql;
   }
  //========================= Carrega a query Log====================================
  w_Frm_funcionarios.Caption := 'Cadastro ' +
    form_menu.ORIGEM_CHAMADA_CADASTRO;

end;

procedure TFrm_funcionarios.FormCreate(Sender: TObject);
begin
  wy_nome_form_local := form_menu.ORIGEM_CHAMADA_CADASTRO;
  w_Frm_funcionarios.Caption := 'Cadastro ' +
    form_menu.ORIGEM_CHAMADA_CADASTRO;
  TabSheet2.TabVisible := False;
  TabSheet4.TabVisible := False;
  suiImagePanel1.Color := form_menu.cor_do_form;
  suiImagePanel2.Color := form_menu.cor_do_form;
  suiImagePanel3.Color := form_menu.cor_do_form;
  suiImagePanel4.Color := form_menu.cor_do_form;
  suiImagePanel5.Color := form_menu.cor_do_form;
  suiImagePanel6.Color := form_menu.cor_do_form;
  DBText1.Color := form_menu.cor_do_form;
  DBText2.Color := form_menu.cor_do_form;
  DBText3.Color := form_menu.cor_do_form;

end;

procedure TFrm_funcionarios.Button1Click(Sender: TObject);
begin
  while not qry_teste.Eof do
  begin
    if length(SoNumeros(qry_testea.AsString)) > 0 then
    begin
      with QRY_funcionarios do
      begin
        sql.Clear;
        sql.Add('replace into funcionarios(tipo_tabela, codigo, rg, nome, endereco)');
        sql.Add('Values (:tipo_tabela, :codigo, :rg, :nome, :endereco)');
        Params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
        Params[1].AsInteger := strtoint(SoNumeros(qry_testea.AsString));
        if Length(SoNumeros(qry_tested.AsString)) > 0 then
          Params[2].AsString := qry_tested.AsString
        else
          Params[2].AsString := '222222';
        Params[3].AsString := qry_testec.AsString;
        Params[4].AsString := qry_testee.AsString;
        ExecSQL;

      end;

    end;
    qry_teste.Next;
  end;

end;

procedure TFrm_funcionarios.BitBtn1Click(Sender: TObject);
var
  x: Integer;
begin
  with QRY_log do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios order by codigo');
    Open;
  end;
  PageControl1.ActivePage := TabSheet1;
  QRY_log.First;
   //while not QRY_log.Eof do
  for x := 1 to 1900 do
  begin
    with QRY_funcionarios do
    begin
      sql.Clear;
      sql.Add('Select * from funcionarios where codigo=:c1');
      Params[0].AsInteger := x; //qry_logcodigo.AsInteger;
      Open;
    end;
    if QRY_funcionarios.RecordCount > 0 then
    begin
      PageControl1.ActivePage := TabSheet1;
      Btn_AlterarClick(self);
      Btn_SalvarClick(self);
    end;
      //QRY_log.Next;
  end;

end;

procedure TFrm_funcionarios.BitBtn2Click(Sender: TObject);
begin
  while not qry_teste.Eof do
  begin
    if length(SoNumeros(qry_testea.AsString)) > 0 then
    begin
      if (Pos('/', qry_testef.AsString) = 0) and (Pos('-',
        qry_testef.AsString) = 0) then
      begin
        with QRY_funcionarios_fones do
        begin
          sql.Clear;
          sql.Add('replace into funcionarios_fones(tipo_tabela, codigo, fone, descricao)');
          sql.Add('Values (:tipo_tabela, :codigo, :fone, :descricao)');
          Params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
          Params[1].AsInteger := strtoint(SoNumeros(qry_testea.AsString));
          Params[2].AsString := qry_testef.AsString;
          Params[3].AsString := 'FONE';
          ExecSQL;
        end;
      end;
    end;
    qry_teste.Next;
  end;

end;

procedure TFrm_funcionarios.Edit_bairroExit(Sender: TObject);
begin
  muda_na_saida(Sender, 'I');
  Edit_bairro.DroppedDown := False;
end;

procedure TFrm_funcionarios.CurrencyEdit1Exit(Sender: TObject);
begin
  with QRY_rede do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios where tipo_tabela=:t1 and codigo=:t2');
    Params[0].AsString := 'SOCIO';
    Params[1].AsInteger := StrToInt(CurrencyEdit1.Text);
    Open;
  end;
  if QRY_rede.RecordCount > 0 then
    label20.Caption := qry_redenome.AsString;
end;

procedure TFrm_funcionarios.suiButton1Click(Sender: TObject);
begin
  with qry_funcionarios_financeiro do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios_financeiro where ' +
      ' tipo_tabela=:t1 ' +
      ' AND codigo=:c1 ' +
      ' and data_pag >=:d1 ' +
      ' and data_pag<=:d2 ' +
      ' order by data_pag');
    Params[0].AsString := 'SOCIO';
    Params[1].AsInteger := StrToInt(CurrencyEdit1.Text);
    Params[2].AsDateTime := StrToDateTime(DateEdit1.Text);
    Params[3].AsDateTime := StrToDateTime(DateEdit2.Text);
    Open;
  end;

end;

procedure TFrm_funcionarios.Edit_rgExit(Sender: TObject);
begin
   //QRY_rede.Last; // coloca os dados no final do arquivo
   //====================================================
   //if Length(SoNumeros(qry_rededatademissao.AsString)) > 0 then

  if Tipo_Operacao = 'I' then
  begin
    with QRY_rede do
    begin
      sql.Clear;
      sql.Add('Select * from funcionarios where rg=:c1');
      Params[0].AsString := SoNumeros(Edit_rg.Text);
      Open;
    end;
    if QRY_rede.RecordCount > 0 then
    begin
         // joga os dados nos campos
      ShowMessage('RECUPERANDO DADOS! ');

      suiImagePanel1.Color := form_menu.cor_do_form;
      suiImagePanel2.Color := form_menu.cor_do_form;
      suiImagePanel3.Color := form_menu.cor_do_form;
      suiImagePanel4.Color := form_menu.cor_do_form;
      suiImagePanel5.Color := form_menu.cor_do_form;
      suiImagePanel6.Color := form_menu.cor_do_form;
      DBText1.Color := form_menu.cor_do_form;
      DBText2.Color := form_menu.cor_do_form;
      DBText3.Color := form_menu.cor_do_form;

      edit_tipo_tabela.text := qry_redetipo_tabela.AsString;
      edit_codigo.text := qry_redecodigo.AsString;
      edit_nome.text := qry_redenome.AsString;
      edit_setor.text := qry_redesetor.AsString;
      edit_datanascimento.text := qry_rededatanascimento.AsString;
      edit_endereco.text := qry_redeendereco.AsString;
      edit_cep.text := qry_redecep.AsString;
      edit_bairro.text := qry_redebairro.AsString;
      edit_rg.text := qry_rederg.AsString;
      edit_dataemissao.text := qry_rededataemissao.AsString;
      edit_cpf_cgc.text := qry_redecpf_cgc.AsString;
      edit_titulo.text := qry_redetitulo.AsString;
      edit_seccao.text := qry_redeseccao.AsString;
      edit_zona.text := qry_redezona.AsString;
      edit_pis.text := qry_redepis.AsString;
      edit_filiacaopai.text := qry_redefiliacaopai.AsString;
      edit_filiacaomae.text := qry_redefiliacaomae.AsString;
      edit_conjuge.text := qry_redeconjuge.AsString;
      edit_dataadmissao.text := qry_rededataadmissao.AsString;
      edit_banco.text := qry_redebanco.AsString;
      edit_agencia.text := qry_redeagencia.AsString;
      edit_contacorrente.text := qry_redecontacorrente.AsString;
      edit_usointernolunav.text := qry_redeusointernolunav.AsString;
      if Length(SoNumeros(qry_redefuncao.AsString)) = 0 then
        Edit_funcao.Clear
      else
        edit_funcao.text := qry_redefuncao.AsString;
      if Length(Edit_horario.Text) < 1 then
        Edit_horario.Text := ''
      else
        edit_horario.text := qry_redehorario.AsString;

      if Length(SoNumeros(qry_rededatademissao.AsString)) = 0 then
        edit_datademissao.clear
      else
        edit_datademissao.Clear; //text := qry_rededatademissao.AsString;
      edit_senha.text := qry_redesenha.AsString;
      Edit_superfiltro.Text := qry_redesuperfiltro.AsString;
      Edit_superagenda.Text := qry_redesuperagenda.AsString;
      Edit_obs.Text := qry_redeobs.AsString;
      carrega_telefones;
    end;
  end;

  if Tipo_Operacao = 'A' then
  begin
    with QRY_rede do
    begin
      sql.Clear;
      sql.Add('Select * from funcionarios where rg=:c1');
      Params[0].AsString := SoNumeros(Edit_rg.Text);
      Open;
    end;
    if QRY_rede.RecordCount > 0 then

    begin
         // coloca os dados em edição nao
         // permitindo a duplicação do registro
      Tipo_Operacao := 'A';
      ShowMessage('Sócio Ativo, Entrando em Modo de EDIÇÃO!!!');

      edit_tipo_tabela.text := qry_redetipo_tabela.AsString;
      edit_codigo.text := qry_redecodigo.AsString;
      edit_nome.text := qry_redenome.AsString;
      edit_setor.text := qry_redesetor.AsString;
      edit_datanascimento.text := qry_rededatanascimento.AsString;
      edit_endereco.text := qry_redeendereco.AsString;
      edit_cep.text := qry_redecep.AsString;
      edit_bairro.text := qry_redebairro.AsString;
      edit_rg.text := qry_rederg.AsString;
      edit_dataemissao.text := qry_rededataemissao.AsString;
      edit_cpf_cgc.text := qry_redecpf_cgc.AsString;
      edit_titulo.text := qry_redetitulo.AsString;
      edit_seccao.text := qry_redeseccao.AsString;
      edit_zona.text := qry_redezona.AsString;
      edit_pis.text := qry_redepis.AsString;
      edit_filiacaopai.text := qry_redefiliacaopai.AsString;
      edit_filiacaomae.text := qry_redefiliacaomae.AsString;
      edit_conjuge.text := qry_redeconjuge.AsString;
      edit_dataadmissao.text := qry_rededataadmissao.AsString;
      edit_banco.text := qry_redebanco.AsString;
      edit_agencia.text := qry_redeagencia.AsString;
      edit_contacorrente.text := qry_redecontacorrente.AsString;
      edit_usointernolunav.text := qry_redeusointernolunav.AsString;
      if Length(SoNumeros(qry_redefuncao.AsString)) = 0 then
        Edit_funcao.Clear
      else
        edit_funcao.text := qry_redefuncao.AsString;
      if Length(Edit_horario.Text) < 1 then
        Edit_horario.Text := ''
      else
        edit_horario.text := qry_redehorario.AsString;

      if Length(SoNumeros(qry_rededatademissao.AsString)) = 0 then
        edit_datademissao.clear
      else
        edit_datademissao.text := qry_rededatademissao.AsString;
      edit_senha.text := qry_redesenha.AsString;
      Edit_superfiltro.Text := qry_redesuperfiltro.AsString;
      Edit_superagenda.Text := qry_redesuperagenda.AsString;
      Edit_obs.Text := qry_redeobs.AsString;
      carrega_telefones;

    end;
  end;
  muda_na_saida(Sender, 'I');

end;

procedure TFrm_funcionarios.qry_funcionariosCalcFields(DataSet: TDataSet);
begin
  with qry_funcionarios_fones do
  begin
    sql.Clear;
    sql.Add('Select * from funcionarios_fones do where tipo_tabela=:t1 AND codigo=:c1');
    Params[0].AsString := qry_funcionariostipo_tabela.AsString;
    Params[1].AsInteger := qry_funcionarioscodigo.AsInteger;
    Open;
  end;
  Edit_fones.Clear;
  if QRY_funcionarios.RecordCount > 0 then
  begin
    qry_funcionarios_fones.First;
    while not qry_funcionarios_fones.Eof do
    begin
      Edit_fones.Text := Edit_fones.Text + qry_funcionarios_fonesfone.AsString + ' ' +
        qry_funcionarios_fonesdescricao.AsString + ' ';

      qry_funcionariosw_fones.AsString := qry_funcionariosw_fones.AsString +
        Formata_fone(qry_funcionarios_fonesfone.AsString) + ' ';
               //qry_funcionarios_fonesdescricao.AsString + ' ';
      qry_funcionarios_fones.Next;
    end;

  end;
end;


function TFrm_funcionarios.carrega_imagens(padrao: Integer): Boolean;
var
  local_aplic: string;
begin
  local_aplic := ExtractFileDir(Application.ExeName) + '\Imagens\2\';
  case padrao of
    0:
      begin
        if FileExists(local_aplic + 'btn_cancelar.bmp') then
        begin
          Btn_Sair.Glyph.LoadFromFile(local_aplic + 'btn_cancelar.bmp');
          Btn_Sair.Font.Color := clRed;
          Btn_Sair.Font.Style := [fsbold];
        end;

      end;
    1:
      begin
        if FileExists(local_aplic + 'btn_sair.bmp') then
        begin
          Btn_Sair.Glyph.LoadFromFile(local_aplic + 'btn_sair.bmp');
          Btn_Sair.Font.Color := clBlack;
          Btn_Sair.Font.Style := [fsbold];
        end;

      end;
    2:
      begin
        if FileExists(local_aplic + 'btn_incluir.bmp') then
        begin
          Btn_Incluir.Glyph.LoadFromFile(local_aplic + 'btn_incluir.bmp');
          Btn_Incluir.Font.Color := clBlack;
          Btn_Incluir.Font.Style := [fsbold];

        end;

        if FileExists(local_aplic + 'btn_alterar.bmp') then
        begin
          Btn_Alterar.Glyph.LoadFromFile(local_aplic + 'btn_alterar.bmp');
          Btn_Alterar.Font.Color := clBlack;
          Btn_Alterar.Font.Style := [fsbold];
        end;

        if FileExists(local_aplic + 'btn_excluir.bmp') then
        begin
          Btn_Excluir.Glyph.LoadFromFile(local_aplic + 'btn_excluir.bmp');
          Btn_Excluir.Font.Color := clBlack;
          Btn_Excluir.Font.Style := [fsbold];
        end;

        if FileExists(local_aplic + 'btn_salvar.bmp') then
        begin
          Btn_Salvar.Glyph.LoadFromFile(local_aplic + 'btn_salvar.bmp');
          Btn_Salvar.Font.Color := clBlack;
          Btn_Salvar.Font.Style := [fsbold];
        end;

        if FileExists(local_aplic + 'btn_sair.bmp') then
        begin
          Btn_Sair.Glyph.LoadFromFile(local_aplic + 'btn_sair.bmp');
          Btn_Sair.Font.Color := clBlack;
          Btn_Sair.Font.Style := [fsbold];
        end;

      end;
    3:
      begin
      end;
    4:
      begin
      end;
    5:
      begin
      end;
  end;
end;

procedure TFrm_funcionarios.FormShow(Sender: TObject);
begin
  qry_bairros.Open;
  QRY_funcionarios.Open;
  QRY_log.Open;
  QRY_rede.Open;
  qry_tipo_tabelas.Open;
  qry_funcionarios_dependentes.Open;
  qry_funcionarios_financeiro.Open;
  qry_funcionarios_fones.Open;


{   suiImagePanel1.Color := form_menu.cor_do_form;
   suiImagePanel2.Color := form_menu.cor_do_form;
   suiImagePanel3.Color := form_menu.cor_do_form;
   suiImagePanel4.Color := form_menu.cor_do_form;
   suiImagePanel5.Color := form_menu.cor_do_form;
   suiImagePanel6.Color := form_menu.cor_do_form;
 }
  carrega_imagens(2);
end;

procedure TFrm_funcionarios.suiButton2Click(Sender: TObject);
begin
  case Radio_ordem.ItemIndex of
    0:
      begin
        with QRY_funcionarios do
        begin
          sql.Clear;
          sql.Add('Select * from funcionarios where tipo_tabela=:t1 order by CODIGO');
          params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
          Open;
        end;
        qr_periodo_data.Caption := 'Ordem de CÓDIGO';
      end;
    1:
      begin
        with QRY_funcionarios do
        begin
          sql.Clear;
          sql.Add('Select * from funcionarios where tipo_tabela=:t1 order by nome');
          params[0].AsString := form_menu.ORIGEM_CHAMADA_CADASTRO;
          Open;
        end;
        qr_periodo_data.Caption := 'Ordem de ALFABETICO';
      end;
  end;
  case Radio_ordem.ItemIndex of
    0: QR_titulo_01.Caption := 'RELAÇÃO DE SÓCIOS - Ordem Código';
    1: QR_titulo_01.Caption := 'RELAÇÃO DE SÓCIOS - Ordem Nome';
  end;


  case radio_destino.ItemIndex of
    0: QuickRep2.Preview;
    1: QuickRep2.Print;
  end;

end;

procedure TFrm_funcionarios.Edit_fone_01Exit(Sender: TObject);
begin
  if Length(Edit_fone_01.Text) <> 0 then
    Edit_fones.Text := Edit_fone_01.Text;
  Edit_fone_01.Text := SoNumeros(Edit_fone_01.Text);
end;

procedure TFrm_funcionarios.Edit_descricao_01Exit(Sender: TObject);
begin
  if Length(Edit_descricao_01.Text) <> 0 then
    Edit_fones_descricao.Text := Edit_descricao_01.Text;
end;

procedure TFrm_funcionarios.Button2Click(Sender: TObject);
begin
  with qry_exclusao do
  begin
    sql.Clear;
    //` WHERE `nome` LIKE '%rolo%'
    SQL.add('SELECT * FROM funcionarios WHERE Upper(nome) LIKE :nome order by nome');
    ParamByName('nome').AsString := '%' + UpperCase(Edit1.text) + '%';
    ShowMessage(SQL.TEXT);
    Open;
    if qry_exclusao.RecordCount > 0 then
    begin

    end;

  end;

end;

procedure TFrm_funcionarios.Edit_fone_01Enter(Sender: TObject);
begin
   Edit_fone_01.Text := Formata_fone(Edit_fone_01.Text);
end;

end.

