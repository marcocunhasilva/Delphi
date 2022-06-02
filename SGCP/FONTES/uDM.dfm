object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 427
  Width = 278
  object dsPessoas: TDataSource
    DataSet = qryPessoas
    Left = 48
    Top = 152
  end
  object dsRel: TDataSource
    DataSet = qryRel
    Left = 168
    Top = 152
  end
  object qryPessoas: TFDQuery
    IndexFieldNames = 'CODIGO'
    Connection = conSGCP
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateObject = updPessoas
    SQL.Strings = (
      'SELECT          '
      '  P.CODIGO,     '
      '  P.CPF,        '
      '  P.RG,         '
      '  P.NOME,       '
      '  P.TELEFONE,   '
      '  P.CEP,        '
      '  P.LOGRADOURO, '
      '  P.BAIRRO,     '
      '  P.LOCALIDADE, '
      '  P.UF          '
      'FROM            '
      '  PESSOAS P     '
      'ORDER BY'
      '  P.CODIGO')
    Left = 48
    Top = 208
  end
  object qryRel: TFDQuery
    Connection = conSGCP
    SQL.Strings = (
      'SELECT'
      '  C.CONTATO,'
      '  C.NOME,'
      '  T.CONTATO AS TELEFONECONTATO,                 '
      '  T.NUMERO,                  '
      '  T.TIPO                     '
      'FROM                         '
      '  TELEFONES T                '
      '                             '
      'INNER JOIN CONTATOS C        '
      '  ON (T.CONTATO = C.CONTATO) '
      ''
      'ORDER BY                     '
      '  C.CONTATO')
    Left = 168
    Top = 216
  end
  object updPessoas: TFDUpdateSQL
    Connection = conSGCP
    InsertSQL.Strings = (
      'INSERT INTO CLIENTES'
      '(CODIGO, CPF, NOME, ENDERECO, CIDADE, '
      '  ESTADO)'
      
        'VALUES (:NEW_CODIGO, :NEW_CPF, :NEW_NOME, :NEW_ENDERECO, :NEW_CI' +
        'DADE, '
      '  :NEW_ESTADO)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE CLIENTES'
      
        'SET CODIGO = :NEW_CODIGO, CPF = :NEW_CPF, NOME = :NEW_NOME, ENDE' +
        'RECO = :NEW_ENDERECO, '
      '  CIDADE = :NEW_CIDADE, ESTADO = :NEW_ESTADO'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTES'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT CODIGO, CPF, NOME, ENDERECO, CIDADE, ESTADO'
      'FROM CLIENTES'
      'WHERE CODIGO = :OLD_CODIGO')
    Left = 48
    Top = 264
  end
  object qry_Aux: TFDQuery
    Connection = conSGCP
    Left = 120
    Top = 320
  end
  object conSGCP: TFDConnection
    Params.Strings = (
      'Database=C:\PROJETOS DELPHI\SGCP\BANCO\SGCP.FDB'
      'ConnectionDef=SGCP')
    Connected = True
    LoginPrompt = False
    Left = 61
    Top = 27
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 64
    Top = 88
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 176
    Top = 80
  end
  object tacSGCP: TFDTransaction
    Connection = conSGCP
    Left = 176
    Top = 24
  end
end
