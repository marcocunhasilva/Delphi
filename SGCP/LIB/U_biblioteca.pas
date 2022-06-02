{
  // --------------------------------------------------------------------------//
  // Biblioteca padrão para os sistemas gerados pelo PLEBEU                    //
  // Porprietario - Itamar Roloff                                              //
  // Empresa - Roloff & Silva Informatica LTDA                                 //
  //---------------------------------------------------------------------------//

  03/12/2016 [I] - GravaINI cedida pelo colega Joabe
  03/12/2016 [I] - LerINI cedida pelo colega Joabe
  31/07/2017 [I] - tipo campos

}
unit U_biblioteca;

interface

Uses
  Windows,
  Mask,
  IniFiles,
  Jpeg,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  FireDAC.Phys,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait,

  DB,
  // clases para leitura de arquivos texto de Backup 18/11/18 MAX
  // uListaArquivo,
  // U_Ler_Arquivo_Texto,
  utl_biblioteca,
  DM;

procedure GravaINI      (const secao, field, value: String);
function LerINI         (const secao, field: String; const default: string = ''): String;
function tira_under     (variavel: string): string;
function tipo_campo     (aux: tfieldType): string;
function CaminhoImagens: string;
function CaminhoIni:     string;
function pega_duas_casa (trabalho: string): string;
Procedure LeExtrutura(tabela: String);
procedure Grava_Arquivo_Rec(tabela, chave_pk: String);

type
  tempListaTexto = record
    Indice     : Integer;
    Nome_Campo : string;
    Alinhado   : string;
    pos_Inicio : integer;
    Tamanho    : integer;
 end;


 var
 _tempListaTexto : array of   tempListaTexto;
implementation

procedure Grava_Arquivo_Rec(tabela, chave_pk: String);
var w_caminho : string;
    F : TextFile;
    L : String;
    i : integer;
    sTemp : string;
begin
   // busca no INI o caminho do Backup
   w_caminho := lerINI('BACKUP','Caminho');
   if copy(w_caminho,Length(w_caminho)-1,1) <> '\' then
      w_caminho := w_caminho + '\';

   if w_caminho = '' then
   begin
     ShowMessage('Caminho do Backup Texto NÃO Definido no arquivo INI');
     Exit
   end;
   if FileExists(w_caminho+tabela+'.Rec') then
      DeleteFile(w_caminho+tabela+'.Rec');

   if not FileExists(w_caminho+tabela+'.Rec') then
   begin
      AssignFile(F, w_caminho+tabela+'.Rec');
      Rewrite(F);
      L := 'Select * from ' + tabela;
      with U_dm.qry_aux do
      begin
        Close;
        sql.Clear;
        sql.Add(L);
        Open;
      end;
      U_DM.qry_aux.First;
      while not U_dm.qry_aux.Eof do
      begin
        L := '';
        for I := 0 to u_dm.Qry_aux.FieldCount - 1 do
        begin
          if _tempListaTexto[i].Alinhado = 'E' then
            sTemp := padl(u_dm.Qry_Aux.fields[I].Text, _tempListaTexto[i].Tamanho)
          else
             sTemp := padr(u_dm.Qry_Aux.fields[I].Text, _tempListaTexto[i].Tamanho);
          L := L + sTemp;
        end;
        Writeln(F,L);
        U_dm.qry_aux.Next;
      end;
      closefile(F);
   end
   else
   begin
      AssignFile(F, w_caminho+tabela+'.Rec');
      Reset(F);
      with U_dm.qry_aux do
      begin
        sql.Clear;
        sql.Add('Select * from :tab where id=:id');
        ParamByName('tab').AsString := tabela;
        ParamByName('id').AsString := chave_pk;
        Open;
      end;
      U_DM.qry_aux.First;
   {
        L := '';
        for I := 0 to u_dm.Qry_aux.FieldCount - 1 do
        begin
          if
          alinha_E then
             sTemp := padl(u_dm.Qry_Aux.fields[I].FieldName, Tamanho)
          else
             sTemp := padr(u_dm.Qry_Aux.fields[I].FieldName, Tamanho);
          L := L + sTemp;
        end;
        Writeln(F,L);

      end;
         }
   end;



end;

Procedure LeExtrutura(tabela: String);
var
  a_size, w_posicao, i, a_inicio: integer;

begin
  with U_Dm do
  begin
    FDM_Fields.Active := true;
    FDM_Fields.BaseObjectName := tabela;
    FDM_Fields.ObjectName     := tabela;
//    FDM_Fields.MetaInfoKind   := mkTableFields;
    FDM_Fields.Open;
    FDM_Fields.First;
    w_posicao := 0;
    i := 0;
    setlength(_tempListaTexto, FDM_Fields.RecordCount);
    while not FDM_Fields.Eof do
    begin
         A_Size := FDM_Fields.FieldByName('COLUMN_LENGTH').AsiNTEGER ;

        if FDM_Fields.FieldByName('COLUMN_LENGTH').AsiNTEGER <> 0 then
          A_Size := FDM_Fields.FieldByName('COLUMN_LENGTH').AsiNTEGER;

        if FDM_Fields.FieldByName('COLUMN_PRECISION').AsiNTEGER <> 0 then
          A_Size := FDM_Fields.FieldByName('COLUMN_PRECISION').AsiNTEGER;

        if FDM_Fields.FieldByName('COLUMN_NAME').AsString = 'DATA' then
          A_Size := 10;

        if FDM_Fields.FieldByName('COLUMN_NAME').AsString = 'DATATIME' then
          A_Size := 19;

        a_inicio := w_posicao;

        _tempListaTexto[i].Indice     := FDM_Fields.FieldByName('COLUMN_POSITION').AsiNTEGER;
        _tempListaTexto[i].Nome_campo := FDM_Fields.FieldByName('COLUMN_NAME').AsString;
         if pos('CHAR', FDM_Fields.FieldByName('COLUMN_TYPENAME').AsString) <> 0 then
            _tempListaTexto[i].Alinhado := 'E'
          ELSE
            _tempListaTexto[i].Alinhado := 'D';

        _tempListaTexto[i].pos_Inicio := a_inicio;
        _tempListaTexto[i].Tamanho  := a_size;

        w_posicao := w_posicao + a_size + 1;
        inc(i);
      // adicionar um registro nos vetores
        FDM_Fields.Next;
    end;
  end;

end;

function CaminhoImagens: string;
var
  LAppPath      : string;
  LExeName      : string;
  LAppPathImagem: string;
begin
  LAppPath := ExtractFilePath(Application.ExeName);
  LAppPathImagem := LAppPath + 'Imagens';
  Result := LAppPathImagem;
end;

function CaminhoIni: string;
var
  LAppPath          : string;
  LExeName          : string;
  LExeNameWithoutExt: string;
begin
  LAppPath := ExtractFilePath(Application.ExeName);
  LExeName := ExtractFileName(Application.ExeName);
  LExeNameWithoutExt := ChangeFileExt(LExeName, '.ini');
  Result := LAppPath + LExeNameWithoutExt;
end;

procedure GravaINI(const secao, field, value: String);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(CaminhoIni);
  try
    ini.WriteString(secao, field, value.Trim);
  finally
    ini.Free;
  end;
end;

function LerINI(const secao, field, default: String): String;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(CaminhoIni);
  try
    Result := ini.ReadString(secao, field, default).Trim;
  finally
    ini.Free;
  end;
end;

function tira_under(variavel: string): string;
var
  aux: string;
  x  : integer;
begin
  aux := '';
  for x := 1 to length(variavel) do
  begin
    if variavel[x] = '_' then
      aux := aux + ' '
    else
      aux := aux + variavel[x];
  end;
  Result := aux;
end;

function  pega_duas_casa(trabalho : string) : string;
var pos_ponto      : Integer;
    precisao_video : Integer;
begin
   precisao_video := 1;
   pos_ponto := Pos('.',trabalho);
   if pos_ponto > 0 then
   begin
      result := Copy(trabalho,1,pos_ponto + precisao_video);
      exit;
   end
   else
   begin
      pos_ponto := Pos(',',trabalho);
      result := Copy(trabalho,1,pos_ponto + precisao_video);
      exit;
   end;
   result := trabalho;
end;


function tipo_campo(aux: tfieldType): string;
var
  WTipo: string;
begin
  {
    TFieldType = (ftUnknown, ftString, ftSmallint, ftInteger, ftWord,
    ftBoolean, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime,
    ftBytes, ftVarBytes, ftAutoInc, ftBlob, ftMemo, ftGraphic, ftFmtMemo,
    ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftFixedChar, ftWideString,
    ftLargeint, ftADT, ftArray, ftReference, ftDataSet, ftOraBlob, ftOraClob,
    ftVariant, ftInterface, ftIDispatch, ftGuid, ftTimeStamp, ftFMTBcd);
  }

  WTipo := 'Indefinido no banco';
  if aux = ftWideString then
    WTipo := 'String';
  if aux = ftString then
    WTipo := 'String';
  if aux = ftFMTBcd then
    WTipo := 'Float';
  if aux = ftBcd then
    WTipo := 'Float';
  if aux = ftSingle then
    WTipo := 'Float';
  if aux = ftfloat then
    WTipo := 'Float';
  if aux = ftDate then
    WTipo := 'Date';
  if aux = ftTime then
    WTipo := 'Time';
  if aux = ftDateTime then
    WTipo := 'DateTime';
  if aux = ftCurrency then
    WTipo := 'Currency';
  if aux = ftInteger then
    WTipo := 'Integer';
  if aux = ftLargeint then
    WTipo := 'Largeint';
  if aux = ftsmallint then
    WTipo := 'Integer';
  if aux = ftBoolean then
    WTipo := 'Boolean';
  if aux = ftWord then
    WTipo := 'Integer';
  if aux = ftAutoInc then
    WTipo := 'AutoInt';
  if aux = ftMemo then
    WTipo := 'Blob';
  if aux = ftBlob then
    WTipo := 'Blob';
  if aux = ftLongWord then
    WTipo := 'Largeint';
  if aux = ftOraBlob then
    WTipo := 'Blob';
  if aux = ftOraClob then
    WTipo := 'Clob';
  Result := WTipo;
end;

end.
