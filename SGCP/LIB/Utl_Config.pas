unit Utl_Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvExExtCtrls, JvExtComponent, JvPanel, JvOfficeColorPanel, XBanner, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TFrm_configuracoes = class(TForm)
    qry_login: TFDQuery;
    Ds_Login: TDataSource;
    DialogColor: TColorDialog;
    Panel2: TPanel;
    pnl_superior: TXBanner;
    Lbl_titulo: TLabel;
    Panel1: TPanel;
    Pnl_grava: TPageControl;
    TabSheet1: TTabSheet;
    Btn_Titulo_superior: TButton;
    Btn_Titulo_Inferior: TButton;
    Btn_Titulo_texto: TButton;
    TabSheet3: TTabSheet;
    Button5: TButton;
    Btn_cor_edit_entrada: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Pnl_Corpo: TXBanner;
    Pnl_Corpo_1: TXBanner;
    pnl_superior_2: TXBanner;
    Button13: TButton;
    Lbl_corpo: TLabel;
    Edit_Entrada: TEdit;
    Edit_em_foco: TEdit;
    TabSheet2: TTabSheet;
    PNL_Skins: TXBanner;
    cmb_cores_padroes: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Edit_CorEsquema: TEdit;
    Label2: TLabel;
    Btn_Excluir_cor_Padrao: TButton;
    Btn_Fixar: TButton;
    qry_logincodigo: TStringField;
    qry_loginsenha: TStringField;
    qry_loginnivel: TStringField;
    qry_loginnome: TStringField;
    qry_loginendereco: TStringField;
    qry_logincidade: TStringField;
    qry_loginbairro: TStringField;
    qry_logincep: TStringField;
    qry_loginfone: TStringField;
    qry_logincelular: TStringField;
    qry_loginemail: TStringField;
    qry_loginobs: TBlobField;
    qry_loginrestrito: TBlobField;
    qry_logincor_titulo_superior: TIntegerField;
    qry_logincor_titulo_inferior: TIntegerField;
    qry_logincor_titulo_texto: TIntegerField;
    qry_logincor_padrao: TIntegerField;
    qry_logincor_corpo_superior: TIntegerField;
    qry_logincor_corpo_inferior: TIntegerField;
    qry_logincor_corpo_texto: TIntegerField;
    qry_logincor_edit_entrada_fundo: TIntegerField;
    qry_logincor_edit_entrada_texto: TIntegerField;
    qry_logincor_edit_foco_fundo: TIntegerField;
    qry_logincor_edit_foco_texto: TIntegerField;
    TabSheet4: TTabSheet;
    pnl_skin: TXBanner;
    Button2: TButton;
    Button3: TButton;
    Button11: TButton;
    Button12: TButton;
    Button14: TButton;
    Button15: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button16: TButton;
    Button17: TButton;
    qry_loginrelevancia: TIntegerField;
    qry_loginos_aberto_fundo: TIntegerField;
    qry_loginos_aberto_texto: TIntegerField;
    qry_loginos_pronto_fundo: TIntegerField;
    qry_loginos_pronto_texto: TIntegerField;
    qry_loginos_retirado_fundo: TIntegerField;
    qry_loginos_retirado_texto: TIntegerField;
    qry_loginos_cancelado_fundo: TIntegerField;
    qry_loginos_cancelado_texto: TIntegerField;
    Panel3: TPanel;
    lBL_ABERTO_: TLabel;
    Lbl_pronto_: TLabel;
    Lbl_entregue_: TLabel;
    Lbl_cancelado_: TLabel;
    Edit_aberto_: TEdit;
    Edit_pronto_: TEdit;
    Edit_entregue_: TEdit;
    Edit_cancelado_: TEdit;
    Pnl_Dbagrid: TXBanner;
    procedure FormCreate(Sender: TObject);
    procedure Pnl_SuperiorClick(Sender: TObject);
    procedure Btn_Titulo_superiorClick(Sender: TObject);
    procedure Btn_Titulo_InferiorClick(Sender: TObject);
    procedure Btn_Titulo_textoClick(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Pnl_CorpoClick(Sender: TObject);
    procedure Lbl_tituloClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Btn_cor_edit_entradaClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Lbl_corpoClick(Sender: TObject);
    procedure Edit_EntradaClick(Sender: TObject);
    procedure Edit_em_focoClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cmb_cores_padroesChange(Sender: TObject);
    procedure cmb_cores_padroesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure TabSheet3Exit(Sender: TObject);
    procedure Btn_FixarClick(Sender: TObject);
    procedure Btn_Excluir_cor_PadraoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
  private
    procedure carrega_core_padroes;
    procedure seta_cores_user;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_configuracoes: TFrm_configuracoes;

implementation

uses
  DM, U_menu;

{$R *.dfm}

procedure TFrm_configuracoes.Button10Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      Pnl_Corpo_1.Colorfor := DialogColor.Color;
      Pnl_Corpo.Colorfor   := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_corpo_Inferior=:cor_corpo_Inferior where Codigo=:codigo');
         ParamByName('cor_corpo_Inferior').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;

end;

procedure TFrm_configuracoes.Button11Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET os_pronto_fundo=:os_pronto_fundo where Codigo=:codigo');
         ParamByName('os_pronto_fundo').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
      Edit_pronto_.Color := DialogColor.Color;
   end;

end;

procedure TFrm_configuracoes.Button12Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET os_pronto_texto=:os_pronto_texto where Codigo=:codigo');
         ParamByName('os_pronto_texto').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
      Edit_pronto_.Font.Color := DialogColor.Color;
   end;

end;

procedure TFrm_configuracoes.Btn_Titulo_textoClick(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      Lbl_titulo.Font.Color := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_titulo_texto=:cor_titulo_texto '+
                 'where Codigo=:codigo');
         ParamByName('cor_titulo_texto').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;
end;

procedure TFrm_configuracoes.Button13Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      Pnl_Corpo_1.ColorOf := DialogColor.Color;
      Pnl_Corpo.ColorOf   := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_corpo_Superior=:cor_corpo_Superior where Codigo=:codigo');
         ParamByName('cor_corpo_Superior').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;

end;

procedure TFrm_configuracoes.Button14Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET os_retirado_fundo=:os_retirado_fundo where Codigo=:codigo');
         ParamByName('os_retirado_fundo').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
      Edit_entregue_.Color := DialogColor.Color;
   end;

end;

procedure TFrm_configuracoes.Button15Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET os_retirado_texto=:os_retirado_texto where Codigo=:codigo');
         ParamByName('os_retirado_texto').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
       Edit_entregue_.Font.Color := DialogColor.Color;
   end;

end;

procedure TFrm_configuracoes.Button16Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET os_CANCELADO_fundo=:os_CANCELADO_fundo where Codigo=:codigo');
         ParamByName('os_CANCELADO_fundo').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
       Edit_cancelado_.Color := DialogColor.Color;
   end;
end;

procedure TFrm_configuracoes.Button17Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET os_CANCELADO_TEXTO=:os_CANCELADO_TEXTO where Codigo=:codigo');
         ParamByName('os_CANCELADO_TEXTO').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
      Edit_cancelado_.Font.Color := DialogColor.Color;
   end;

end;

procedure TFrm_configuracoes.Button1Click(Sender: TObject);
begin
   with u_dm.qry_aux do
   begin
     sql.Clear;
     sql.Add('Replace into LOGIN_CORES ('+
             'nome,' +
             'cor_titulo_superior,' +
             'cor_titulo_inferior,' +
             'cor_titulo_texto,' +
             'cor_padrao,' +
             'cor_corpo_superior,' +
             'cor_corpo_inferior,' +
             'cor_corpo_texto,' +
             'cor_edit_entrada_fundo,' +
             'cor_edit_entrada_texto,' +
             'cor_edit_foco_fundo,' +
             'cor_edit_foco_texto)');

     sql.Add('Values('+
             ':nome,' +
             ':cor_titulo_superior,' +
             ':cor_titulo_inferior,' +
             ':cor_titulo_texto,' +
             ':cor_padrao,' +
             ':cor_corpo_superior,' +
             ':cor_corpo_inferior,' +
             ':cor_corpo_texto,' +
             ':cor_edit_entrada_fundo,' +
             ':cor_edit_entrada_texto,' +
             ':cor_edit_foco_fundo,' +
             ':cor_edit_foco_texto)');
     ParamByName('nome').AsString                  := Edit_CorEsquema.Text;
     ParamByName('cor_titulo_superior').AsInteger := pnl_superior.ColorOf;
     ParamByName('cor_titulo_inferior').AsInteger := pnl_superior.ColorFor;
     ParamByName('cor_titulo_texto').AsInteger    := Lbl_titulo.Font.Color;

     ParamByName('cor_padrao').AsInteger          := 255;

     ParamByName('cor_corpo_superior').AsInteger := Pnl_Corpo.ColorOf;
     ParamByName('cor_corpo_inferior').AsInteger := Pnl_Corpo.ColorFor;
     ParamByName('cor_corpo_texto').AsInteger    := Lbl_corpo.font.Color;

     ParamByName('cor_edit_entrada_fundo').AsInteger := Edit_Entrada.Color;
     ParamByName('cor_edit_entrada_texto').AsInteger := Edit_Entrada.Font.Color;

     ParamByName('cor_edit_foco_fundo').AsInteger := Edit_em_foco.Color;
     ParamByName('cor_edit_foco_texto').AsInteger := Edit_em_foco.Font.Color;
     ExecSQL;
   end;
   // carrega as core no combo
   carrega_core_padroes;
end;

procedure TFrm_configuracoes.Button2Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET os_aberto_fundo=:os_aberto_fundo where Codigo=:codigo');
         ParamByName('os_aberto_fundo').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
      Edit_aberto_.Color := DialogColor.Color;
   end;

end;

procedure TFrm_configuracoes.Button3Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      //Pnl_Corpo_1.ColorOf := DialogColor.Color;
      //Pnl_Corpo.ColorOf   := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET os_aberto_texto=:os_aberto_texto where Codigo=:codigo');
         ParamByName('os_aberto_texto').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
       Edit_aberto_.font.Color := DialogColor.Color;
   end;

end;

procedure TFrm_configuracoes.Btn_Excluir_cor_PadraoClick(Sender: TObject);
var controle : Boolean;
    L,
    caminho  : String;
    f        : TextFile;

begin
   if MessageDlg('Tem Certeza Que deseja Excluir Este Registro?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
      // logar as exclusões
        Caminho := '.\LOGconfir_cores\';
        ForceDirectories(Caminho);
        Caminho := caminho +'.LOG';
        AssignFile(F, Caminho);
        //apaga depois

        AssignFile(f,caminho);
        if FileExists(caminho) then
        begin
           Reset(F);
           Append(F);
        end
        else
        begin
           Rewrite(F);
              //                                                                                                          1         1         1         1         1         1
              //      0         1         2         3         4         5         6         7         8         9         0         1         2         3         4         5
              //      0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
           Writeln(F,'|----------|--------------------------------------------------|--------------------|--------------------|----------|--------------------|');
           Writeln(F,'|   Data   | Descritivo                                       |Dia da Semana       |Relevancia          | Tipo     |  data e hora       |');
           Writeln(F,'|----------|--------------------------------------------------|--------------------|--------------------|----------|--------------------|');
        end;

       { L :=     '|' + padr(Edit_data.Text         ,10);
        L := L + '|' + padL(Edit_descritivo.Text   ,50);
        L := L + '|' + PadL(Edit_dia_semana.Text   ,20);
        L := L + '|' + PadL(Edit_relevancia.Text   ,20);
        L := L + '|' + PadL(Edit_tipo.Text         ,10);
        L := L + '|' + PadL(FormatDateTime('DD/MM/YYYY HH:MM:ss',now),20)+'|';

        Writeln(F,L);
        }
        CloseFile(F);
      with u_dm.qry_aux do
      begin
         sql.clear;
         sql.add('Delete from login_cores where nome=:nome');
         Params[0].AsString := cmb_cores_padroes.Text;
         ExecSql;
         sql.clear;
         sql.add('Select * from login_cores order by nome');
         Open;
      end;
      cmb_cores_padroes.Clear;
      u_dm.qry_aux.First;
      while not u_dm.qry_aux.eof do
      begin
        cmb_cores_padroes.Items.Add(U_Dm.qry_aux.FieldByName('nome').AsString);
        u_dm.qry_aux.Next;
      end;
   end;

end;

procedure TFrm_configuracoes.carrega_core_padroes;
begin
  cmb_cores_padroes.Clear;
  with U_Dm.qry_aux do
  begin
    sql.Clear;
    sql.Add('Select * from login_cores order by nome');
    Open;
  end;
  U_Dm.qry_aux.First;
  while not U_Dm.qry_aux.Eof do
  begin
     cmb_cores_padroes.Items.Add(U_Dm.qry_aux.FieldByName('nome').AsString);
     U_Dm.qry_aux.Next;
  end;
end;

procedure TFrm_configuracoes.cmb_cores_padroesChange(Sender: TObject);
begin
   // posiciona no ponteiro
   if Length(cmb_cores_padroes.Text) > 0 then
   begin
       with  u_dm.qry_aux do
       begin
         sql.Clear;
         sql.Add('Select * from login_cores where nome=:nome');
         ParamByName('nome').AsString := cmb_cores_padroes.Text;
         Open;
       end;
       if u_dm.qry_aux.RecordCount > 0 then
       begin
         pnl_superior.ColorOf    := u_dm.qry_Aux.FieldByName('cor_titulo_superior').Value;
         pnl_superior.ColorFor   := u_dm.qry_Aux.FieldByName('cor_titulo_inferior').Value;
         pnl_superior_2.ColorOf  := u_dm.qry_Aux.FieldByName('cor_titulo_superior').Value;
         pnl_superior_2.ColorFor := u_dm.qry_Aux.FieldByName('cor_titulo_inferior').Value;
         Lbl_titulo.Font.Color   := u_dm.qry_Aux.FieldByName('cor_titulo_texto').AsInteger;
         Lbl_corpo.font.Color    := u_dm.qry_Aux.FieldByName('cor_corpo_texto').Value;
         Edit_Entrada.Color      := u_dm.qry_Aux.FieldByName('cor_edit_entrada_fundo').Value;
         Edit_Entrada.Font.Color := u_dm.qry_Aux.FieldByName('cor_edit_entrada_texto').Value;
         Edit_em_foco.Color      := u_dm.qry_Aux.FieldByName('cor_edit_foco_fundo').Value;
         Edit_em_foco.Font.Color := u_dm.qry_Aux.FieldByName('cor_edit_foco_texto').Value;
         Pnl_Corpo.ColorOf       := u_dm.qry_Aux.FieldByName('cor_corpo_superior').Value;
         Pnl_Corpo.ColorFor      := u_dm.qry_Aux.FieldByName('cor_corpo_inferior').Value;
         Pnl_Corpo_1.ColorOf     := u_dm.qry_Aux.FieldByName('cor_corpo_superior').Value;
         Pnl_Corpo_1.ColorFor    := u_dm.qry_Aux.FieldByName('cor_corpo_inferior').Value;

         Edit_aberto_.Color      := u_dm.qry_Aux.FieldByName('os_aberto_fundo').Value;
         Edit_aberto_.Font.Color := u_dm.qry_Aux.FieldByName('os_aberto_texto').Value;



         Edit_pronto_.Color      := u_dm.qry_Aux.FieldByName('os_pronto_fundo').Value;
         Edit_pronto_.Font.Color := u_dm.qry_Aux.FieldByName('os_pronto_texto').Value;

         Edit_entregue_.Color      := u_dm.qry_Aux.FieldByName('os_retirado_fundo').Value;
         Edit_entregue_.Font.Color := u_dm.qry_Aux.FieldByName('os_retirado_texto').Value;

         Edit_cancelado_.Color      := u_dm.qry_Aux.FieldByName('os_cancelado_fundo').Value;
         Edit_cancelado_.Font.Color := u_dm.qry_Aux.FieldByName('os_cancelado_texto').Value;


         Application.ProcessMessages;
       end;
       Btn_Fixar.Enabled := True;
       Btn_Excluir_cor_Padrao.Enabled := True;
       Exit;
   end;
   Btn_Fixar.Enabled := False;
   Btn_Excluir_cor_Padrao.Enabled := False;

end;

procedure TFrm_configuracoes.cmb_cores_padroesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
begin
   // posiciona no ponteiro
   {
   with  u_dm.qry_aux do
   begin
     sql.Clear;
     sql.Add('Select * from login_cores where nome=:nome');
     ParamByName('nome').AsString := cmb_cores_padroes.Text;
     Open;
   end;
   if u_dm.qry_aux.RecordCount > 0 then
   begin
   pnl_superior.ColorOf    := u_dm.qry_aUX.FieldByName('cor_titulo_superior').Value;
   pnl_superior.ColorFor   := u_dm.qry_aUX.FieldByName('cor_titulo_inferior').Value;
   pnl_superior_2.ColorOf  := u_dm.qry_aUX.FieldByName('cor_titulo_superior').Value;
   pnl_superior_2.ColorFor := u_dm.qry_aUX.FieldByName('cor_titulo_inferior').Value;
   Lbl_titulo.Font.Color   := u_dm.qry_aUX.FieldByName('cor_titulo_texto').AsInteger;
   Lbl_corpo.font.Color    := u_dm.qry_aUX.FieldByName('cor_corpo_texto').Value;
   Edit_Entrada.Color      := u_dm.qry_aUX.FieldByName('cor_edit_entrada_fundo').Value;
   Edit_Entrada.Font.Color := u_dm.qry_aUX.FieldByName('cor_edit_entrada_texto').Value;
   Edit_em_foco.Color      := u_dm.qry_aUX.FieldByName('cor_edit_foco_fundo').Value;
   Edit_em_foco.Font.Color := u_dm.qry_aUX.FieldByName('cor_edit_foco_texto').Value;
   Pnl_Corpo.ColorOf       := u_dm.qry_aUX.FieldByName('cor_corpo_superior').Value;
   Pnl_Corpo.ColorFor      := u_dm.qry_aUX.FieldByName('cor_corpo_inferior').Value;
   Pnl_Corpo_1.ColorOf     := u_dm.qry_aUX.FieldByName('cor_corpo_superior').Value;
   Pnl_Corpo_1.ColorFor    := u_dm.qry_aUX.FieldByName('cor_corpo_inferior').Value;
   Application.ProcessMessages;
   end;
    }
end;

procedure TFrm_configuracoes.Button5Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      Lbl_corpo.Font.Color := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_corpo_texto=:cor_corpo_texto '+
                 'where Codigo=:codigo');
         ParamByName('cor_corpo_texto').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;

end;

procedure TFrm_configuracoes.Button7Click(Sender: TObject);
begin
      if DialogColor.Execute then
   begin
      Edit_em_foco.Color := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add(' UpDate  login SET '+
                 ' cor_edit_foco_fundo=:cor_edit_foco_fundo '+
                 ' where Codigo=:codigo');
         ParamByName('cor_edit_foco_fundo').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;

end;

procedure TFrm_configuracoes.Button8Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      Edit_Entrada.Font.Color := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_edit_entrada_texto=:cor_edit_entrada_texto where Codigo=:codigo');
         ParamByName('cor_edit_entrada_texto').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;

end;

procedure TFrm_configuracoes.Button9Click(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      Edit_em_foco.Font.Color := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_edit_foco_texto=:cor_edit_foco_texto where Codigo=:codigo');
         ParamByName('cor_edit_foco_texto').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;

end;

procedure TFrm_configuracoes.Edit_em_focoClick(Sender: TObject);
begin
Button7Click(self);
end;

procedure TFrm_configuracoes.Edit_EntradaClick(Sender: TObject);
begin
   // Btn_cor_edit_entradaClick(self);
end;

procedure TFrm_configuracoes.Btn_cor_edit_entradaClick(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      Edit_Entrada.Color := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_edit_entrada_fundo=:cor_edit_entrada_fundo where Codigo=:codigo');
         ParamByName('cor_edit_entrada_fundo').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;

end;

procedure TFrm_configuracoes.Btn_Titulo_superiorClick(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      pnl_superior.ColorOf   := DialogColor.Color;
      Pnl_superior_2.ColorOf := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_titulo_superior=:cor_titulo_superior where Codigo=:codigo');
         ParamByName('cor_titulo_superior').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;

end;

procedure TFrm_configuracoes.Btn_FixarClick(Sender: TObject);
begin


  //  UPDATE `login` SET `cor_titulo_superior`='12632256' WHERE (`codigo`='USER')
   with qry_login do
   begin
     sql.Clear;
     sql.Add('UpDate LOGIN SET '+
             'cor_titulo_superior    =:cor_titulo_superior , ' +
             'cor_titulo_inferior    =:cor_titulo_inferior , ' +
             'cor_titulo_texto       =:cor_titulo_texto , ' +
             'cor_corpo_superior     =:cor_corpo_superior , ' +
             'cor_corpo_inferior     =:cor_corpo_inferior , ' +
             'cor_corpo_texto        =:cor_corpo_texto , ' +
             'cor_edit_entrada_fundo =:cor_edit_entrada_fundo , ' +
             'cor_edit_entrada_texto =:cor_edit_entrada_texto  , ' +
             'cor_edit_foco_fundo    =:cor_edit_foco_fundo , ' +
             'cor_edit_foco_texto    =:cor_edit_foco_texto '+
             ' Where (codigo            =:codigo)');
     ParamByName('cor_titulo_superior').AsInteger:= u_dm.qry_aux.FieldByName('cor_titulo_superior').asInteger;
     ParamByName('cor_titulo_inferior').Value    := u_dm.qry_aux.FieldByName('cor_titulo_inferior').value;
     ParamByName('cor_titulo_texto').Value       := u_dm.qry_aux.FieldByName('cor_titulo_texto').value;
     ParamByName('cor_corpo_superior').Value     := u_dm.qry_aux.FieldByName('cor_corpo_superior').value;
     ParamByName('cor_corpo_inferior').Value     := u_dm.qry_aux.FieldByName('cor_corpo_inferior').value;
     ParamByName('cor_corpo_texto').Value        := u_dm.qry_aux.FieldByName('cor_corpo_texto').value;
     ParamByName('cor_edit_entrada_fundo').Value := u_dm.qry_aux.FieldByName('cor_edit_entrada_fundo').value;
     ParamByName('cor_edit_entrada_texto').Value := u_dm.qry_aux.FieldByName('cor_edit_entrada_texto').value;
     ParamByName('cor_edit_foco_fundo').Value    := u_dm.qry_aux.FieldByName('cor_edit_foco_fundo').value;
     ParamByName('cor_edit_foco_texto').Value    := u_dm.qry_aux.FieldByName('cor_edit_foco_texto').value;
     ParamByName('codigo').Value                   := u_dm.c_Pub_User;
     ExecSQL;
   end;
end;

procedure TFrm_configuracoes.Btn_Titulo_InferiorClick(Sender: TObject);
begin
   if DialogColor.Execute then
   begin
      with qry_login do
      pnl_superior.ColorFor   := DialogColor.Color;
      pnl_superior_2.ColorFor := DialogColor.Color;
      with qry_login do
      begin
         sql.Clear;
         sql.Add('UpDate  login SET cor_titulo_inferior=:cor_titulo_inferior where Codigo=:codigo');
         ParamByName('cor_titulo_inferior').Value := DialogColor.Color;
         ParamByName('codigo').AsString := u_dm.c_Pub_User;
         ExecSQL;
      end;
   end;
end;

procedure TFrm_configuracoes.FormCreate(Sender: TObject);
begin
   //

   with qry_login do
   begin
     sql.Clear;
     sql.Add('Select * from Login where codigo=:codigo');
     ParamByName('codigo').AsString := u_dm.c_Pub_User;
     Open;
   end;


   if qry_login.RecordCount = 0 then
   begin
     with qry_login do
     begin
       sql.Clear;
       sql.Add('Insert Into login (codigo, nivel)');
       sql.Add('Values(:codigo,:nivel)');
       ParamByName('codigo').AsString := u_dm.c_Pub_User;
       ParamByName('nivel').AsInteger := 4;;
       ExecSQL;
       sql.Clear;
       sql.Add('Select * from Login where codigo=:codigo');
       ParamByName('codigo').AsString := u_dm.c_Pub_User;
       Open;
     end;
   end;

   // talela cores default
   with u_dm.qry_aux do
   begin
     sql.Clear;
     sql.Add('Create table IF NOT EXISTS login_cores( ' +
             'nome                   varchar(20)  DEFAULT NULL,' +
             'cor_titulo_superior    int(11) NOT NULL DEFAULT "0", ' +
             'cor_titulo_inferior    int(11) NOT NULL DEFAULT "0", ' +
             'cor_titulo_texto       int(11) NOT NULL DEFAULT "0", ' +
             'cor_padrao             int(11) NOT NULL DEFAULT "0", ' +
             'cor_corpo_superior     int(11) NOT NULL DEFAULT "0", ' +
             'cor_corpo_inferior     int(11) NOT NULL DEFAULT "0", ' +
             'cor_corpo_texto        int(11) NOT NULL DEFAULT "0", ' +
             'cor_edit_entrada_fundo  int(11) NOT NULL, ' +
             'cor_edit_entrada_texto  int(11) NOT NULL, ' +
             'cor_edit_foco_fundo     int(11) NOT NULL, ' +
             'cor_edit_foco_texto     int(11) NOT NULL, ' +
             'PRIMARY KEY (nome) ' +
             ') ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1;');
     ExecSQL;
   end;
   carrega_core_padroes;
end;

procedure TFrm_configuracoes.FormShow(Sender: TObject);
begin
   seta_cores_user;
end;


procedure TFrm_configuracoes.seta_cores_user;
begin
   with qry_login do
   begin
     sql.Clear;
     sql.Add('Select * from login where codigo=:codigo');
     ParamByName('codigo').AsString := u_dm.c_Pub_User;
     Open;
   end;
   pnl_superior.ColorOf    := qry_login.FieldByName('cor_titulo_superior').Value;
   pnl_superior.ColorFor   := qry_login.FieldByName('cor_titulo_inferior').Value;
   pnl_superior_2.ColorOf  := qry_login.FieldByName('cor_titulo_superior').Value;
   pnl_superior_2.ColorFor := qry_login.FieldByName('cor_titulo_inferior').Value;

   Lbl_titulo.Font.Color   := qry_login.FieldByName('cor_titulo_texto').AsInteger;

   // corpo
   Lbl_corpo.font.Color    := qry_login.FieldByName('cor_corpo_texto').Value;
   Edit_Entrada.Color      := qry_login.FieldByName('cor_edit_entrada_fundo').Value;
   Edit_Entrada.Font.Color := qry_login.FieldByName('cor_edit_entrada_texto').Value;

   // carrega as cores de status de OS
   Edit_aberto_.Color      := qry_login.FieldByName('os_aberto_fundo').Value;
   Edit_aberto_.Font.Color := qry_login.FieldByName('os_aberto_texto').Value;

   Edit_pronto_.Color      := qry_login.FieldByName('os_pronto_fundo').Value;
   Edit_pronto_.Font.Color := qry_login.FieldByName('os_pronto_texto').Value;

   Edit_entregue_.Color      := qry_login.FieldByName('os_retirado_fundo').Value;
   Edit_entregue_.Font.Color := qry_login.FieldByName('os_retirado_texto').Value;

   Edit_cancelado_.Color      := qry_login.FieldByName('os_cancelado_fundo').Value;
   Edit_cancelado_.Font.Color := qry_login.FieldByName('os_cancelado_texto').Value;

  // -----------------------------------------------------------------------------------------------------------------------


   Edit_em_foco.Color      := qry_login.FieldByName('cor_edit_foco_fundo').Value;
   Edit_em_foco.Font.Color := qry_login.FieldByName('cor_edit_foco_texto').Value;

   Pnl_Corpo.ColorOf    := qry_login.FieldByName('cor_corpo_superior').Value;
   Pnl_Corpo.ColorFor   := qry_login.FieldByName('cor_corpo_inferior').Value;
   Pnl_Corpo_1.ColorOf  := qry_login.FieldByName('cor_corpo_superior').Value;
   Pnl_Corpo_1.ColorFor := qry_login.FieldByName('cor_corpo_inferior').Value;
   //pnl_superior.Color      := qry_login.FieldByName('cor_titulo_texto').Value;
   Application.ProcessMessages;
end;

procedure TFrm_configuracoes.Lbl_corpoClick(Sender: TObject);
begin
  Button5Click(self);
end;

procedure TFrm_configuracoes.Lbl_tituloClick(Sender: TObject);
begin
   //PageControl1.ActivePage := TabSheet3;
end;

procedure TFrm_configuracoes.Pnl_CorpoClick(Sender: TObject);
begin
   //PageControl1.ActivePage := TabSheet3;
end;

procedure TFrm_configuracoes.Pnl_SuperiorClick(Sender: TObject);
begin
 //PageControl1.ActivePage := TabSheet3;
end;

procedure TFrm_configuracoes.TabSheet1Show(Sender: TObject);
begin
   Lbl_corpo.Visible    := False;
   Edit_Entrada.Visible := False;
   Edit_em_foco.Visible := False;
   Panel3.Visible       := False;


end;

procedure TFrm_configuracoes.TabSheet2Show(Sender: TObject);
begin
   Panel3.Visible       := False;
   Lbl_corpo.Visible       := True;
   Edit_Entrada.Visible    := True;
   Edit_em_foco.Visible    := True;

   lBL_ABERTO_.Visible     := False;
   Lbl_pronto_.Visible     := False;
   Lbl_entregue_.Visible   := False;
   Lbl_cancelado_.Visible  := False;

   edit_ABERTO_.Visible    := False;
   edit_pronto_.Visible    := False;
   edit_entregue_.Visible  := False;
   edit_cancelado_.Visible := False;


end;

procedure TFrm_configuracoes.TabSheet3Exit(Sender: TObject);
begin
   // assume as core do user
   seta_cores_user;
end;

procedure TFrm_configuracoes.TabSheet4Show(Sender: TObject);
begin
   Lbl_corpo.Visible       := False;
   Edit_Entrada.Visible    := False;
   Edit_em_foco.Visible    := False;

   lBL_ABERTO_.Visible     := True;
   Lbl_pronto_.Visible     := True;
   Lbl_entregue_.Visible   := True;
   Lbl_cancelado_.Visible  := True;

   edit_ABERTO_.Visible    := True;
   edit_pronto_.Visible    := True;
   edit_entregue_.Visible  := True;
   edit_cancelado_.Visible := True;
   Panel3.Visible          := True;

end;

end.
