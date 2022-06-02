unit super_filtro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.CategoryButtons, Vcl.WinXCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, uDM;

procedure super_filtro(Conexao: string; nome_tabela: string);

implementation

procedure super_filtro(Conexao: string; nome_tabela: string);
var x,
    I,
    WTamanho,
    REGISTROS      : Integer;

    Ultimo_campo,
    achou,
    mudar,
    WNome,
    L,L2, L3      : string;
    slLista : TStringList;
    sStr1         : string;
    tempo_INI,
    TEMPO_FIM     : TTime;

begin

     tempo_INI := Now;
    //cria stringlist
    slLista := TStringList.Create;
    uDM.FD_Conn.GetKeyFieldNames( '' , '' ,Trim(nome_tabela) , '', slLista) ;
    if slLista.Count = 0 then
    begin
       ShowMessage('Tabela Sem PK nao pode ter SUPER FILTRO');
       Exit;
    end;
    if slLista.Count = 4 then
    begin
       ShowMessage('Limite de PK NAO pode ser Superior a 5 chaves');
       Exit;
    end;


   // valida se o campo existe na tabela
   L := 'Select * from ' +
        nome_tabela +
        ' where 1=0';

  with uDM.qry_aux do
  begin
    Conexao := '
    sql.Clear;
    sql.Add(L);
    Open;
  end;
  achou := '';
  mudar := 'NAO';
  for X := 0 to uDM.qry_aux.FieldCount - 1 do
  begin
    WNome    := (uDM.qry_aux.fields[X].FieldName);
    WTamanho := (uDM.qry_aux.fields[X].Size);
    if WNome = 'Super_Filtro' then
          achou := 'SIM';
  end;
  Ultimo_campo :=  WNome;
  if (achou = '') then
  begin
    L := ' ALTER TABLE ' +  nome_tabela +
         ' ADD COLUMN Super_Filtro  VARCHAR(4000) AFTER ' + Ultimo_campo + ' ;';
    with uDM.qry_aux do
    begin
      sql.clear;
      sql.add(L);
      ExecSQL;
    end;
  end;
  //===========================================
  L := 'Select * from ' +  nome_tabela +
      ' WHERE (super_filtro="") or (super_filtro IS NULL) ';

  with uDM.qry_aux do
  begin
    sql.Clear;
    sql.Add(L);
    Open;
  end;
  if uDM.qry_aux.RecordCount > 0 then
  begin
     REGISTROS := 0;
     uDM.qry_aux.first;

     while not uDM.qry_aux.eof do
     begin
           REGISTROS := REGISTROS + 1;
           L := '|';
           for I := 0 to uDM.Qry_aux.FieldCount - 1 do
             if length(uDM.Qry_Aux.fields[I].Text) > 0 then
                 L := L + uDM.Qry_Aux.fields[I].Text+'|';
           L := L + '|';

           if slLista.Count = 1 then
           begin
              with uDM.qry_temp do
              begin
                 sql.clear;

                 sql.add( ' UpDate '+ nome_tabela +
                       ' SET super_filtro=:super_filtro '+
                       '  WHERE ' + slLista[0]+ ' = :'+ slLista[0]);
                 Params[0].Value := L;
                 Params[1].Value := uDM.qry_aux.FieldByName(slLista[0]).Value;
                 ExecSQL;


              end;
           end;
           if slLista.Count > 1 then
           begin
              with uDM.qry_temp do
              begin

                 case SlLista.Count of
                    2: begin
                          sql.clear;

                          sql.add( ' UpDate '+ nome_tabela );
                          sql.add( ' SET super_filtro=:super_filtro ');
                          sql.add( '  WHERE ' + slLista[0]+ ' = :'+ slLista[0]);
                          sql.add( ' AND '+ slLista[1]+ ' = :'+ slLista[1]);

                          Params[0].Value := L;
                          Params[1].Value := uDM.qry_aux.FieldByName(slLista[0]).Value;
                          Params[2].Value := uDM.qry_aux.FieldByName(slLista[1]).Value;
                    end;
                    3: begin
                          sql.clear;

                          sql.add( ' UpDate '+ nome_tabela );
                          sql.add( ' SET super_filtro=:super_filtro ');
                          sql.add( '  WHERE ' + slLista[0]+ ' = :'+ slLista[0]);
                          sql.add( ' AND '+ slLista[1]+ ' = :'+ slLista[1]);
                          sql.add( ' AND '+ slLista[2]+ ' = :'+ slLista[2]);

                          Params[0].Value := L;
                          Params[1].Value := uDM.qry_aux.FieldByName(slLista[0]).Value;
                          Params[2].Value := uDM.qry_aux.FieldByName(slLista[1]).Value;
                          Params[3].Value := uDM.qry_aux.FieldByName(slLista[2]).Value;
                    end;
                    4: begin
                         sql.clear;

                          sql.add( ' UpDate '+ nome_tabela );
                          sql.add( ' SET super_filtro=:super_filtro ');
                          sql.add( '  WHERE ' + slLista[0]+ ' = :'+ slLista[0]);
                          sql.add( ' AND '+ slLista[1]+ ' = :'+ slLista[1]);
                          sql.add( ' AND '+ slLista[2]+ ' = :'+ slLista[2]);
                          sql.add( ' AND '+ slLista[3]+ ' = :'+ slLista[3]);

                          Params[0].Value := L;
                          Params[1].Value := uDM.qry_aux.FieldByName(slLista[0]).Value;
                          Params[2].Value := uDM.qry_aux.FieldByName(slLista[1]).Value;
                          Params[3].Value := uDM.qry_aux.FieldByName(slLista[2]).Value;
                          Params[3].Value := uDM.qry_aux.FieldByName(slLista[3]).Value;
                    end;
                    5: begin
                         sql.clear;

                          sql.add( ' UpDate '+ nome_tabela );
                          sql.add( ' SET super_filtro=:super_filtro ');
                          sql.add( '  WHERE ' + slLista[0]+ ' = :'+ slLista[0]);
                          sql.add( ' AND '+ slLista[1]+ ' = :'+ slLista[1]);
                          sql.add( ' AND '+ slLista[2]+ ' = :'+ slLista[2]);
                          sql.add( ' AND '+ slLista[3]+ ' = :'+ slLista[3]);
                          sql.add( ' AND '+ slLista[4]+ ' = :'+ slLista[4]);

                          Params[0].Value := L;
                          Params[1].Value := uDM.qry_aux.FieldByName(slLista[0]).Value;
                          Params[2].Value := uDM.qry_aux.FieldByName(slLista[1]).Value;
                          Params[3].Value := uDM.qry_aux.FieldByName(slLista[2]).Value;
                          Params[4].Value := uDM.qry_aux.FieldByName(slLista[3]).Value;
                          Params[5].Value := uDM.qry_aux.FieldByName(slLista[4]).Value;
                    end;
                 end;
                 ExecSQL;


              end;
           end;

           uDM.qry_aux.Next;
     end;

  end;
  TEMPO_FIM := Now;
  if uDM.qry_aux.RecordCount > 5 then
  begin

  ShowMessage('          Inicio: '+ formatdatetime('SS:ZZZ',TEMPO_Ini) + #10+#13+
              '           Funal :'+formatdatetime('SS:ZZZ',TEMPO_FIM)+#10+#13+
              '      Tempo Gasto: '+formatdatetime('SS:ZZZ',TEMPO_FIM-tempo_INI)+#10+#13+
              '-----------------------------'+#10+#13+
               nome_tabela+#10+#13+
              '         Registro: '+IntToStr(REGISTROS)+#10+#13+
              ' Campo na Tabela : '+IntToStr(uDM.qry_aux.FieldCount)+#10+#13+
              'Numero de Indices: '+IntToStr(slLista.Count)+#10+#13);
  end;

end;



// forma de uso

Super_Filtro('Dm.FdConn','Clientes');
