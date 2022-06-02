{ ******************************************************* }
{ }
{ Delphi Runtime Library }
{ Windows Messages and Types }
{ }
{ Revisão..: 21 de Fevereiro de 2001 }
{ 24 de Novembro de 2007  -->> ROLOFF & SILVA LTDA. }
{ ******************************************************* }
unit UTL_APOIO;

interface

uses
  System.SysUtils,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Buttons,
  Windows,
  Dialogs,
  Messages,
  Classes,
  Controls,
  StdCtrls,
  Mask,
  Winsock,
  DB,
  Vcl.Grids,
  Vcl.DBCtrls,
  utl_biblioteca,
  JvExMask,
  JvToolEdit,
  JvBaseEdits,
  JvDatePickerEdit,
  JvValidateEdit,
  JvExStdCtrls,
  JvCombobox;


// procedure grava_log_form_Geral (w_banco, w_tabela, w_chave_primaria, w_acao, w_log: string; );
function ultimo_dia_mes(dd: tdate): Integer;
procedure muda_na_entrada(Sender: TObject; Tipo: string);
procedure muda_na_saida(Sender: TObject; Tipo: string);
function formata_cep(cep: string): string;
function formata_PLACA(PLACA: string): string;
function formata_cpf(cpf: string): string;
function formata_cgc(cgc: string): string;
function Formata_fone(fone: string): string;
function Formata_Cntr(Unidade: string): string;
procedure TrimAppMemorySize;
function formata_pis(num: string): string;
function ValidTIT(Valor: string): Boolean;
function ValidaTituloEleitor(sTitulo: string; MostraMsg: Boolean = True): Boolean;
function idade(Nascimento, DataAtual: string): Integer;

procedure Cor_Label_ita(Cor_Label: String; aLabel: TLabel);

// Procedure carrega_imagens(Sender : TObject);

implementation

procedure monta_botoes(NameButton: String; aButton: TBitBtn);
begin
  if FileExists('.\imagens\' + NameButton + '.bmp') then
  begin
    aButton.Glyph.LoadFromFile('.\imagens\' + NameButton + '.bmp');
    aButton.Font.Color := clBlack;
    aButton.Font.Style := [fsbold];
  end;

end;

procedure Cor_Label_ita(Cor_Label: String; aLabel: TLabel);
begin

end;

function ultimo_dia_mes(dd: tdate): Integer;
var
  w_mes: Integer;
Begin
  w_mes := strtoint(FormatDateTime('MM', dd));
  case w_mes of
    1:
      Result := 31;
    2:
      Result := 28;
    3:
      Result := 31;
    4:
      Result := 30;
    5:
      Result := 31;
    6:
      Result := 30;
    7:
      Result := 31;
    8:
      Result := 31;
    9:
      Result := 30;
    10:
      Result := 31;
    11:
      Result := 30;
    12:
      Result := 31;
  end;
End;

procedure muda_na_entrada(Sender: TObject; Tipo: string);
begin
 if (Sender is TCurrencyField)  or
    (Sender is TDateTimeField)  OR
    (Sender is TDateTimeField)  OR
    (Sender is TJvCalcEdit)     OR
    (Sender is TMemo)           OR
    (Sender is TJvCalcEdit)     OR
    (Sender is TJvValidateEdit) OR
    (Sender is TJvComboBox)     OR
    (Sender is TComboBox)       OR
    (Sender is TEdit)           OR

    (Sender is TJvDateEdit)     OR
    (Sender is TListBox)        OR
    (Sender is TMaskEdit)       then

    begin
//      TListBox(Sender).Color := u_dm.w_edit_foco_fundo;
//      TListBox(Sender).Font.Color := u_dm.w_edit_foco_texto;
    end;


end;

procedure muda_na_saida(Sender: TObject; Tipo: string);
begin
  // verificar o camponente
 if (Sender is TCurrencyField)  or
    (Sender is TDateTimeField)  OR
    (Sender is TDateTimeField)  OR
    (Sender is TJvCalcEdit)     OR
    (Sender is TMemo)           OR
    (Sender is TJvCalcEdit)     OR
    (Sender is TJvValidateEdit) OR
    (Sender is TJvComboBox)     OR
    (Sender is TComboBox)       OR
    (Sender is TEdit)           OR

    (Sender is TJvDateEdit)     OR
    (Sender is TListBox)        OR
    (Sender is TMaskEdit)       then
  begin
//    TListBox(Sender).Color      := u_dm.w_edit_entrada_fundo;
//    TListBox(Sender).Font.Color := u_dm.w_edit_entrada_texto;
  end;
end;

// ------------------------------------------------------------------------------

function formata_cpf(cpf: string): string;
var
  I: Integer;
begin
  if Length(SoNumeros(cpf)) < 11 then
    Exit;
  Result := '';
  for I := 1 to Length(cpf) do
    if cpf[I] in ['0' .. '9'] then
      Result := Result + cpf[I];
  if Length(Result) <> 11 then
    raise Exception.Create('CPF inválido.')
  else
    Result := Copy(Result, 1, 3) + '.' + Copy(Result, 4, 3) + '.' + Copy(Result, 7, 3) + '-' + Copy(Result, 10, 2);
end;

// ------------------------------------------------------------------------------

function formata_cgc(cgc: string): string;
var
  I: Integer;
begin
  if Length(SoNumeros(cgc)) <> 14 then
  begin
    Result := cgc;
    Exit;
  end;

  Result := '';
  for I := 1 to Length(cgc) do
    if cgc[I] in ['0' .. '9'] then
      Result := Result + cgc[I];
  if Length(Result) <> 14 then
    raise Exception.Create('CGC inválido.')
  else
    Result := Copy(Result, 1, 2) + '.' + Copy(Result, 3, 3) + '.' + Copy(Result, 6, 3) + '/' + Copy(Result, 9, 4) + '-' +
      Copy(Result, 13, 2);
end;

// ------------------------------------------------------------------------------

function formata_cep(cep: string): string;
var
  I: Integer;
begin
  if Length(SoNumeros(cep)) <> 8 then
  begin
    Result := cep;
    Exit;
  end;
  Result := '';
  for I := 1 to Length(cep) do
    if cep[I] in ['0' .. '9'] then
      Result := Result + cep[I];
  if Length(Result) <> 8 then
    raise Exception.Create('CEP inválido.')
  else
    Result := Copy(Result, 1, 2) + '.' + Copy(Result, 3, 3) + '-' + Copy(Result, 6, 3);
end;

// ------------------------------------------------------------------------------

function formata_PLACA(PLACA: string): string;
var
  I: Integer;
begin
  if Length(SO_Letra_e_Numero(PLACA)) < 5 then
    Exit;
  Result := '';
  for I := 1 to Length(PLACA) do
    if PLACA[I] in ['0' .. '9', 'A' .. 'Z'] then
      Result := Result + PLACA[I];
  if Length(Result) <> 7 then
    raise Exception.Create('PLACA inválido.')
  else
    Result := Copy(Result, 1, 3) + '-' + Copy(Result, 4, 3);
End;

// ------------------------------------------------------------------------------

function Formata_fone(fone: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(fone) do
    if fone[I] in ['0' .. '9'] then
      Result := Result + fone[I];

  case Length(Result) of
    11:
      Result := '(' + Copy(Result, 1, 2) + ') ' + Copy(Result, 3, 1) + ' ' + Copy(Result, 4, 4) + ' ' + Copy(Result, 8, 4);
    10:
      Result := '(' + Copy(Result, 1, 2) + ') ' + Copy(Result, 3, 4) + ' ' + Copy(Result, 7, 4);
    9:
      Result := Copy(Result, 1, 1) + ' ' + Copy(Result, 2, 4) + ' ' + Copy(Result, 6, 4);
    8:
      Result := Copy(Result, 1, 4) + ' ' + Copy(Result, 5, 4);
  end;
end;

// ------------------------------------------------------------------------------

procedure TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;
  Application.ProcessMessages;
end;

// ------------------------------------------------------------------------------

function Formata_Cntr(Unidade: string): string;
var
  aux: string;
begin
  // devolver uma strinf no formato de escrita de Container
  aux := Copy(Unidade, 1, 4) + ' ' + Copy(Unidade, 5, 6) + '-' + Copy(Unidade, 11, 1);
  Result := aux;
end;

// ------------------------------------------------------------------------------

function formata_pis(num: string): string;
var
  aux: string;
begin
  aux := SoNumeros(num);
  if Length(aux) = 11 then
    Result := Copy(aux, 1, 3) + '.' + Copy(aux, 4, 5) + '.' + Copy(aux, 9, 2) + '-' + Copy(aux, 11, 1)
  else
    Result := num;
end;

function ValidaTituloEleitor(sTitulo: string; MostraMsg: Boolean = True): Boolean;
const
  Multiplicadores: array [1 .. 11] of shortint = (10, 9, 8, 7, 6, 5, 4, 3, 2, 4, 3);
var
  iCont, iAux, DigCalculado, DigInformado: shortint;
  iDigito                                : Integer;
begin
  Result := false;
  if Length(sTitulo) = 0 then
    Exit;

  sTitulo := StringOfChar('0', 13 - Length(sTitulo)) + sTitulo; // 13 posições
  iAux := strtoint(Copy(sTitulo, 10, 2));
  // valor para auxiliar o cálculo do dígito

  // dígito verificador
  DigInformado := strtoint(Copy(sTitulo, 12, 2));;
  DigCalculado := 0;

  iDigito := 0;
  for iCont := 1 to 11 do
  begin
    iDigito := iDigito + (strtoint(sTitulo[iCont]) * Multiplicadores[iCont]);
    if iCont in [9, 11] then
    begin
      iDigito := iDigito mod 11;
      if iDigito > 1 then
        iDigito := 11 - iDigito
      else
      begin
        if iAux <= 2 then
          iDigito := 1 - iDigito
        else
          iDigito := 0;
      end;
      if iCont = 9 then
        DigCalculado := iDigito * 10
      else
        DigCalculado := DigCalculado + iDigito;
      iDigito := iDigito * 2;
    end;
  end;

  // verifica se o digito é verdadeiro
  Result := DigCalculado = DigInformado;

  if not Result and MostraMsg then
    Application.MessageBox('Número do título de eleitor inválido!', 'Atenção', mb_TaskModal + mb_IconWarning);

  // ('0',13-Length(stitulo))+stitulo; // 13 posições
  iAux := strtoint(Copy(sTitulo, 10, 2));
  // valor para auxiliar o cálculo do dígito

  // dígito verificador
  DigInformado := strtoint(Copy(sTitulo, 12, 2));;
  DigCalculado := 0;

  iDigito := 0;
  for iCont := 1 to 11 do
  begin
    iDigito := iDigito + (strtoint(sTitulo[iCont]) * Multiplicadores[iCont]);
    if iCont in [9, 11] then
    begin
      iDigito := iDigito mod 11;
      if iDigito > 1 then
        iDigito := 11 - iDigito
      else
      begin
        if iAux <= 2 then
          iDigito := 1 - iDigito
        else
          iDigito := 0;
      end;
      if iCont = 9 then
        DigCalculado := iDigito * 10
      else
        DigCalculado := DigCalculado + iDigito;
      iDigito := iDigito * 2;
    end;
  end;

  // verifica se o digito é verdadeiro
  Result := DigCalculado = DigInformado;

  if not Result and MostraMsg then
    Application.MessageBox('Número do título de eleitor inválido!', 'Atenção', mb_TaskModal + mb_IconWarning);
end;



// exemplo 2

function ValidTIT(Valor: string): Boolean;
{ função para validação do titulo de eleitor }
var
  I, j, iPriDig, iSegDig: Integer;

begin
  Result := false; // se o codigo passado for vazio ou nulo cai fora
  if Length(Valor) = 0 then
    Exit;

  Valor := StrZero(Valor, 13);
  // alinha e preenche com zeros as 13 posicoes necessarias
  j := strtoint(Copy(Valor, 9, 2));
  // essa questao das 2 posicoes falta confirmar com o TSE

  // primeiro numero do digito
  iPriDig := 0;
  for I := 1 to 9 do // executa as somatorias e multiplicacoes
    iPriDig := iPriDig + strtoint(Valor[I]) * (10 - (I - 1));
  iPriDig := iPriDig mod 11; // resolve o modulo 11
  if iPriDig > 1 then        // calcula o digito especifico
    iPriDig := 11 - iPriDig
  else
  begin
    if j <= 2 then
      iPriDig := 1 - iPriDig
    else
      iPriDig := 0;
  end;
  // segundo numero do digito
  iSegDig := iPriDig * 2; // dobra o primeiro digito
  for I := 10 to 11 do    // e executa as somatorias
    iSegDig := iSegDig + strtoint(Valor[I]) * (13 - (I - 1));
  iSegDig := iSegDig mod 11;
  if iSegDig > 1 then
    iSegDig := 11 - iSegDig
  else
  begin
    if j <= 2 then
      iSegDig := 1 - iSegDig
    else
      iSegDig := 0;
  end;
  // valida se o digito é verdadeiro
  Result := (IntToStr(iPriDig) + IntToStr(iSegDig)) = Copy(Valor, 12, 2);
end;

function idade(Nascimento, DataAtual: string): Integer;
var
  idade, dian, mesn, anon, diaa, mesa, anoa: word;
begin
  decodedate(StrToDate(DataAtual), anoa, mesa, diaa);
  decodedate(StrToDate(Nascimento), anon, mesn, dian);
  idade := anoa - anon;

  if mesn > mesa then
  begin
    idade := idade;
  end;
  if (mesn > mesa) and (dian > diaa) then
  begin
    idade := idade;
  end;
  Result := idade;
end;

end.
