var
  SQLInit: TStringBuilder;
  SQLClientes: TStringBuilder;
  SQLIDPessoa: TStringBuilder;
  SQLPessoaNome: TStringBuilder;
  SQLPesquisaNome: TStringBuilder;
  SQLInsertPessoa: TStringBuilder;
  SQLUpdatePessoa: TStringBuilder;
  
implementation

procedure CreateSQL;
begin

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                              PESSOA                                      //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////

  SQLInit         := TStringBuilder.Create;
  SQLIDPessoa     := TStringBuilder.Create;
  SQLPessoaNome   := TStringBuilder.Create;
  SQLPesquisaNome := TStringBuilder.Create;
  SQLInsertPessoa := TStringBuilder.Create;
  SQLUpdatePessoa := TStringBuilder.Create;

  SQLInit.Append('SELECT ');
  SQLInit.Append('  P.IDPESSOA, ');
  SQLInit.Append('  P.NOME, ');
  SQLInit.Append('  P.DATANASCIMENTO ');
  SQLInit.Append('FROM ');
  SQLInit.Append('  PESSOA P ');

  // Pessoa por Código
  SQLIDPessoa.Append('SELECT ');
  SQLIDPessoa.Append('  P.IDPESSOA, ');
  SQLIDPessoa.Append('  P.NOME, ');
  SQLIDPessoa.Append('  P.DATANASCIMENTO ');
  SQLIDPessoa.Append('FROM ');
  SQLIDPessoa.Append('  PESSOA P ');
  SQLIDPessoa.Append('WHERE ');
  SQLIDPessoa.Append('  P.IDPESSOA = :IDPESSOA ');
  SQLIDPessoa.Append('ORDER BY ');
  SQLIDPessoa.Append('  P.IDPESSOA ');

  // Pessoa por NOME
  SQLPessoaNome.Append('SELECT ');
  SQLPessoaNome.Append('  P.IDPESSOA, ');
  SQLPessoaNome.Append('  P.NOME, ');
  SQLPessoaNome.Append('  P.DATANASCIMENTO ');
  SQLPessoaNome.Append('FROM ');
  SQLPessoaNome.Append('  PESSOA P ');
  SQLPessoaNome.Append('WHERE ');
  SQLPessoaNome.Append('  UPPER(P.NOME) LIKE ').Append(QuotedStr('%'));
  SQLPessoaNome.Append('|| UPPER(:Nome) || ').Append(QuotedStr('%')).Append(' ');
  SQLPessoaNome.Append('ORDER BY ');
  SQLPessoaNome.Append('  P.NOME;');

  SQLPesquisaNome.Append('SELECT ');
  SQLPesquisaNome.Append('  P.IDPESSOA, ');
  SQLPesquisaNome.Append('  P.NOME, ');
  SQLPesquisaNome.Append('  P.DATANASCIMENTO ');
  SQLPesquisaNome.Append('FROM ');
  SQLPesquisaNome.Append('  PESSOA P ');
  SQLPesquisaNome.Append('WHERE ');
  SQLPesquisaNome.Append('  UPPER(P.NOME) LIKE ').Append(QuotedStr('%'));
  SQLPesquisaNome.Append('|| UPPER(:Nome) || ').Append(QuotedStr('%')).Append(' ');
  SQLPesquisaNome.Append('ORDER BY ');
  SQLPesquisaNome.Append('  P.NOME;');

  SQLInsertPessoa.Append('INSERT INTO PESSOA                 ');
  SQLInsertPessoa.Append('(                                  ');
  SQLInsertPessoa.Append('  IDPESSOA,                        ');
  SQLInsertPessoa.Append('  NOME,                            ');
  SQLInsertPessoa.Append('  DATANASCIMENTO                   ');
  SQLInsertPessoa.Append(')                                  ');
  SQLInsertPessoa.Append('VALUES                             ');
  SQLInsertPessoa.Append('(                                  ');
  SQLInsertPessoa.Append(' :IDPESSOA,                        ');
  SQLInsertPessoa.Append(' :NOME,                            ');
  SQLInsertPessoa.Append(' :DATANASCIMENTO                   ');
  SQLInsertPessoa.Append(');                                 ');

  SQLUpdatePessoa.Append('UPDATE PESSOA SET   (              ');
  SQLUpdatePessoa.Append('  NOME = :NOME                     ');
  SQLUpdatePessoa.Append('  DATANASCIMENTO = :DATANASCIMENTO ');
  SQLUpdatePessoa.Append(');                                 ');
end;

procedure DestroySQL;
begin
  SQLInit.Free;
  SQLIDPessoa.Free;
  SQLPessoaNome.Free;
  SQLPesquisaNome.Free;
  SQLInsertPessoa.Free;
  SQLUpdatePessoa.Free;
end;
  