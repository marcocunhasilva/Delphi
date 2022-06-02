// -------------------------------------------------------------
// GERADO PELO PROGRAMA Plebeu 2.1 [Belin UP-2 - Itamar Roloff]
// sistema de Edits com campos nao viculados a um dataset
// -------------------------------------------------------------
// BANCO......: FINANCEIRO_SIND
// TABELA.....: user
// DATA.......: 01/07/18
// HORA.......: 18:27:27
// RESPONSAVEL: Itamar B. Roloff
// -------------------------------------------------------------
// Gerado sem Field Editor - Instituido no gerador em 31/05/2018
// DATA DO GERADOR : 01/07/2018
unit user;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.AppEvnts,
  Vcl.StdCtrls,
  XBanner,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.ComCtrls,
  Vcl.Mask,
  Vcl.DBCtrls,
  JvComponentBase,
  JvEnterTab,
  JvMaskEdit,
  JvCheckedMaskEdit,
  JvDatePickerEdit,
  Vcl.Buttons,
  Vcl.Grids,
  Vcl.DBGrids,
  JvExMask,
  JvToolEdit,
  JvBaseEdits,
  JvDBControls,
  JvExComCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  JvStatusBar;

type
  TFrm_user = class(TForm)
    XB_botoes: TXBanner;
    Panel1: TPanel;
    Btn_Primeiro: TBitBtn;
    Btn_Anterior: TBitBtn;
    Btn_Proximo: TBitBtn;
    Btn_Ultimo: TBitBtn;
    Btn_Gravar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    Btn_Incluir: TBitBtn;
    Btn_Editar: TBitBtn;
    Btn_Excluir: TBitBtn;
    Btn_Pesquisar: TBitBtn;
    Btn_Relatorios: TBitBtn;
    Btn_Fechar: TBitBtn;
    Label5: TLabel;
    PageControl1: TPageControl;
    TabSheet1_cadastro: TTabSheet;
    TabSheet_Pesquisa: TTabSheet;
    XB_Principal: TXBanner;
    // tabelas de trabalho principal
    Lbl_login: TLabel;
    Lbl_nivel: TLabel;
    Lbl_nome: TLabel;
    Lbl_senha: TLabel;
    // -------------------------------------------------------------------------------
    Qry_user: TFDQuery;
    DS_user: TDataSource;
    Edit_login: TEdit;
    Edit_nivel: TJvCalcEdit;
    Edit_nome: TEdit;
    Edit_senha: TEdit;
    DBGrid1: TDBGrid;
    ApplicationEvents1: TApplicationEvents;
    JvEnterAsTab1: TJvEnterAsTab;
    pnlPesquisa: TPanel;
    lblCampos: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    lbl_tipo_campo: TLabel;
    Lbl_ate: TLabel;
    btnPesquisar: TBitBtn;
    edtValor: TEdit;
    cbxField: TComboBox;
    cbxAcao: TComboBox;
    edtnumfinal: TJvCalcEdit;
    edtnuminicial: TJvCalcEdit;
    edtdataInicial: TJvDatePickerEdit;
    edtdataFinal: TJvDatePickerEdit;
    StatusBar: TJvStatusBar;
    // -------------------------------------------------------------------------------
    procedure botoes_setas;
    procedure Ativar_Botoes;
    procedure Desativar_Botoes;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure Btn_PrimeiroClick(Sender: TObject);
    procedure Btn_AnteriorClick(Sender: TObject);
    procedure Btn_ProximoClick(Sender: TObject);
    procedure Btn_UltimoClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbxFieldExit(Sender: TObject);
    procedure cbxAcaoExit(Sender: TObject);
    procedure cbxFieldEnter(Sender: TObject);
    procedure Limpa_Campos;
    procedure Liga_Campos;
    procedure Desliga_Campos;
    procedure Carrega_query;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Qry_userAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
    Tipo_Acao: String;
  end;

var
  W_Frm_user: TFrm_user;

implementation

uses utl_biblioteca, utl_apoio, utl_sistema, u_biblioteca;

{$R *.dfm}

procedure TFrm_user.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ZebrarDbGrid(DS_user, DBGrid1, State, Rect, Column);
end;

procedure TFrm_user.Qry_userAfterScroll(DataSet: TDataSet);
begin
  if Tipo_Acao = 'I' then
    exit;
  Carrega_query;
  StatusBar.Panels[1].Text := 'Registros:' + Qry_user.RecNo.ToString + '/' + IntToStr(Qry_user.RecordCount);
end;

procedure TFrm_user.DBGrid1DblClick(Sender: TObject);
begin
  Btn_EditarClick(self);
end;

Procedure TFrm_user.Limpa_Campos;
Begin
  // Limpa os campos
  Edit_login.Text := '';
  Edit_nivel.Text := '';
  Edit_nome.Text := '';
  Edit_senha.Text := '';
End;

Procedure TFrm_user.Liga_Campos;
Begin
  // Liga os campos
  Edit_login.Enabled := True;
  Edit_nivel.Enabled := True;
  Edit_nome.Enabled := True;
  Edit_senha.Enabled := True;
  // Defvinição de cores ====================================================
  Edit_login.Color := clWindow;
  Edit_nivel.Color := clWindow;
  Edit_nome.Color := clWindow;
  Edit_senha.Color := clWindow;
End;

Procedure TFrm_user.Desliga_Campos;
Begin
  // Liga os campos
  Edit_login.Enabled := False;
  Edit_nivel.Enabled := False;
  Edit_nome.Enabled := False;
  Edit_senha.Enabled := False;
  // Definição de cores ====================================================
  Edit_login.Color := clMenu;
  Edit_nivel.Color := clMenu;
  Edit_nome.Color := clMenu;
  Edit_senha.Color := clMenu;
End;

procedure TFrm_user.Carrega_query;
Begin
  Edit_login.Text := Qry_user.FieldByName('login').AsString;
  Edit_nivel.Text := Qry_user.FieldByName('nivel').AsString;
  Edit_nome.Text := Qry_user.FieldByName('nome').AsString;
  Edit_senha.Text := Qry_user.FieldByName('senha').AsString;
End;

// ------------------------------------------------------------------------------
Procedure TFrm_user.botoes_setas;
Begin
  Btn_Primeiro.Enabled := True;
  Btn_Anterior.Enabled := True;
  Btn_Proximo.Enabled := True;
  Btn_Ultimo.Enabled := True;
  if Qry_user.RecNo = 1 then
  begin
    Btn_Primeiro.Enabled := False;
    Btn_Anterior.Enabled := False;
  end;
  if Qry_user.RecNo = Qry_user.RecordCount then
  begin
    Btn_Proximo.Enabled := False;
    Btn_Ultimo.Enabled := False;
  end;
End;

Procedure TFrm_user.Ativar_Botoes;
Begin
  Btn_Gravar.Enabled := True;
  Btn_Cancelar.Enabled := True;
  Btn_Primeiro.Enabled := False;
  Btn_Anterior.Enabled := False;
  Btn_Proximo.Enabled := False;
  Btn_Ultimo.Enabled := False;
  Btn_Incluir.Enabled := False;
  Btn_Editar.Enabled := False;
  Btn_Excluir.Enabled := False;
  Btn_Pesquisar.Enabled := False;
  Btn_Relatorios.Enabled := False;
End;

Procedure TFrm_user.Desativar_Botoes;
Begin
  Btn_Gravar.Enabled := False;
  Btn_Cancelar.Enabled := False;
  Btn_Primeiro.Enabled := True;
  Btn_Anterior.Enabled := True;
  Btn_Proximo.Enabled := True;
  Btn_Ultimo.Enabled := True;
  Btn_Incluir.Enabled := True;
  Btn_Editar.Enabled := True;
  Btn_Excluir.Enabled := True;
  Btn_Pesquisar.Enabled := True;
  Btn_Relatorios.Enabled := True;
End;

Procedure TFrm_user.FormCreate(Sender: TObject);
begin
  Desliga_Campos;
  With Qry_user do
  begin
    sql.clear;
    sql.add('Select * from user');
    Open;
  end;
  Carrega_query;
  Application.OnMessage := ApplicationEvents1Message;
end;

Procedure TFrm_user.ApplicationEvents1Message(var Msg: TMsg; var Handled: Boolean);
var
  i: SmallInt;

begin
  if Msg.message = WM_MOUSEWHEEL then
  begin
    Msg.message := WM_KEYDOWN;
    Msg.lParam := 0;
    i := HiWord(Msg.wParam);
    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;
    Handled := False;
  end;
end;

Procedure TFrm_user.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qry_user.close;
end;

Procedure TFrm_user.FormShow(Sender: TObject);
var
  i: Integer;
begin
  // StatusBar.Panels[0].text := 'Usuário: '+ frm_DM.LoginUsuario.Nome;
  Qry_user.Open;
  // carrega os campos para pesquisa;
  cbxField.clear;
  for i := 0 to Qry_user.FieldCount - 1 do
  begin
    cbxField.Items.add(Qry_user.fields[i].FieldName);
  end;
  Desativar_Botoes;
  botoes_setas;
end;

Procedure TFrm_user.Btn_AnteriorClick(Sender: TObject);
begin
  Qry_user.prior;
  botoes_setas;
  Carrega_query;
end;

Procedure TFrm_user.Btn_PrimeiroClick(Sender: TObject);
begin
  Qry_user.first;
  Carrega_query;
  botoes_setas;
end;

Procedure TFrm_user.Btn_ProximoClick(Sender: TObject);
begin
  Qry_user.next;
  Carrega_query;
  botoes_setas;
end;

Procedure TFrm_user.Btn_UltimoClick(Sender: TObject);
begin
  Qry_user.last;
  Carrega_query;
  botoes_setas;

end;

Procedure TFrm_user.Btn_CancelarClick(Sender: TObject);
begin
  Limpa_Campos;
  Desliga_Campos;
  // ---------------
  Carrega_query;
  botoes_setas;
  Desativar_Botoes;
end;

Procedure TFrm_user.Btn_IncluirClick(Sender: TObject);
begin
  Tipo_Acao := 'I';
  Limpa_Campos;
  Liga_Campos;
  PageControl1.activepage := TabSheet1_cadastro;
  Edit_nome.setfocus;
  Ativar_Botoes;

end;

Procedure TFrm_user.Btn_EditarClick(Sender: TObject);
begin
  Tipo_Acao := 'A';
  Ativar_Botoes;
  Carrega_query;
  Liga_Campos;
  PageControl1.activepage := TabSheet1_cadastro;
  // posicionar o campo que recebera o foco
  Edit_nome.setfocus;
end;

Procedure TFrm_user.Btn_ExcluirClick(Sender: TObject);
begin
  // Controle de Operacoes Para os Logs
  if Tipo_Acao = 'I' then
    exit;
  // Carrega_query_log;
  // Controle de Botões

  // depende da regra de exclusao da tabela
  // -----------------------------------------------------------------------------
  // colocar filtro conforme primay key para deletar somente um registro
  if MessageDlg('Tem Certeza Que deseja Excluir Este Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with Qry_user do
    begin
      sql.clear;
      sql.add('Delete from user where ID=:ID');
      Params[0].AsString := Edit_login.Text;
      ExecSql;
      sql.clear;
      sql.add('Select * from user');
      Open;
    end;

    Desliga_Campos;
    Carrega_query;
  end;

end;

Procedure TFrm_user.Btn_GravarClick(Sender: TObject);
begin
  // caso tenha mais de uma pagecontrol e o campo pentencer a segunda
  // pagina NAO esquecer de setar a pagina correta  (NO SETFOCUS)!!
  // ---------------------------------------------------------------
  // pagecontrol1.activepage := tabsheet1_Cadastro

  // Peristir id--------------------------------------
  if (Edit_login.Text) = '' then
  Begin
    showmessage('lOGIN é campo OBRIGATÓRIO!!!');
    Edit_login.setfocus;
    exit;
  end;
  // Peristir login--------------------------------------
  if (Edit_login.Text) = '' then
  Begin
    showmessage('LOGIN é campo OBRIGATÓRIO!!!');
    Edit_login.setfocus;
    exit;
  end;
  // Peristir nivel--------------------------------------
  if Edit_nivel.Text = '' then
  Begin
    showmessage('NIVEL é campo OBRIGATÓRIO!!!');
    Edit_nivel.setfocus;
    exit;
  end;
  // Peristir nome--------------------------------------
  if (Edit_nome.Text) = '' then
  Begin
    showmessage('NOME é campo OBRIGATÓRIO!!!');
    Edit_nome.setfocus;
    exit;
  end;
  // Peristir senha--------------------------------------
  if (Edit_senha.Text) = '' then
  Begin
    showmessage('SENHA é campo OBRIGATÓRIO!!!');
    Edit_senha.setfocus;
    exit;
  end;
  if Tipo_Acao = 'I' then
  begin
    with Qry_user do
    begin
      sql.clear;
      sql.add('Insert into  user(' + ' login, ' + ' nivel, ' + ' nome, ' + ' senha )'); // Ultimo Campo
      sql.add('Values (' + ':login, ' + ':nivel, ' + ':nome, ' + ':senha) //Fecha Values');
      ParamByName('login').AsString := Edit_login.Text;
      ParamByName('nivel').asInteger := StrToInt(Edit_nivel.Text);
      ParamByName('nome').AsString := Edit_nome.Text;
      ParamByName('senha').AsString := Edit_senha.Text;
      ExecSql;
      // -------------- releitura da tabela------------------------------
    End;
  End;
  if Tipo_Acao = 'A' then
  begin
    with Qry_user do
    begin
      sql.clear;
      sql.add('UpDate user SET ' + ' nivel=:nivel, ' + ' nome=:nome, ' + ' senha=:senha ' + ' where login=:login');
      ParamByName('login').AsString := Edit_login.Text;
      ParamByName('nivel').asInteger := StrToInt(Edit_nivel.Text);
      ParamByName('nome').AsString := Edit_nome.Text;
      ParamByName('senha').AsString := Edit_senha.Text;
      ExecSql;
      // -------------- releitura da tabela------------------------------
      sql.clear;
      sql.add('Select * from user');
      Open;
    End;
  End;
  Tipo_Acao := 'Z';
  Desativar_Botoes;

end;

Procedure TFrm_user.Btn_FecharClick(Sender: TObject);
begin
  close;
end;

Procedure TFrm_user.btnPesquisarClick(Sender: TObject);
begin

  {
    with QRY_fin_pessoas do
    begin
    SQL.clear;
    SQL.add('Select * from fin_pessoas  where empresa=:e1 and origem=:e2');
    ParamByName('e1').AsInteger := DataModule1.wy_empresa_codigo;
    ParamByName('e2').AsString := form_menu.ORIGEM_CHAMADA_FOR_CLI;

    case Radio_Filtra.ItemIndex of
    0:
    begin
    SQL.add(' AND Codigo = :edit_filtra ');
    ParamByName('edit_filtra').AsString := edit_filtra.text;
    end;
    1:
    begin
    SQL.add(' AND Upper(cnpj_cpf) like :edit_filtra ');
    ParamByName('edit_filtra').AsString := '%' +
    UpperCase(Edit_filtra.text) + '%';
    end;
    2:
    begin
    SQL.add(' AND Upper(nome) like :edit_filtra ');
    ParamByName('edit_filtra').AsString := '%' +
    UpperCase(Edit_filtra.text) + '%';
    end;
    end;
  }
  // monta o SQL conforme seleção
  {
    Maior QUE
    Menor QUE
    Diferente DE
    ENTRE

  }

  if UpperCase(cbxAcao.Text) = 'TODOS' then
  begin
    with Qry_user do
    begin
      close;
      sql.clear;
      sql.add('Select * from user');
      sql.add(' order by ' + cbxField.Text);
      Open;
    end;

  end;

  if UpperCase(cbxAcao.Text) = 'IGUAL' then
  begin
    with Qry_user do
    begin
      close;
      sql.clear;
      sql.add('Select * from user');
      sql.add(' where UPPER(' + cbxField.Text + ') =:P1 ');
      sql.add(' order by ' + cbxField.Text);
      if (lbl_tipo_campo.Caption = 'STRING') then
        ParamByName('P1').AsString := UpperCase(edtValor.Text);
      if (lbl_tipo_campo.Caption = 'INTEGER') then
      begin
        ParamByName('P1').asInteger := StrToInt(edtnuminicial.Text);
      end;
      if (lbl_tipo_campo.Caption = 'DOUBLE') then
      begin
        ParamByName('P1').AsFloat := edtnuminicial.Value;
      end;
      if (lbl_tipo_campo.Caption = 'DATE') OR (lbl_tipo_campo.Caption = 'DATETIME') then
      begin
        ParamByName('P1').AsDateTime := StrToDateTime(edtdataInicial.Text);
      end;
      Open;
    end;

  end;

  if UpperCase(cbxAcao.Text) = 'CONTEM' then
  begin
    with Qry_user do
    begin
      close;
      sql.clear;
      sql.add('Select * from user');
      sql.add(' where UPPER(' + cbxField.Text + ') like  :P1 ');
      sql.add(' order by ' + cbxField.Text);
      ParamByName('P1').AsString := '%' + UpperCase(edtValor.Text) + '%';
      Open;
    end;
  end;

  if AnsiUpperCase(cbxAcao.Text) = 'COMEÇA COM' then
  begin
    with Qry_user do
    begin
      close;
      sql.clear;
      sql.add('Select * from user');
      sql.add(' where UPPER(' + cbxField.Text + ') like :P1 ');
      sql.add(' order by ' + cbxField.Text);
      ParamByName('P1').AsString := UpperCase(edtValor.Text) + '%';
      Open;
    end;
  end;

  if UpperCase(cbxAcao.Text) = 'MAIOR QUE' then
  begin
    with Qry_user do
    begin
      close;
      sql.clear;
      sql.add('Select * from user');
      sql.add(' where UPPER(' + cbxField.Text + ') >=:P1 ');
      sql.add(' order by ' + cbxField.Text);
      if (lbl_tipo_campo.Caption = 'STRING') then
        ParamByName('P1').AsString := UpperCase(edtValor.Text);
      if (lbl_tipo_campo.Caption = 'INTEGER') then
      begin
        ParamByName('P1').asInteger := StrToInt(edtnuminicial.Text);
      end;
      if (lbl_tipo_campo.Caption = 'DOUBLE') then
      begin
        ParamByName('P1').AsFloat := edtnuminicial.Value;
      end;
      if (lbl_tipo_campo.Caption = 'DATE') OR (lbl_tipo_campo.Caption = 'DATETIME') then
      begin
        ParamByName('P1').AsDateTime := StrToDateTime(edtdataInicial.Text);
      end;
      Open;
    end;
  end;
  if UpperCase(cbxAcao.Text) = 'MENOR QUE' then
  begin
    with Qry_user do
    begin
      close;
      sql.clear;
      sql.add('Select * from user');
      sql.add(' where UPPER(' + cbxField.Text + ') <=:P1 ');
      sql.add(' order by ' + cbxField.Text);
      if (lbl_tipo_campo.Caption = 'STRING') then
        ParamByName('P1').AsString := UpperCase(edtValor.Text);
      if (lbl_tipo_campo.Caption = 'INTEGER') then
      begin
        ParamByName('P1').asInteger := StrToInt(edtnuminicial.Text);
      end;
      if (lbl_tipo_campo.Caption = 'DOUBLE') then
      begin
        ParamByName('P1').AsFloat := edtnuminicial.Value;
      end;
      if (lbl_tipo_campo.Caption = 'DATE') OR (lbl_tipo_campo.Caption = 'DATETIME') then
      begin
        ParamByName('P1').AsDateTime := StrToDateTime(edtdataInicial.Text);
      end;
      Open;
    end;
  end;
  if UpperCase(cbxAcao.Text) = 'DIFERENTE DE' then
  begin
    with Qry_user do
    begin
      close;
      sql.clear;
      sql.add('Select * from user');
      sql.add(' where UPPER(' + cbxField.Text + ') <>:P1 ');
      sql.add(' order by ' + cbxField.Text);
      if (lbl_tipo_campo.Caption = 'STRING') then
        ParamByName('P1').AsString := UpperCase(edtValor.Text);
      if (lbl_tipo_campo.Caption = 'INTEGER') then
      begin
        ParamByName('P1').asInteger := StrToInt(edtnuminicial.Text);
      end;
      if (lbl_tipo_campo.Caption = 'DOUBLE') then
      begin
        ParamByName('P1').AsFloat := edtnuminicial.Value;
      end;
      if (lbl_tipo_campo.Caption = 'DATE') OR (lbl_tipo_campo.Caption = 'DATETIME') then
      begin
        ParamByName('P1').AsDateTime := StrToDateTime(edtdataInicial.Text);
      end;
      Open;
    end;
  end;

  if UpperCase(cbxAcao.Text) = 'ENTRE' then
  begin
    with Qry_user do
    begin
      close;
      sql.clear;
      sql.add('Select * from user');
      sql.add(' where UPPER(' + cbxField.Text + ') BETWEEN :P1 AND :P2');
      sql.add(' order by ' + cbxField.Text);
      if (lbl_tipo_campo.Caption = 'INTEGER') then
      begin
        ParamByName('P1').asInteger := StrToInt(edtnuminicial.Text);
        ParamByName('P2').asInteger := StrToInt(edtnumfinal.Text);
      end;
      if (lbl_tipo_campo.Caption = 'DOUBLE') then
      begin
        ParamByName('P1').AsFloat := edtnuminicial.Value;
        ParamByName('P2').AsFloat := edtnumfinal.Value;
      end;
      if (lbl_tipo_campo.Caption = 'DATE') OR (lbl_tipo_campo.Caption = 'DATETIME') then
      begin
        ParamByName('P1').AsDate := StrToDate(edtdataInicial.Text);
        ParamByName('P2').AsDate := StrToDate(edtdataFinal.Text);
      end;

      Open;
    end;
  end;

end;

Procedure TFrm_user.cbxAcaoExit(Sender: TObject);
begin
  if lbl_tipo_campo.Caption = 'STRING' then
  begin
    edtValor.Visible := True;
  end;
  Lbl_ate.Visible := False;

  if lbl_tipo_campo.Caption = 'INTEGER' then
  begin
    edtnuminicial.DecimalPlaces := 0;
    edtnuminicial.DisplayFormat := '0';
    edtnuminicial.Visible := True;
    if UpperCase(cbxAcao.Text) = 'ENTRE' then
    begin
      edtnumfinal.DecimalPlaces := 0;
      edtnumfinal.DisplayFormat := '0';
      edtnumfinal.Visible := True;
      Lbl_ate.Visible := True;
    end;
  end;
  if lbl_tipo_campo.Caption = 'DOUBLE' then
  begin
    edtnuminicial.DecimalPlaces := 2;
    edtnuminicial.DisplayFormat := ',0.##';
    edtnuminicial.Visible := True;
    if UpperCase(cbxAcao.Text) = 'ENTRE' then
    begin
      edtnumfinal.DecimalPlaces := 2;
      edtnumfinal.DisplayFormat := ',0.##';
      edtnumfinal.Visible := True;
      Lbl_ate.Visible := True;
    end;
  end;

  if lbl_tipo_campo.Caption = 'DATE' then
  begin
    edtdataInicial.Visible := True;
    if UpperCase(cbxAcao.Text) = 'ENTRE' then
    begin
      edtdataFinal.Visible := True;
      Lbl_ate.Visible := True;
    end;

  end;

end;

Procedure TFrm_user.cbxFieldEnter(Sender: TObject);
begin
  edtValor.Visible := False;
  edtnuminicial.Visible := False;
  edtnumfinal.Visible := False;
  edtdataInicial.Visible := False;
  edtdataFinal.Visible := False;
end;

Procedure TFrm_user.cbxFieldExit(Sender: TObject);
var
  x                                                  : Integer;
  w_tab                                              : string;
  w_dir, WTipo, WTamanho, WNome, w_prefixo           : string;
  L, WRequerido, gerou_pages, linhas_na_page, validos: string;
  arq                                                : TextFile;
  aux                                                : tfieldType;

begin
  for x := 0 to Qry_user.FieldCount - 1 do
  begin
    WTipo := 'Desconhecido';
    WTamanho := IntToStr(Qry_user.fields[x].DataSize);
    WNome := (Qry_user.fields[x].FieldName);
    aux := (Qry_user.fields[x].DataType);
    WTipo := tipo_campo(aux);
    WNome := (Qry_user.fields[x].FieldName); // depurando
    if UpperCase(WNome) = UpperCase(cbxField.Text) then
    begin
      lbl_tipo_campo.Caption := UpperCase(WTipo);

    end;
    cbxAcao.clear;
    if lbl_tipo_campo.Caption = 'STRING' then
    begin
      cbxAcao.clear;
      cbxAcao.Items.add('TODOS');
      cbxAcao.Items.add('Igual');
      cbxAcao.Items.add('Contem');
      cbxAcao.Items.add('Começa COM');
      cbxAcao.Items.add('Maior QUE');
      cbxAcao.Items.add('Menor QUE');
      cbxAcao.Items.add('Diferente DE');
    end;
    if (lbl_tipo_campo.Caption = 'DOUBLE') or (lbl_tipo_campo.Caption = 'INTEGER') then
    begin
      cbxAcao.clear;
      cbxAcao.Items.add('TODOS');
      cbxAcao.Items.add('Igual');
      cbxAcao.Items.add('Maior QUE');
      cbxAcao.Items.add('Menor QUE');
      cbxAcao.Items.add('Diferente DE');
      cbxAcao.Items.add('ENTRE');
    end;

    if (lbl_tipo_campo.Caption = 'DATE') or (lbl_tipo_campo.Caption = 'DATETIME') then
    begin
      cbxAcao.clear;
      cbxAcao.Items.add('TODOS');
      cbxAcao.Items.add('Igual');
      cbxAcao.Items.add('Maior QUE');
      cbxAcao.Items.add('Menor QUE');
      cbxAcao.Items.add('Diferente DE');
      cbxAcao.Items.add('ENTRE');
    end;

  end;

end;

end.
