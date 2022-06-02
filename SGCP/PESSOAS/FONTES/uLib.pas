unit uLib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.CategoryButtons, Vcl.WinXCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFormato = (CNPJ, CPF, InscricaoEstadual, CNPJorCPF, TelefoneFixo, Celular, Personalizado,
              Valor, Money, CEP, Dt, Peso);
  // Operacoes: Inclusão, alteração e exclusão
  TOperacao = (opInsert, opUpdate, opDelete, opNone);

function IsCPF(nCPF: string): boolean;
// function IsCPF(CPF: string): Boolean;
function IsNumber(c: String): boolean;

function ImprimeCPF(cCPF: string): string;

procedure Formatar(Obj: TObject; Formato : TFormato; Extra : string = '');

function ClrDig(fField : String): String;

function ColocaMascara(num: String; tipo: Integer): string;

function TiraMascara(num: String; tipo: Integer): string;

implementation
{
function IsCPF(nCPF: string): boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9: integer;
  d1, d2                            : integer;
  digitado, calculado               : string;
begin
  n1 := StrToInt(nCPF[1]);
  n2 := StrToInt(nCPF[2]);
  n3 := StrToInt(nCPF[3]);
  n4 := StrToInt(nCPF[4]);
  n5 := StrToInt(nCPF[5]);
  n6 := StrToInt(nCPF[6]);
  n7 := StrToInt(nCPF[7]);
  n8 := StrToInt(nCPF[8]);
  n9 := StrToInt(nCPF[9]);
  d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
  d1 := 11 - (d1 mod 11);
  if d1 >= 10 then
    d1 := 0;
  d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
  d2 := 11 - (d2 mod 11);
  if d2 >= 10 then
    d2 := 0;
  calculado := IntToStr(d1) + IntToStr(d2);
  digitado := nCPF[10] + nCPF[11];
  if calculado = digitado then
    Result := true
  else
    Result := False;
end;
}
function IsNumber(c: String): boolean;
var
  i: integer;
begin
  Result := false;
  for i := 1 to length(c) do
  begin
    if c[i] in ['0'..'9'] then
    begin
      Result := True;
      exit;
    end;
  end;
end;

function SomenteNumero(str : string) : string;
var
  x : integer;
begin
  Result := '';
  for x := 0 to length(str) - 1 do
    if (str.Chars[x] In ['0' .. '9']) then
      Result := Result + str.Chars[x];
end;

function FormataValor(str : string) : string;
begin
  if str = '' then
    str := '0';

  try
    Result := FormatFloat('#,##0.00', strtofloat(str) / 100);
  except
    Result := FormatFloat('#,##0.00', 0);
  end;
end;

function FormataPeso(str : string) : string;
begin
  if str.IsEmpty then
    str := '0';

  try
    Result := FormatFloat('#,##0.000', strtofloat(str) / 1000);
  except
    Result := FormatFloat('#,##0.000', 0);
  end;
end;

function Mask(Mascara, Str : string) : string;
var
  x, p : integer;
begin
  p := 0;
  Result := '';

  if str.IsEmpty then
    exit;

  for x := 0 to length(Mascara) - 1 do
  begin
    if Mascara.Chars[x] = '#' then
    begin
      Result := Result + str.Chars[p];
      inc(p);
    end
    else
      Result := Result + Mascara.Chars[x];

    if p = length(str) then
      break;
  end;
end;

function FormataIE(Num, UF: string): string;
var
  Mascara : string;
begin
  Mascara := '';
  IF UF = 'AC' Then Mascara := '##.###.###/###-##';
  IF UF = 'AL' Then Mascara := '#########';
  IF UF = 'AP' Then Mascara := '#########';
  IF UF = 'AM' Then Mascara := '##.###.###-#';
  IF UF = 'BA' Then Mascara := '######-##';
  IF UF = 'CE' Then Mascara := '########-#';
  IF UF = 'DF' Then Mascara := '###########-##';
  IF UF = 'ES' Then Mascara := '#########';
  IF UF = 'GO' Then Mascara := '##.###.###-#';
  IF UF = 'MA' Then Mascara := '#########';
  IF UF = 'MT' Then Mascara := '##########-#';
  IF UF = 'MS' Then Mascara := '#########';
  IF UF = 'MG' Then Mascara := '###.###.###/####';
  IF UF = 'PA' Then Mascara := '##-######-#';
  IF UF = 'PB' Then Mascara := '########-#';
  IF UF = 'PR' Then Mascara := '########-##';
  IF UF = 'PE' Then Mascara := '##.#.###.#######-#';
  IF UF = 'PI' Then Mascara := '#########';
  IF UF = 'RJ' Then Mascara := '##.###.##-#';
  IF UF = 'RN' Then Mascara := '##.###.###-#';
  IF UF = 'RS' Then Mascara := '###/#######';
  IF UF = 'RO' Then Mascara := '###.#####-#';
  IF UF = 'RR' Then Mascara := '########-#';
  IF UF = 'SC' Then Mascara := '###.###.###';
  IF UF = 'SP' Then Mascara := '###.###.###.###';
  IF UF = 'SE' Then Mascara := '#########-#';
  IF UF = 'TO' Then Mascara := '###########';

  Result := Mask(mascara, Num);
end;

function FormataData(str : string): string;
begin
  str := Copy(str, 1, 8);

  if length(str) < 8 then
    Result := Mask('##/##/####', str)
  else
  begin
    try
      str := Mask('##/##/####', str);
      strtodate(str);
      Result := str;
    except
      Result := '';
    end;
  end;
end;

procedure Formatar(Obj: TObject; Formato : TFormato; Extra : string = '');
var
  texto : string;
begin
  TThread.Queue(Nil,
    procedure
    begin
      if Obj is TEdit then
        texto := TEdit(Obj).Text;

      if Obj is TDBEdit then
        texto := TDBEdit(Obj).Text;

      // Telefone Fixo...
      if Formato = TelefoneFixo then
        texto := Mask('(##) ####-####', SomenteNumero(texto));

      // Celular...
      if Formato = Celular then
        texto := Mask('(##) #####-####', SomenteNumero(texto));

      // CNPJ...
      if Formato = CNPJ then
        texto := Mask('##.###.###/####-##', SomenteNumero(texto));

      // CPF...
      if Formato = CPF then
        texto := Mask('###.###.###-##', SomenteNumero(texto));

      // Inscricao Estadual (IE)...
      if Formato = InscricaoEstadual then
        texto := FormataIE(SomenteNumero(texto), Extra);

      // CNPJ ou CPF...
      if Formato = CNPJorCPF then
        if length(SomenteNumero(texto)) <= 11 then
          texto := Mask('###.###.###-##', SomenteNumero(texto))
        else
          texto := Mask('##.###.###/####-##', SomenteNumero(texto));

      // Personalizado...
      if Formato = Personalizado then
        texto := Mask(Extra, SomenteNumero(texto));

      // Valor...
      if Formato = Valor then
        texto := FormataValor(SomenteNumero(texto));

      // Money (com simbolo da moeda)...
      if Formato = Money then
      begin
        if Extra = '' then
          Extra := 'R$';

        texto := Extra + ' ' + FormataValor(SomenteNumero(texto));
      end;

      // CEP...
      if Formato = CEP then
        texto := Mask('##.###-###', SomenteNumero(texto));

      // Data...
      if Formato = Dt then
        texto := FormataData(SomenteNumero(texto));

      // Peso...
      if Formato = Peso then
        texto := FormataPeso(SomenteNumero(texto));

      if Obj is TEdit then
      begin
        TEdit(Obj).Text := texto;
        TEdit(Obj).SelStart := length(TEdit(Obj).Text);
        // TEdit(obj).CaretPosition := TEdit(obj).Text.Length;
      end;

      if Obj is TDBEdit then
      begin
        TDBEdit(Obj).Text := texto;
        TDBEdit(Obj).SelStart := length(TDBEdit(Obj).Text);
        // TDBEdit(obj).CaretPosition := TDBEdit(obj).Text.Length;
      end;

    end);

end;

function IsCPF(nCPF: string): boolean;
var
  dig10, dig11: string;
  s, i, r, peso: integer;
begin
  // length - retorna o tamanho da string (nCPF é um número formado por 11 dígitos)
  if ((nCPF = '00000000000') or (nCPF = '11111111111') or
      (nCPF = '22222222222') or (nCPF = '33333333333') or
      (nCPF = '44444444444') or (nCPF = '55555555555') or
      (nCPF = '66666666666') or (nCPF = '77777777777') or
      (nCPF = '88888888888') or (nCPF = '99999999999') or
      (length(nCPF) <> 11)) then
  begin
    Result := false;
    exit;
  end;

  // try - protege o código para eventuais erros de conversão de tipo
  // na função StrToInt
  try
    { *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
      // StrToInt converte o i-ésimo caractere do nCPF em um número
      s := s + (StrToInt(nCPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
       dig10 := '0'
    else
      str(r:1, dig10); // converte um número no respectivo caractere numérico

    { *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(nCPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
       dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = nCPF[10]) and (dig11 = nCPF[11]))
       then isCPF := true
    else isCPF := false;
  except
    isCPF := false
  end;
end;

function ImprimeCPF(cCPF: string): string;
begin
  Result := copy(cCPF, 1, 3) + '.' + copy(cCPF, 4, 3) + '.' +
            copy(cCPF, 7, 3) + '-' + copy(cCPF, 10, 2);
end;

function ClrDig(fField : String): String;
var
  I: Byte;
begin
  Result := '';
  for I := 1 To Length(fField) do
     if fField [I] In ['1','2','3','4','5','6','7','8','9','0'] then
       Result := Result + fField [I];
end;

function ColocaMascara(num: String; tipo: Integer): string;
begin
  if tipo = 1 then
    begin
      Result := copy(num,1,3)+'.'+copy(num,4,3)+'.'+copy(num,7,3)+'-'+copy(num,10,2);  //999.999.999-99
    end;
  if tipo = 2 then
    begin
      Result := copy(num,1,2)+'/'+copy(num,3,2)+'/'+copy(num,5,4);       // 99/99/9999
    end;

  if tipo = 3 then
    begin
      Result := copy(num,1,5)+'-'+copy(num,6,3);  // 99999-999
    end;

  if tipo = 4 then
    begin
      Result := '('+copy(num,1,2)+')'+copy(num,3,4)+'-'+copy(num,7,4);  //(64) 453-8883
    end;
  if tipo = 5 then
    begin
      Result := copy(num,1,2)+'.'+copy(num,3,3)+'.'+copy(num,6,3)+'/'+copy(num,9,4)+'-'+copy(num,13,2);  //00.000.000/0000-00
    end;
end;

function TiraMascara(num: String; tipo: Integer): string;
begin
  // 999.999.999-99
  if tipo = 1 then
  begin
    Result := trim(Copy(num, 1, 3) + Copy(num, 5, 3) + Copy(num, 9, 3) + Copy(num, 13, 2));
  end;

  // 99/99/9999
  if tipo = 2 then
  begin
    Result := Copy(num, 1, 2) + Copy(num, 4, 2) + Copy(num, 7, 4);
  end;

  // 99999-999
  if tipo = 3 then
  begin
    Result := Copy(num, 1, 5) + Copy(num, 7, 3);
  end;

  // (64) 453-8883
  if tipo = 4 then
  begin
    Result := Copy(num, 2, 2) + Copy(num, 6, 3) + Copy(num, 10, 4);
  end;

  // 00.000.000/0000-00
  if tipo = 5 then
  begin
    Result := Copy(num, 1, 2) + Copy(num, 4, 3) + Copy(num, 8, 3) + Copy(num, 12, 4) + Copy(num, 17, 2);
  end;
end;

end.
