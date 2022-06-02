/******************************************************************************/
/***         Generated by IBExpert 2020.4.21.2 29/03/2021 08:26:00          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES WIN1252;

SET CLIENTLIB 'C:\PROJETOS\DELPHI\CLIENTES\FONTES\fbclient.dll';

CREATE DATABASE '127.0.0.1/3030:C:\PROJETOS\DELPHI\CLIENTES\BANCO\CLIENTES.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UTF8 COLLATION UNICODE_CI;



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_CLIENTES_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_CLIENTES_ID TO 1090;



/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

CREATE PROCEDURE SP_GEN_CLIENTES_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^






SET TERM ; ^



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE CLIENTES (
    CODIGO    INTEGER NOT NULL,
    CPF       VARCHAR(200) SET UTF8 COLLATION UNICODE_CI;
    NOME      VARCHAR(200) SET UTF8 COLLATION UNICODE_CI;
    ENDERECO  VARCHAR(200) SET UTF8 COLLATION UNICODE_CI;
    CIDADE    VARCHAR(200) SET UTF8 COLLATION UNICODE_CI;
    ESTADO    VARCHAR(200) SET UTF8 COLLATION UNICODE_CI;
);



/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/

ALTER TABLE CLIENTES ADD CONSTRAINT PK_CLIENTES PRIMARY KEY (CODIGO);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: CLIENTES_BI */
CREATE TRIGGER CLIENTES_BI FOR CLIENTES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_clientes_id,1);
end
^
SET TERM ; ^



/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

ALTER PROCEDURE SP_GEN_CLIENTES_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_clientes_id, 1);
  suspend;
end^



SET TERM ; ^

