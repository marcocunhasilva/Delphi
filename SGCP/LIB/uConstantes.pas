unit uConstantes;

interface

uses
  System.SysUtils;

  function AbrePorta(const Porta,BaudRate,DataBits,Paridade:Integer):Integer;stdcall;external 'P05.DLL';
  function FechaPorta:Integer;stdcall;external 'P05.DLL';
  function PegaPeso(const OpcaoEscrita:integer;Peso,Local:Pchar):Integer;stdcall;external 'P05.DLL';
  procedure SetSQL;

const
  cSessaoConf   = 'CFG';
  cPorta        = 'Serial';
  cBaudRate     = 'BaudRate';
  cParidade     = 'Paridade';
  cDataBits     = 'DataBits';
  cDiponibi     = 'Diponibilizacao';
  cMinimizado   = 'Minimizado';
  cDirPESO      = 'DirPeso';
  cContinuo     = 'Continuo';
  cSucesso      = 1;
  cFalha        = 0;
  cArquivoINI   = 'P05.INI';

  DB_COMMIT         = True;
  DB_NOCOMMIT 			= False;
  DB_INSERT 	     	= True;
  DB_NOINSERT 			= False;
  DB_UPDATE 				= True;
  DB_NOUPDATE 			= False;
  DB_REFRESH 				= True;
  DB_NOREFRESH 			= False;
  DB_APPLYUPDATE 		= True;
  DB_NOAPPLYUPDATE  = False;

  // CachedUpdates
  CACHED = True;
  NOCACHED = False;

  // Incrementa / Decrementa
  MAIS  = True;
  MENOS = False;

  // Tipos
  DTS = 1;
  QUE = 2;

  // Alert
  TA_NONE           = 0;
  TA_INFORMATION    = 1;
  TA_QUESTION       = 2;
  TA_WARNING        = 3;
  TA_ERROR          = 4;

  // Alert Buttons
  TB_NONE           = 0;
  TB_OK             = 1;
  TB_OKCANCEL       = 2;
  TB_YES            = 3;
  TB_YESNO          = 4;
  TB_YESNOCANCEL    = 5;

  // Alert Results
  TR_NONE           = 0;
  TR_OK             = 100;
  TR_YES            = 100;
  TR_NO             = 101;
  TR_CANCEL         = 102;

  // Tipo do Form
  MODAL   = 1;
  NOMODAL = 2;

  // Abas CRUD ou PESQUISA
  DADOS    = 0;
  PESQUISA = 1;

  INGLES   = 0;
  PTBR     = 1;

var
  // Pacientes
  SQLInit: TStringBuilder;
  SQLPacientes: TStringBuilder;// string =
  SQLMatricula: TStringBuilder;
  SQLNome: TStringBuilder;
  SQLSave: TStringBuilder;

//  SQLSearchPacienteMatricula: TStringBuilder;
//  SQLSearchPacienteNome: TStringBuilder;

  // Convenios
  SQLConvenio: TStringBuilder;
  SQLConvenioCodigo: TStringBuilder;
  SQLConvenioDesc: TStringBuilder;
  SQLSearchConvenioCod: TStringBuilder;
  SQLSearchConvenioDesc: TStringBuilder;

  // Cidades
  SQLCidadeCodigo: TStringBuilder;
  SQLCidadeDesc: TStringBuilder;
  SQLSearchCidadeCod: TStringBuilder;
  SQLSearchCidadeDesc: TStringBuilder;

  // Profissoes
  SQLProfissoesCodigo: TStringBuilder;
  SQLProfissoesDesc: TStringBuilder;
  SQLSearchProfissoesCod: TStringBuilder;
  SQLSearchProfissoesDesc: TStringBuilder;

  // Usuários
  SQLUser: TStringBuilder;
  SQLSearchUser: TStringBuilder;

implementation

procedure SetSQL;
begin

  //////////////////////////////////////////////////////////////////////////////////////
  //                                                                                  //
  //                              PACIENTES                                           //
  //                                                                                  //
  //////////////////////////////////////////////////////////////////////////////////////
  ///
  ///
  ///
  // Init

  SQLInit := TStringBuilder.Create;
  SQLInit.Append('SELECT ');
  SQLInit.Append('   PAC.PACIENTE, PAC.DATACADASTRO, PAC.SITUACAO, PAC.DATACONSULTA, PAC.NOME, PAC.DATANASCIMENTO, PAC.IDADE, ');
  SQLInit.Append('   PAC.ESTADOCIVIL, PAC.COR, PAC.FONERES, PAC.FONECOML, PAC.FONECEL, PAC.CPF, PAC.RG, PAC.ENDERECO, ');
  SQLInit.Append('   PAC.NUMERO, PAC.APTO, PAC.COMPLEMENTO, ');
  SQLInit.Append('   PAC.BAIRRO, PAC.CIDADE, PAC.NOMECIDADE, CID.DESCRICAO, PAC.UF, PAC.CEP, ');
  SQLInit.Append('   PAC.CONVENIO, PAC.NOMECONVENIO, CON.DESCRICAO, ');
  SQLInit.Append('   PAC.CONJUGE, ');
  SQLInit.Append('   PAC.PAI, PAC.MAE, PAC.CONTATO, PAC.FONECONTATO, PAC.EMAIL, PAC.SITE, ');
  SQLInit.Append('   PAC.PROFISSAO, PAC.NOMEPROFISSAO, PRO.DESCRICAO AS NOMEPROFISSAO, ');
  SQLInit.Append('   PAC.FOTO, PAC.OBS ');
  SQLInit.Append('FROM ');
  SQLInit.Append('   PACIENTES PAC ');
  SQLInit.Append('INNER JOIN ');
  SQLInit.Append('   CIDADES CID ');
  SQLInit.Append('     ON CID.CIDADE = PAC.CIDADE ');
  SQLInit.Append('INNER JOIN ');
  SQLInit.Append('   CONVENIOS CON ');
  SQLInit.Append('     ON CON.CONVENIO = PAC.CONVENIO ');
  SQLInit.Append('INNER JOIN ');
  SQLInit.Append('   PROFISSOES PRO ');
  SQLInit.Append('     ON PRO.PROFISSAO = PAC.PROFISSAO ');
  SQLInit.Append('ORDER BY ');
  SQLInit.Append('   PAC.PACIENTE ');

  // Pacientes
  SQLPacientes := TStringBuilder.Create;
  SQLPacientes.Append('SELECT ');
  SQLPacientes.Append('   PAC.PACIENTE, PAC.DATACADASTRO, PAC.SITUACAO, PAC.DATACONSULTA, PAC.NOME, PAC.DATANASCIMENTO, PAC.IDADE, ');
  SQLPacientes.Append('   PAC.ESTADOCIVIL, PAC.COR, PAC.FONERES, PAC.FONECOML, PAC.FONECEL, PAC.CPF, PAC.RG, PAC.ENDERECO, ');
  SQLPacientes.Append('   PAC.NUMERO, PAC.APTO, PAC.COMPLEMENTO, ');
  SQLPacientes.Append('   PAC.BAIRRO, PAC.CIDADE, PAC.NOMECIDADE, CID.DESCRICAO, PAC.UF, PAC.CEP, ');
  SQLPacientes.Append('   PAC.CONVENIO, PAC.NOMECONVENIO, CON.DESCRICAO, ');
  SQLPacientes.Append('   PAC.CONJUGE, ');
  SQLPacientes.Append('   PAC.PAI, PAC.MAE, PAC.CONTATO, PAC.FONECONTATO, PAC.EMAIL, PAC.SITE, ');
  SQLPacientes.Append('   PAC.PROFISSAO, PAC.NOMEPROFISSAO, PRO.DESCRICAO AS NOMEPROFISSAO, ');
  SQLPacientes.Append('   PAC.FOTO, PAC.OBS ');
  SQLPacientes.Append('FROM ');
  SQLPacientes.Append('   PACIENTES PAC ');
  SQLPacientes.Append('INNER JOIN ');
  SQLPacientes.Append('   CIDADES CID ');
  SQLPacientes.Append('     ON CID.CIDADE = PAC.CIDADE ');
  SQLPacientes.Append('INNER JOIN ');
  SQLPacientes.Append('   CONVENIOS CON ');
  SQLPacientes.Append('     ON CON.CONVENIO = PAC.CONVENIO ');
  SQLPacientes.Append('INNER JOIN ');
  SQLPacientes.Append('   PROFISSOES PRO ');
  SQLPacientes.Append('     ON PRO.PROFISSAO = PAC.PROFISSAO ');
  SQLPacientes.Append('ORDER BY ');
  SQLPacientes.Append('   PAC.PACIENTE ');

  // Save
//  SQLSave := TStringBuilder.Create;
//  SQLSave.Append('SELECT ');
//  SQLSave.Append('   PAC.MATRICULA, PAC.NOME, PAC.ENDERECO, PAC.NUMERO, PAC.APART, ');
//  SQLSave.Append('   PAC.COMPLEMENTO, PAC.CIDADE, CID.DESCRICAO AS NOMECIDADE, ');
//  SQLSave.Append('   PAC.CEP, PAC.DT_NASC, PAC.RG, PAC.CPF, ');
//  SQLSave.Append('   PAC.CONVENIO, CON.DESCRICAO AS NOMECONVENIO, ');
//  SQLSave.Append('   PAC.RESIDENCIAL, PAC.COMERCIAL, PAC.CELULAR, ');
//  SQLSave.Append('   PAC.CONJUGE, ');
//  SQLSave.Append('   PAC.PAI, PAC.MAE, PAC.CONTATO, PAC.FONE_CONTATO, PAC.EMAIL, PAC.SITE, ');
//  SQLSave.Append('   PAC.ESTADO_CIVIL, PAC.COR, PAC.SITUACAO, ');
//  SQLSave.Append('   PAC.FOTO, PAC.BAIRRO, PAC.DT_CADASTRO, PAC.DT_ULTIMA_CONSULTA, ');
//  SQLSave.Append('   PAC.PROFISSAO, PRO.DESCRICAO AS NOMEPROFISSAO, ');
//  SQLSave.Append('   PAC.IDADE, PAC.OBS, PAC.UF ');
//  SQLSave.Append('FROM ');
//  SQLSave.Append('   PACIENTES PAC ');
//  SQLSave.Append('INNER JOIN ');
//  SQLSave.Append('   CIDADE CID ');
//  SQLSave.Append('     ON CID.codigo = PAC.CIDADE ');
//  SQLSave.Append('INNER JOIN ');
//  SQLSave.Append('   CONVENIO CON ');
//  SQLSave.Append('     ON CON.codigo = PAC.CONVENIO ');
//  SQLSave.Append('INNER JOIN ');
//  SQLSave.Append('   CBO PRO ');
//  SQLSave.Append('     ON PRO.CBO = PAC.PROFISSAO;');

  // Pacientes por matricula
  SQLMatricula := TStringBuilder.Create;
  SQLMatricula.Append('SELECT ');
  SQLMatricula.Append('   PAC.PACIENTE, PAC.DATACADASTRO, PAC.SITUACAO, PAC.DATACONSULTA, PAC.NOME, PAC.DATANASCIMENTO, PAC.IDADE, ');
  SQLMatricula.Append('   PAC.ESTADOCIVIL, PAC.COR, PAC.FONERES, PAC.FONECOML, PAC.FONECEL, PAC.CPF, PAC.RG, PAC.ENDERECO, ');
  SQLMatricula.Append('   PAC.NUMERO, PAC.APTO, PAC.COMPLEMENTO, ');
  SQLMatricula.Append('   PAC.BAIRRO, PAC.CIDADE, PAC.NOMECIDADE, CID.DESCRICAO, PAC.UF, PAC.CEP, ');
  SQLMatricula.Append('   PAC.CONVENIO, PAC.NOMECONVENIO, CON.DESCRICAO, ');
  SQLMatricula.Append('   PAC.CONJUGE, ');
  SQLMatricula.Append('   PAC.PAI, PAC.MAE, PAC.CONTATO, PAC.FONECONTATO, PAC.EMAIL, PAC.SITE, ');
  SQLMatricula.Append('   PAC.PROFISSAO, PAC.NOMEPROFISSAO, PRO.DESCRICAO AS NOMEPROFISSAO, ');
  SQLMatricula.Append('   PAC.FOTO, PAC.OBS ');
  SQLMatricula.Append('FROM ');
  SQLMatricula.Append('   PACIENTES PAC ');
  SQLMatricula.Append('INNER JOIN ');
  SQLMatricula.Append('   CIDADES CID ');
  SQLMatricula.Append('     ON CID.CIDADE = PAC.CIDADE ');
  SQLMatricula.Append('INNER JOIN ');
  SQLMatricula.Append('   CONVENIOS CON ');
  SQLMatricula.Append('     ON CON.CONVENIO = PAC.CONVENIO ');
  SQLMatricula.Append('INNER JOIN ');
  SQLMatricula.Append('   PROFISSOES PRO ');
  SQLMatricula.Append('     ON PRO.PROFISSAO = PAC.PROFISSAO ');
  SQLMatricula.Append('WHERE ');
  SQLMatricula.Append('  PAC.PACIENTE = :nMatricula ');
  SQLMatricula.Append('ORDER BY ');
  SQLMatricula.Append('  PAC.PACIENTE;');

  // Pacientes por NOME
  SQLNome := TStringBuilder.Create;
  SQLNome.Append('SELECT ');
  SQLNome.Append('   PAC.PACIENTE, PAC.DATACADASTRO, PAC.SITUACAO, PAC.DATACONSULTA, PAC.NOME, PAC.DATANASCIMENTO, PAC.IDADE, ');
  SQLNome.Append('   PAC.ESTADOCIVIL, PAC.COR, PAC.FONERES, PAC.FONECOML, PAC.FONECEL, PAC.CPF, PAC.RG, PAC.ENDERECO, ');
  SQLNome.Append('   PAC.NUMERO, PAC.APTO, PAC.COMPLEMENTO, ');
  SQLNome.Append('   PAC.BAIRRO, PAC.CIDADE, PAC.NOMECIDADE, CID.DESCRICAO, PAC.UF, PAC.CEP, ');
  SQLNome.Append('   PAC.CONVENIO, PAC.NOMECONVENIO, CON.DESCRICAO, ');
  SQLNome.Append('   PAC.CONJUGE, ');
  SQLNome.Append('   PAC.PAI, PAC.MAE, PAC.CONTATO, PAC.FONECONTATO, PAC.EMAIL, PAC.SITE, ');
  SQLNome.Append('   PAC.PROFISSAO, PAC.NOMEPROFISSAO, PRO.DESCRICAO AS NOMEPROFISSAO, ');
  SQLNome.Append('   PAC.FOTO, PAC.OBS ');
  SQLNome.Append('FROM ');
  SQLNome.Append('   PACIENTES PAC ');
  SQLNome.Append('INNER JOIN ');
  SQLNome.Append('   CIDADES CID ');
  SQLNome.Append('     ON CID.CIDADE = PAC.CIDADE ');
  SQLNome.Append('INNER JOIN ');
  SQLNome.Append('   CONVENIOS CON ');
  SQLNome.Append('     ON CON.CONVENIO = PAC.CONVENIO ');
  SQLNome.Append('INNER JOIN ');
  SQLNome.Append('   PROFISSOES PRO ');
  SQLNome.Append('     ON PRO.PROFISSAO = PAC.PROFISSAO ');
  SQLNome.Append('WHERE ');
  SQLNome.Append('   UPPER(PAC.NOME) LIKE ').Append(QuotedStr('%'));
  SQLNome.Append('|| UPPER(:cNome) || ').Append(QuotedStr('%')).Append(' ');
  SQLNome.Append('ORDER BY ');
  SQLNome.Append('   PAC.NOME;');

  //////////////////////////////////////////////////////////////////////////////////////
  //                                                                                  //
  //                              CONVENIOS                                           //
  //                                                                                  //
  //////////////////////////////////////////////////////////////////////////////////////

  // Convenios por Codigo
  SQLConvenioCodigo := TStringBuilder.Create;
  SQLConvenioCodigo.Append('SELECT ');
  SQLConvenioCodigo.Append('  CON.CONVENIO, ');
  SQLConvenioCodigo.Append('  CON.DESCRICAO ');
  SQLConvenioCodigo.Append('FROM');
  SQLConvenioCodigo.Append('  CONVENIOS CON ');
  SQLConvenioCodigo.Append('ORDER BY');
  SQLConvenioCodigo.Append('  CON.CONVENIO;');

  // Convenios por Descrição
  SQLConvenioDesc := TStringBuilder.Create;
  SQLConvenioDesc.Append('SELECT ');
  SQLConvenioDesc.Append('  CON.CONVENIO, ');
  SQLConvenioDesc.Append('  CON.DESCRICAO ');
  SQLConvenioDesc.Append('FROM');
  SQLConvenioDesc.Append('  CONVENIOS CON ');
  SQLConvenioDesc.Append('ORDER BY');
  SQLConvenioDesc.Append('  CON.DESCRICAO;');


  // Pesquisa CONVENIOS por CODIGO
  SQLSearchConvenioCod := TStringBuilder.Create;
  SQLSearchConvenioCod.Append('SELECT ');
  SQLSearchConvenioCod.Append('  CON.CONVENIO, ');
  SQLSearchConvenioCod.Append('  CON.DESCRICAO ');
  SQLSearchConvenioCod.Append('FROM');
  SQLSearchConvenioCod.Append('  CONVENIOS CON ');
  SQLSearchConvenioCod.Append('WHERE');
  SQLSearchConvenioCod.Append('  CON.CONVENIO = :CODIGO ');
  SQLSearchConvenioCod.Append('ORDER BY');
  SQLSearchConvenioCod.Append('  CON.CONVENIO;');

  // Pesquisa CONVENIOS por DESCRICAO
  SQLSearchConvenioDesc := TStringBuilder.Create;
  SQLSearchConvenioDesc.Append('SELECT ');
  SQLSearchConvenioDesc.Append('  CON.CONVENIO, ');
  SQLSearchConvenioDesc.Append('  CON.DESCRICAO ');
  SQLSearchConvenioDesc.Append('FROM');
  SQLSearchConvenioDesc.Append('  CONVENIOS CON ');
  SQLSearchConvenioDesc.Append('WHERE');
  SQLSearchConvenioDesc.Append('  UPPER(CON.DESCRICAO) LIKE % || UPPER(:DESC) || % ');
  SQLSearchConvenioDesc.Append('ORDER BY');
  SQLSearchConvenioDesc.Append('  CON.DESCRICAO;');

  //////////////////////////////////////////////////////////////////////////////////////
  //                                                                                  //
  //                              CIDADES                                             //
  //                                                                                  //
  //////////////////////////////////////////////////////////////////////////////////////
  // CIDADES por CODIGO
  SQLCidadeCodigo := TStringBuilder.Create;
  SQLCidadeCodigo.Append('SELECT ');
  SQLCidadeCodigo.Append('  CID.CIDADE, ');
  SQLCidadeCodigo.Append('  CID.DESCRICAO ');
  SQLCidadeCodigo.Append('FROM');
  SQLCidadeCodigo.Append('  CIDADES CID ');
  SQLCidadeCodigo.Append('ORDER BY');
  SQLCidadeCodigo.Append('  CID.CIDADE;');

  // CIDADES por DESCRIÇAO
  SQLCidadeDesc := TStringBuilder.Create;
  SQLCidadeDesc.Append('SELECT ');
  SQLCidadeDesc.Append('  CID.CIDADE, ');
  SQLCidadeDesc.Append('  CID.DESCRICAO ');
  SQLCidadeDesc.Append('FROM');
  SQLCidadeDesc.Append('  CIDADES CID ');
  SQLCidadeDesc.Append('ORDER BY');
  SQLCidadeDesc.Append('  CID.DESCRICAO;');

  // Pesquisa CIDADES por CODIGO
  SQLSearchCidadeCod := TStringBuilder.Create;
  SQLSearchCidadeCod.Append('SELECT ');
  SQLSearchCidadeCod.Append('  CID.CIDADE, ');
  SQLSearchCidadeCod.Append('  CID.DESCRICAO ');
  SQLSearchCidadeCod.Append('FROM');
  SQLSearchCidadeCod.Append('  CIDADES CID ');
  SQLSearchCidadeCod.Append('WHERE');
  SQLSearchCidadeCod.Append('  CID.CIDADE = :CODIGO ');
  SQLSearchCidadeCod.Append('ORDER BY');
  SQLSearchCidadeCod.Append('  CID.CIDADE');

  // Pesquisa CIDADES por DESCRIÇÃO
  SQLSearchConvenioDesc := TStringBuilder.Create;
  SQLSearchConvenioDesc.Append('SELECT ');
  SQLSearchConvenioDesc.Append('  CID.CIDADE, ');
  SQLSearchConvenioDesc.Append('  CID.DESCRICAO ');
  SQLSearchConvenioDesc.Append('FROM');
  SQLSearchConvenioDesc.Append('  CIDADES CID ');
  SQLSearchConvenioDesc.Append('WHERE');
  SQLSearchConvenioDesc.Append('  UPPER(CID.DESCRICAO) LIKE % || UPPER(:DESC) || % ');
  SQLSearchConvenioDesc.Append('ORDER BY');
  SQLSearchConvenioDesc.Append('  CID.DESCRICAO;');

  //////////////////////////////////////////////////////////////////////////////////////
  //                                                                                  //
  //                              PROFISSOES                                          //
  //                                                                                  //
  //////////////////////////////////////////////////////////////////////////////////////

  // PROFISSÕES por CODIGO
  SQLProfissoesCodigo := TStringBuilder.Create;
  SQLProfissoesCodigo.Append('SELECT ');
  SQLProfissoesCodigo.Append('  PRO.PROFISSAO, ');
  SQLProfissoesCodigo.Append('  PRO.DESCRICAO ');
  SQLProfissoesCodigo.Append('FROM');
  SQLProfissoesCodigo.Append('  PROFISSOES PRO ');
  SQLProfissoesCodigo.Append('ORDER BY');
  SQLProfissoesCodigo.Append('  PRO.PROFISSAO;');

  // PROFISSÕES por DESCRIÇÃO
  SQLProfissoesDesc := TStringBuilder.Create;
  SQLProfissoesDesc.Append('SELECT ');
  SQLProfissoesDesc.Append('  PRO.PROFISSAO, ');
  SQLProfissoesDesc.Append('  PRO.DESCRICAO ');
  SQLProfissoesDesc.Append('FROM');
  SQLProfissoesDesc.Append('  PROFISSOES PRO ');
  SQLProfissoesDesc.Append('ORDER BY');
  SQLProfissoesDesc.Append('  PRO.DESCRICAO;');

  // Pesquisa PROFISSÕES por CODIGO
  SQLSearchProfissoesCod := TStringBuilder.Create;
  SQLSearchProfissoesCod.Append('SELECT ');
  SQLSearchProfissoesCod.Append('  PRO.PROFISSAO, ');
  SQLSearchProfissoesCod.Append('  PRO.DESCRICAO ');
  SQLSearchProfissoesCod.Append('FROM');
  SQLSearchProfissoesCod.Append('  PROFISSOES PRO ');
  SQLSearchProfissoesCod.Append('WHERE');
  SQLSearchProfissoesCod.Append('  PRO.PROFISSAO = :PROFISSAO ');
  SQLSearchProfissoesCod.Append('ORDER BY');
  SQLSearchProfissoesCod.Append('  PRO.PROFISSAO');

  // Pesquisa PROFISSÕES por DESCRICAO
  SQLSearchProfissoesDesc := TStringBuilder.Create;
  SQLSearchProfissoesDesc.Append('SELECT ');
  SQLSearchProfissoesDesc.Append('  PRO.PROFISSAO, ');
  SQLSearchProfissoesDesc.Append('  PRO.DESCRICAO ');
  SQLSearchProfissoesDesc.Append('FROM');
  SQLSearchProfissoesDesc.Append('  PROFISSOES PRO ');
  SQLSearchProfissoesDesc.Append('WHERE');
  SQLSearchProfissoesDesc.Append('  UPPER(PRO.DESCRICAO) LIKE % || UPPER(:DESC) || % ');
  SQLSearchProfissoesDesc.Append('ORDER BY');
  SQLSearchProfissoesDesc.Append('  PRO.DESCRICAO');

  //////////////////////////////////////////////////////////////////////////////////////
  //                                                                                  //
  //                              USUARIOS                                            //
  //                                                                                  //
  //////////////////////////////////////////////////////////////////////////////////////
  SQLUser := TStringBuilder.Create;
  SQLUser.Append('SELECT ');
  SQLUser.Append('  USU.USUARIO, ');
  SQLUser.Append('  USU.CONFIRMA, ');
  SQLUser.Append('  USU.LOGIN, ');
  SQLUser.Append('  USU.SENHA, ');
  SQLUser.Append('  USU.SITUACAO, ');
  SQLUser.Append('  USU.NIVEISACESSO, ');
  SQLUser.Append('  USU.CAIXA ');
  SQLUser.Append('FROM  ');
  SQLUser.Append('  USUARIOS USU');
  SQLUser.Append('ORDER BY ');
  SQLUser.Append('  USU.USUARIO;');

  // Pesquisa usuario
  SQLSearchUser := TStringBuilder.Create;
  SQLSearchUser.Append('SELECT ');
  SQLSearchUser.Append('  USU.USUARIO, ');
  SQLSearchUser.Append('  USU.CONFIRMA, ');
  SQLSearchUser.Append('  USU.LOGIN, ');
  SQLSearchUser.Append('  USU.SENHA, ');
  SQLSearchUser.Append('  USU.SITUACAO, ');
  SQLSearchUser.Append('  USU.NIVEISACESSO, ');
  SQLSearchUser.Append('  USU.CAIXA ');
  SQLSearchUser.Append('FROM  ');
  SQLSearchUser.Append('  USUARIOS USU ');
  SQLSearchUser.Append('WHERE ');
  SQLSearchUser.Append('  UPPER(USU.LOGIN) LIKE ');
  SQLSearchUser.Append(QuotedStr('%'));
  SQLSearchUser.Append(' || UPPER(:Login) || ');
  SQLSearchUser.Append(QuotedStr('%'));
  SQLSearchUser.Append(' AND ');
  SQLSearchUser.Append('  UPPER(USU.SENHA) LIKE ');
  SQLSearchUser.Append(QuotedStr('%'));
  SQLSearchUser.Append(' || UPPER(:Senha) || ');
  SQLSearchUser.Append(QuotedStr('%'));
  SQLSearchUser.Append(' ORDER BY ');
  SQLSearchUser.Append('  USU.LOGIN;');
end;

end.
