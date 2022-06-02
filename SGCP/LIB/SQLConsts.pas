unit SQLConsts;

interface

const

  SELECT_PACIENTES =
   'SELECT '                                           + #13#10 +
   '  PAC.MATRICULA, '                                 + #13#10 +
   '  PAC.NOME, '                                      + #13#10 +
   '  PAC.ENDERECO'                                    + #13#10 +
   '  PAC.NUMERO'                                      + #13#10 +
   '  PAC.APART'                                       + #13#10 +
   '  PAC.COMPLEMENTO'                                 + #13#10 +
   ' , PAC.OBS'                                        + #13#10 +
' , PAC.UF'                                            + #13#10 +
'FROM PACIENTES PAC'                                   + #13#10 +
'INNER JOIN CIDADE   CID ON CID.CODIGO = PAC.CIDADE'   + #13#10 +
'INNER JOIN CONVENIO CON ON CON.CODIGO = PAC.CONVENIO' + #13#10 +
'INNER JOIN CBO      PRO ON PRO.CBO = PAC.PROFISSAO' ;

implementation
end.
