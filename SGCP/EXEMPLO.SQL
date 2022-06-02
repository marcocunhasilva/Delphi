qPesquisa.Close;
qPesquisa.SQLs.SelectSQL.Clear;
qPesquisa.SQLs.SelectSQL.Add('SELECT                      ');
qPesquisa.SQLs.SelectSQL.Add('   CLIENTES.ID_CLIENTE,              ');
qPesquisa.SQLs.SelectSQL.Add('   CLIENTES.DIA_VENCIMENTO,          ');
qPesquisa.SQLs.SelectSQL.Add('   CLIENTES.COBRAR_DIARIA,           ');
qPesquisa.SQLs.SelectSQL.Add('   CLIENTES.NOME,                    ');
qPesquisa.SQLs.SelectSQL.Add('   CLIENTES.RAZAOSOCIAL,             ');
qPesquisa.SQLs.SelectSQL.Add('   CLIENTES.CPFCNPJ,                 ');
qPesquisa.SQLs.SelectSQL.Add('   CLIENTES.ID_FORMA_PAGAMENTO,      ');
qPesquisa.SQLs.SelectSQL.Add('   CLIENTES.ID_CONDICAO_PAGAMENTO   ');

qPesquisa.SQLs.SelectSQL.Add(' FROM CLIENTES              ');

qPesquisa.SQLs.SelectSQL.Add(' WHERE                       ');
qPesquisa.SQLs.SelectSQL.Add('   (UPPER(CLIENTES.NOME)         LIKE :PARAMETRO) OR ');
qPesquisa.SQLs.SelectSQL.Add('   (UPPER(CLIENTES.RAZAOSOCIAL)  LIKE :PARAMETRO) OR ');
qPesquisa.SQLs.SelectSQL.Add('   (UPPER(REPLACE(REPLACE(REPLACE(CLIENTES.CPFCNPJ,''.'',''''),''-'',''''),''/'',''''))      LIKE :PARAMETRO)    ');
qPesquisa.SQLs.SelectSQL.Add(' ORDER BY CLIENTES.NOME     ');

if RadioGroup1.ItemIndex = 0 then
   Begin
   Parametro := '%'+UpperCase(Parametro)+'%';
   End
Else
   Begin
   Parametro := UpperCase(Parametro)+'%';
   End;

qPesquisa.ParamByName('Parametro').AsString := Parametro;
qPesquisa.Open;