// 06/05/19
with qry_aux do
begin
  sql.Clear;
  sql.Add('Select * from os_abertura where 1=0');
  Open;
end;
achou := '';
for X := 0 to qry_aux.FieldCount - 1 do
begin
  WNome := (qry_aux.fields[X].FieldName);
  if WNome = 'tec_responsavel' then
     achou := 'sim';
end;
if achou = '' then
begin
  with qry_aux do
  begin
    sql.clear;
    sql.add(' ALTER TABLE os_abertura');
    sql.add(' ADD COLUMN `tec_responsavel`  varchar(20) NULL AFTER `relevancia`,');
    sql.add(' ADD COLUMN `deslocamento`  varchar(20) NULL AFTER `tec_responsavel`;');
    EXECsql;
  end;
end;