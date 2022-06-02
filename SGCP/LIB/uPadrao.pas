unit uPadrao;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.StdCtrls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  IniFiles,
  XBanner,
  JvExMask,
  JvToolEdit,
  JvBaseEdits,
  JvDatePickerEdit,
  JvValidateEdit,
  JvExStdCtrls,
  JvCombobox,
  UTL_APOIO;

type
  TFormPadrao = class(TForm)
    procedure FormCreateIta(vNameForm: String; w_user: string);
    procedure FormCloseIta(vNameForm:  String; w_user: string);
    procedure Posiciona_User;
    procedure FormShow(Sender: TObject);
    procedure monta_botoes(NameButton : String; aButton : TBitBtn);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormPadrao: TFormPadrao;

implementation

uses
  dm,
  U_menu;

{$R *.dfm}

procedure TFormPadrao.monta_botoes(NameButton : String; aButton : TBitBtn);
begin
  if FileExists('.\imagens\' + NameButton +'.bmp') then
  begin
    aButton.Glyph.LoadFromFile('.\imagens\' + NameButton +'.bmp');
    aButton.Font.Color := clBlack;
    aButton.Font.Style := [fsbold];
  end;

end;


procedure TFormPadrao.FormCreateIta(vNameForm: String; w_user: string);
 begin
    With U_dm.qry_memoria_janela do
    begin
       sql.Clear;
       sql.Add(' Select * from memoria_janela '+
               ' where w_janela = :w_Janela ' +
               ' and w_maquina = :w_maquina ');
       ParamByName('w_janela').AsString := vNameForm +
                                           '_' +
                                           frm_menu.Origem_Menu;;
       ParamByName('w_maquina').AsString := U_dm.c_Pub_User;
       Open;
    end;
    if U_dm.qry_memoria_janela.RecordCount > 0 then
    begin
       Self.Top    := U_dm.qry_memoria_janela.FieldByName('w_top').AsInteger;
       Self.Left   := U_dm.qry_memoria_janela.FieldByName('w_lef').AsInteger;
       Self.Height := U_dm.qry_memoria_janela.FieldByName('w_siz').AsInteger;
       Self.Width  := U_dm.qry_memoria_janela.FieldByName('w_wid').AsInteger;
       Application.ProcessMessages;
    end;
    // FormShow_ita(Sender: TObject);
 end;



procedure TFormPadrao.FormShow(Sender: TObject);
var i: Integer;
begin
    Posiciona_User;
    for I := 0 to ComponentCount - 1 do
    begin
        if Components[I] is TBitBtn then
          monta_botoes(Components[I].Name, TBitBtn(Components[I]));

        if POS('PNL_CORPO',UpperCase(TXBanner(Components[I]).Name))  > 0then
        begin
            TXBanner(Components[I]).ColorOf    := u_dm.qry_login.FieldByName('cor_corpo_superior').Value;
            TXBanner(Components[I]).ColorFor   := u_dm.qry_login.FieldByName('cor_corpo_inferior').Value;
        End;

        if (POS('PANEL_BOTOES',UpperCase(TXBanner(Components[I]).Name))  > 0) OR
           (POS('PNL_BOTOES',UpperCase(TXBanner(Components[I]).Name))  > 0)then
        Begin
          TXBanner(Components[I]).ColorOf    := u_dm.qry_login.FieldByName('cor_titulo_superior').Value;
          TXBanner(Components[I]).ColorFor   := u_dm.qry_login.FieldByName('cor_titulo_inferior').Value;
        End;

        if (Components[I] is TLabel) then
        begin
          if pos('LABEL5',UpperCase(Components[I].Name)) <> 0 then
            TLabel(Components[I]).Font.Color := u_dm.qry_login.FieldByName('cor_titulo_texto').AsInteger;
        end;

        if (Components[I] is TLabel) then
        begin
          if pos('LBL_',UpperCase(Components[I].Name)) <> 0 then
            TLabel(Components[I]).Font.Color := u_dm.qry_login.FieldByName('cor_corpo_texto').AsInteger;
        end;

        if (Components[I] is TEdit)           OR
           (Components[I] is TJvCalcEdit)     OR
           (Components[I] is TMemo)           OR
           (Components[I] is TJvCalcEdit)     OR
           (Components[I] is TJvValidateEdit) OR
           (Components[I] is TJvComboBox)     OR
           (Components[I] is TJvDateEdit)     then
        begin
          if pos('EDIT_',UpperCase(Components[I].Name)) <> 0 then
          begin
             TEdit(Components[I]).Color      := u_dm.qry_login.FieldByName('cor_edit_entrada_fundo').Value;
            TEdit(Components[I]).Font.Color := u_dm.qry_login.FieldByName('cor_edit_entrada_texto').Value;
          end;
        end;
   end;
end;

procedure TFormPadrao.Posiciona_User;
begin
   with u_dm.qry_login do
   begin
     sql.Clear;
     sql.Add('Select * from login where codigo=:codigo');
     ParamByName('codigo').AsString := u_dm.c_Pub_User;
     Open;
   end;
   //carrega as core no DM
   U_Dm.W_edit_foco_fundo    := U_Dm.qry_login.FieldByName('cor_edit_foco_fundo').Value;
   U_Dm.W_edit_foco_texto    := U_Dm.qry_login.FieldByName('cor_edit_foco_texto').Value;
   u_dm.W_edit_entrada_fundo := U_Dm.qry_login.FieldByName('cor_edit_entrada_fundo').Value;
   u_dm.W_edit_entrada_texto := U_Dm.qry_login.FieldByName('cor_edit_entrada_texto').Value;

end;

procedure TFormPadrao.FormCloseIta(vNameForm: String; w_user: string);
var ww_numero :  integer;
begin
  with u_dm.qry_memoria_janela do
  begin
    sql.clear;
    sql.add(' Select * from memoria_janela '+
            ' where w_janela = :w_janela '+
            ' and w_maquina = :w_maquina');
    ParamByName('w_janela').AsString := vNameForm+
                '_' +
                frm_menu.Origem_Menu;
    ParamByName('w_maquina').AsString := u_dm.c_Pub_User;
    open
  end;
  ww_numero := 0;
  if u_dm.qry_memoria_janela.RecordCount > 0 then
    ww_numero := u_dm.qry_memoria_janela.FieldByName('w_numero_de_usos').AsInteger + 1;
  with u_dm.qry_memoria_janela do
  begin
    sql.clear;
    sql.add('Replace into memoria_janela( w_janela, '+
            ' w_maquina, '+
            ' w_lef, '+
            ' w_top, '+
            ' w_wid, '+
            ' w_siz, '+
            ' w_data_uso, '+
            'w_numero_de_usos)');
    sql.Add('Values(:w_janela, '+
            ' :w_maquina, '+
            ' :w_lef, '+
            ' :w_top, '+
            ' :w_wid, '+
            ' :w_siz, '+
            ' :w_data_uso, '+
            ' :w_numero_de_usos)');
    ParamByName('w_janela').AsString          := vNameForm+
                                                 '_' +
                                                 frm_menu.Origem_Menu;
    ParamByName('w_maquina').AsString         := U_DM.c_Pub_User;
    ParamByName('w_lef').AsInteger            := Self.left;
    ParamByName('w_top').AsInteger            := Self.Top;
    ParamByName('w_wid').AsInteger            := Self.Width;
    ParamByName('w_siz').AsInteger            := Self.Height;
    ParamByName('w_data_uso').AsDateTime      := now;
    ParamByName('w_numero_de_usos').AsInteger := ww_numero;
    ExecSql;
  end;
end;
end.
