CREATE TABLE alunos (
  aluno      Integer NOT NULL,
  cpf        VarChar(20),
  rg         VarChar(20),
  nome       VarChar(100) NOT NULL,
  celular    VarChar(20),
  email      VarChar(50),
  cep        VarChar(9) DEFAULT '90000-000',
  endereco   VarChar(100),
  bairro     VarChar(50),
  localidade VarChar(200),
  uf         Char(2) NOT NULL DEFAULT 'RS'
) ;

ALTER TABLE alunos COMMENT = '';

CREATE TABLE pessoafisica (
  pessoa     Integer NOT NULL,
  cpf        VarChar(200),
  rg         VarChar(200),
  nome       VarChar(200) NOT NULL,
  celular    VarChar(200),
  email      VarChar(50),
  cep        VarChar(200) DEFAULT '90000-000',
  logradouro VarChar(200),
  bairro     VarChar(50),
  localidade VarChar(200),
  uf         VarChar(200) NOT NULL DEFAULT 'RS'
) ;

ALTER TABLE pessoafisica COMMENT = '';

CREATE TABLE pessoas (
  codigo     Integer NOT NULL,
  cpf        VarChar(200),
  rg         VarChar(200),
  nome       VarChar(200),
  telefone   VarChar(200),
  email      VarChar(200),
  cep        VarChar(200),
  logradouro VarChar(200),
  bairro     VarChar(200),
  localidade VarChar(200),
  uf         VarChar(200), 
  PRIMARY KEY (
      codigo
  )
) ;

ALTER TABLE pessoas COMMENT = '';