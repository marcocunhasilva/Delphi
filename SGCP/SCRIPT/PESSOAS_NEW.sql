CREATE TABLE PESSOAS (
    CODIGO     INTEGER NOT NULL,
    CPF        VARCHAR(200) CHARACTER SET UTF8 COLLATE UNICODE_CI_AI,
    RG         VARCHAR(200) CHARACTER SET UTF8 COLLATE UNICODE_CI_AI,
    NOME       VARCHAR(200) CHARACTER SET UTF8 COLLATE UNICODE_CI_AI,
    CEP        VARCHAR(200) CHARACTER SET UTF8 COLLATE UNICODE_CI_AI,
    LOGRADOURO VARCHAR(200) CHARACTER SET UTF8 COLLATE UNICODE_CI_AI,
    BAIRRO     VARCHAR(200) CHARACTER SET UTF8 COLLATE UNICODE_CI_AI,
    CIDADE     VARCHAR(200) CHARACTER SET UTF8 COLLATE UNICODE_CI_AI,
    UF         VARCHAR(200) CHARACTER SET UTF8 COLLATE UNICODE_CI_AI
);