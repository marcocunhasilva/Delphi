unit uConstantes;

interface

uses
  System.SysUtils;

  procedure CreateSQL;
  procedure DestroySQL;

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
  SQLClientes: TStringBuilder;
  SQLCodigo: TStringBuilder;
  SQLNome: TStringBuilder;
  SQLCPF: TStringBuilder;
  SQLPessoas: TStringBuilder;

  SelectCPF: String;
  SelectSQL: String;
  DeleteSQL: String;

implementation

procedure CreateSQL;
begin

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                              PESSOAS                                    //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////

  SQLClientes := TStringBuilder.Create;
  SQLCodigo := TStringBuilder.Create;
  SQLCPF := TStringBuilder.Create;
  SQLNome := TStringBuilder.Create;
  SQLPessoas := TStringBuilder.Create;

  // Pessoas
  SQLPessoas.Append('SELECT ');
  SQLPessoas.Append('  P.CODIGO, ');
  SQLPessoas.Append('  P.CPF, ');
  SQLPessoas.Append('  P.RG, ');
  SQLPessoas.Append('  P.NOME, ');
  SQLPessoas.Append('  P.ENDERECO, ');
  SQLPessoas.Append('  P.TELEFONE, ');
  SQLPessoas.Append('  P.CEP, ');
  SQLPessoas.Append('  P.LOGRADOURO, ');
  SQLPessoas.Append('  P.BAIRRO,   ');
  SQLPessoas.Append('  P.LOCALIDADE, ');
  SQLPessoas.Append('  P.UF ');
  SQLPessoas.Append('FROM ');
  SQLPessoas.Append('  PESSOAS P ');
  SQLPessoas.Append('ORDER BY    ');
  SQLPessoas.Append('  P.CODIGO  ');

  DeleteSQL := 'DELETE                    ' +
               'FROM                      ' +
               '  PESSOAS P               ' +
               'WHERE                     ' +
               '  (P.CPF LIKE :PARAMETRO) ' +
               'ORDER BY                  ' +
               '  P.NOME;                 ';

  SelectSQL := 'SELECT          ' +
               '  P.CODIGO,     ' +
               '  P.CPF,        ' +
               '  P.RG,         ' +
               '  P.NOME,       ' +
               '  P.TELEFONE,   ' +
               '  P.CEP,        ' +
               '  P.LOGRADOURO, ' +
               '  P.BAIRRO,     ' +
               '  P.LOCALIDADE, ' +
               '  P.UF          ' +
               'FROM            ' +
               '  PESSOAS P     ' +
               'ORDER BY        ' +
               '  P.CODIGO      ';
{
  SQLPessoas.Append('ORDER BY ');
  SQLPessoas.Append('  P.CODIGO ');
}
  // Clientes por Código
  SQLCodigo.Append('SELECT ');
  SQLCodigo.Append('  P.CODIGO, ');
  SQLCodigo.Append('  P.CPF, ');
  SQLCodigo.Append('  P.RG, ');
  SQLCodigo.Append('  P.NOME, ');
  SQLCodigo.Append('  P.ENDERECO, ');
  SQLCodigo.Append('  P.TELEFONE, ');
  SQLCodigo.Append('  P.CEP, ');
  SQLCodigo.Append('  P.LOGRADOURO, ');
  SQLCodigo.Append('  P.BAIRRO,   ');
  SQLCodigo.Append('  P.LOCALIDADE, ');
  SQLCodigo.Append('  P.UF ');
  SQLCodigo.Append('FROM ');
  SQLCodigo.Append('  PESSOAS P ');
  SQLCodigo.Append('WHERE ');
  SQLCodigo.Append('  P.CODIGO = :CODIGO ');
  SQLCodigo.Append('ORDER BY ');
  SQLCodigo.Append('  P.CODIGO ');

  // Clientes por CPF
  SQLCPF.Append('SELECT ');
  SQLCPF.Append('  P.CODIGO, ');
  SQLCPF.Append('  P.CPF, ');
  SQLCPF.Append('  P.RG, ');
  SQLCPF.Append('  P.NOME, ');
  SQLCPF.Append('  P.ENDERECO, ');
  SQLCPF.Append('  P.TELEFONE, ');
  SQLCPF.Append('  P.CEP, ');
  SQLCPF.Append('  P.LOGRADOURO, ');
  SQLCPF.Append('  P.BAIRRO,   ');
  SQLCPF.Append('  P.LOCALIDADE, ');
  SQLCPF.Append('  P.UF ');
  SQLCPF.Append('FROM ');
  SQLCPF.Append('  PESSOAS P ');
  SQLCPF.Append('WHERE ');
  SQLCPF.Append('  P.CPF = :CPF ');
  SQLCPF.Append('ORDER BY ');
  SQLCPF.Append('  P.CPF;');

  // String
  SelectCPF := 'SELECT          ' +
               '  P.CODIGO,     ' +
               '  P.CPF,        ' +
               '  P.RG,         ' +
               '  P.NOME,       ' +
               '  P.TELEFONE,   ' +
               '  P.CEP,        ' +
               '  P.LOGRADOURO, ' +
               '  P.BAIRRO,     ' +
               '  P.LOCALIDADE, ' +
               '  P.UF          ' +
               'FROM            ' +
               '  PESSOAS P     ' +
               'WHERE           ' +
               '  P.CPF = :CPF  ' +
               'ORDER BY        ' +
               '  P.CPF;';

  // Clientes por NOME
  SQLNome.Append('SELECT ');
  SQLNome.Append('  P.CODIGO, ');
  SQLNome.Append('  P.CPF, ');
  SQLNome.Append('  P.RG, ');
  SQLNome.Append('  P.NOME, ');
  SQLNome.Append('  P.ENDERECO, ');
  SQLNome.Append('  P.TELEFONE, ');
  SQLNome.Append('  P.CEP, ');
  SQLNome.Append('  P.LOGRADOURO, ');
  SQLNome.Append('  P.BAIRRO,   ');
  SQLNome.Append('  P.LOCALIDADE, ');
  SQLNome.Append('  P.UF ');
  SQLNome.Append('FROM ');
  SQLNome.Append('  PESSOAS P ');
  SQLNome.Append('WHERE ');
  SQLNome.Append('  UPPER(P.NOME) LIKE ').Append(QuotedStr('%'));
  SQLNome.Append('|| UPPER(:Nome) || ').Append(QuotedStr('%')).Append(' ');
  SQLNome.Append('ORDER BY ');
  SQLNome.Append('  P.NOME;');
end;

procedure DestroySQL;
begin
  SQLNome.Free;
  SQLCPF.Free;
  SQLCodigo.Free;
  SQLClientes.Free;
  SQLInit.Free;
  SQLPessoas.Free;
end;

end.
