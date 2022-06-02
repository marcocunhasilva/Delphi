{ ******************************************************* }
{ }
{ Delphi Runtime Library }
{ Windows Messages and Types }
{ }
{ Copyright (c) 1991,96 Walter Alves Chagas Junior }
{ }
{ Revis„o..: 21 de Fevereiro de 2001 }
{ 24 de Novembro de 2007  -->> ROLOFF & SILVA LTDA. }
{ ******************************************************* }

unit UTL_BIBLIOTECA;

interface

uses Windows, Dialogs, Messages, SysUtils, Classes, Controls, StdCtrls, Mask,
  Graphics, forms, Winsock, DB, Grids, DBGrids, DBCtrls;

procedure ZebrarDbGrid(dSouce: TDataSource; grid: TDBGrid; State: TGridDrawState; Rect: TRect; Column: TColumn);

procedure CriticaData(var Data: string); // Com controle dos caracteres
// digitados no objeto Edit1 atravÈs do evento OnKeyPress

function IniciaPorta(Porta: string): integer; stdcall; far; external 'Mp2032.dll';
function FechaPorta: integer; stdcall; far; external 'Mp2032.dll';
function BematechTX(BufTrans: string): integer; stdcall; far; external 'Mp2032.dll';
function FormataTX(BufTras: string; TpoLtra: integer; Italic: integer; Sublin: integer; expand: integer; enfat: integer)
  : integer; stdcall; far; external 'Mp2032.dll';
function ComandoTX(BufTrans: string; TamBufTrans: integer): integer; stdcall; far; external 'Mp2032.dll';
function Status_Porta: integer; stdcall; far; external 'Mp2032.dll';
function AutenticaDoc(BufTras: string; Tempo: integer): integer; stdcall; far; external 'Mp2032.dll';
function Le_Status: integer; stdcall; far; external 'Mp2032.dll';
function Le_Status_Gaveta: integer; stdcall; far; external 'Mp2032.dll';
function DocumentInseted: integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraTamanhoExtrato(NumeroLinhas: integer): integer; stdcall; far; external 'Mp2032.dll';
function HabilitaExtratoLongo(Flag: integer): integer; stdcall; far; external 'Mp2032.dll';
function HabilitaEsperaImpressao(Flag: integer): integer; stdcall; far; external 'Mp2032.dll';
function EsperaImpressao: integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraModeloImpressora(ModeloImpressora: integer): integer; stdcall; far; external 'Mp2032.dll';
function AcionaGuilhotina(Modo: integer): integer; stdcall; far; external 'Mp2032.dll';
function HabilitaPresenterRetratil(Flag: integer): integer; stdcall; far; external 'Mp2032.dll';
function ProgramaPresenterRetratil(Tempo: integer): integer; stdcall; far; external 'Mp2032.dll';
function CaracterGrafico(Buffer: string; TamBuffer: integer): integer; stdcall; far; external 'Mp2032.dll';
function VerificaPapelPresenter(): integer; stdcall; far; external 'Mp2032.dll';

{ FUN«√O PARA CODIGO DE BARRAS }

// funÁıes para impress„o dos cÛdigos de barras
function ImprimeCodigoBarrasUPCE(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasEAN13(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasEAN8(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasCODE39(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasCODE93(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasCODE128(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasITF(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasCODABAR(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasISBN(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasMSI(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasPLESSEY(Codigo: string): integer; stdcall; far; external 'Mp2032.dll';
function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros, Altura, Largura, Colunas: integer; Codigo: string): integer; stdcall;
  far; external 'Mp2032.dll';
function ConfiguraCodigoBarras(Altura, Largura, PosicaoCaracteres, Fonte, Margem: integer): integer; stdcall; far;
  external 'Mp2032.dll';

// FunÁ„o para bitmaps
function ImprimeBmpEspecial(Nome: string; xScale: integer; yScale: integer; angle: integer): integer; stdcall; far;
  external 'Mp2032.dll';
function ImprimeBitmap(Nome: string; mode: integer): integer; stdcall; far; external 'Mp2032.dll';
function AjustaLarguraPapel(PaperWidth: integer): integer; stdcall; far; external 'Mp2032.dll';
function SelectDithering(DitherType: integer): integer; stdcall; far; external 'Mp2032.dll';
function ImprimePrn(Nome: string; sleep: integer): integer; stdcall; far; external 'Mp2032.dll';

function JustificaTxt         (mCad: string; mMAx: integer): string;
function ArredontaFloat       (x: real): real;
function RoundNum             (valor: Extended; Decimais: integer): Extended;
function Gerapercentual       (valor: real; Percent: real): real;
// function IntToBin          (Vale: LongInt; Size: Integer): string;
function BinToInt             (Value: string): LongInt;
function DecToBase            (Decimal: LongInt; const Base: Byte): string;
function Base10               (Base2: integer): integer; assembler;
function DecToBinStr          (n: integer): string;
function DecToRoman           (Decimal: LongInt): string;
function NumToHex             (Num: Word): string;
function Min                  (A, B: integer): integer;
function Max                  (A, B: integer): integer;
function IntPrime             (Value: integer): Boolean;
function strByteSize          (Value: LongInt): string;
function StrToReal            (inString: string): real;
function BuscaDireita         (Busca, Text: string): integer;
function BuscaTroca           (Text, Busca, Troca: string): string;
function Codifica             (const Str1: string): string;
function ContaCaracs          (Edit: string): integer;
function Empty                (inString: string): Boolean;
function LTrim                (Texto: string): string;
function Maiuscula            (Texto: string): string;
function Padr                 (s: string; n: integer): string;
function RemoveAcentos        (Str: string): string;
function Troca_acentos        (Str: string): string;
function Replicate            (Caracter: string; Quant: integer): string;
function RTrim                (Texto: string): string;
function StringToFloat        (s: string): Extended;
function Strs                 (I: LongInt): string;
function StrToPChar           (const Str: string): PChar;
function Alltrim              (const Search: string): string;
function StrZero              (Zeros: string; Quant: integer): string;
function StrZerodec           (Numero: Double; Total, Decimal: integer): string;
function Padl                 (s: string; n: integer): string;
function wordcount            (Str: string): integer;
function LineIsEmpty          (Text: string): Boolean;
function PadC                 (s: string; Len: Byte): string;
function FullFill             (Str: string; FLen: Byte; symb: char): string;
function Before               (const Search, Find: string): string;
function after                (const Search, Find: string): string;
function MaskString           (valor: string): string;
function Encrypt              (Senha: string): string;
function ExisteInt            (Texto: string): Boolean;
function diadasemana          (Data: TDateTime; forma: string): string;
procedure Mostra_Na_Tela;
function SoNumeros            (Str: string): string;
function caixa_letra_e_numero (Str: string): string;
function SO_Letra_e_Numero    (Str: string): string;
function caixa_so_numero      (Str: string): string;
function DATA_EXT             (): string;

procedure commit;
procedure CorOld            (Sender               : TObject); // Saida do Controle
procedure CorNew            (Sender               : TObject); // Entrada do Controle
function Inteiro            (valor, divisor       : real): integer;
function vpis               (Dado                 : string): Boolean;
function cpf                (Num                  : string): Boolean;
function cnpj               (Num                  : string): Boolean;
function Modulo10           (valor                : string): string;
function Modulo11           (valor                : string; Base: integer): string;
function CalcDigVerificador (CodigoBarras         : string): char;
function FormatarComMascara (StringFormato, Texto : string): string;
function Formatar           (Texto                : string; TamanhoDesejado: integer; AcrescentarADireita: Boolean = true;
  CaracterAcrescentar                             : char = ' '): string;
procedure padroniza_form;
function SerialNum          (FDrive               : string): string;
function DesCripto_y4       (Texto                : string): string;
function ValorAsc           (Letra                : string): Byte;
function Cripto_y4          (Texto                : string): string;
function Usuario                                  : string;

// function pl_contas(_valor: Real ; _reduzido: string; Operacao: string;
// deb_cre : string; _ano: integer) : Boolean;
// function pl_lancamento(_referencia: string;       // codigo do fornecedor
// _tabela: string;           // tabela de origem dese fornecedor
// _conta_reduzida: string;   // conta reduzida
// _documento: string;        // numero do documento
// _emissao:  string;         // Data do Documento
// _descricao: string;        // descricao do lanÁamento
// _debito: Real;             // Valor a Debito
// _credito: Real;            // valor a Credito
// _conta_contabil: string;
// _codigo_produto: string;
// _operacao: string) : boolean; // conta cheia
//
// function retorna_reduzido(_conta: string) : string;
// function retorna_EXTENSO(_conta: string) : string;
// function pl_compras(_obra: string;     // codigo da obra
// _item: Integer;    // item orÁado
// _sub_item: Integer;// sub-item orÁado
// _valor: Real;      // valor da compra
// _operacao: string) : boolean; // operaÁ„o aplicada

implementation

// ------------------------------------------------------------------------------

// eu chamo a minha procedure no evento: onDrawColumnCell;

procedure ZebrarDbGrid(dSouce: TDataSource; grid: TDBGrid; State: TGridDrawState; Rect: TRect; Column: TColumn);
begin
  if not odd(dSouce.DataSet.RecNo) then
    if not(gdselected in State) then
    begin
      grid.canvas.Brush.Color := $00FFEFDF;
      grid.canvas.FillRect(Rect);
    end;
  if (gdselected in State) then
  begin
    grid.canvas.Font.Color := clred;
    grid.canvas.Brush.Color := clYellow; // $00FFEFDF;
  end;
  grid.DefaultDrawDataCell(Rect, Column.Field, State);
  grid.Color := clWindow;
end;

procedure CriticaData(var Data: string); // Com controle dos caracteres
// digitados no objeto Edit1 atravÈs do evento OnKeyPress
var
  I, J, Dia, Mes, Ano   : integer;
  Barras, Barra1, Barra2: integer; // Verifica a posiÁ„o das barras;
  M                     : array of integer;
  Caracter, Erro        : string;
begin
  Erro := 'n'; // Em princÌpio o campo È considerado como correto(v·lido).
  // Cria-se o Array M com 13 campos dos quais usaremos do 1 ao 12
  SetLength(M, 13);
  // A matriz M È preenchida com o ˙ltimo dia de cada mÍs
  for I := 1 to 12 do
  begin
    M[I] := 31;
  end;
  M[4] := 30;
  M[2] := 28;
  M[6] := 30;
  M[9] := 30;
  M[11] := 30;
  // Barra controla a posiÁ„o das duas // do campo data
  Barras := 0; // Verifica a quantidade de barras digitadas   13
  Barra1 := 0; // PosiÁ„o da 1™ barra (pode ser 2 ou 3)
  Barra2 := 0; // PosiÁ„o da 2™ barra (pode ser 4, 5 ou 6)
  for I := 1 to length(Data) do
  begin
    Caracter := copy(Data, I, 1);
    if Caracter = '/' then
    begin
      Barras := Barras + 1;
      if Barra1 = 0 then
        Barra1 := I
      else
        Barra2 := I;
    end;
  end;
  if (length(Data) < 6) or (length(Data) > 10) then
    Erro := 's';
  if Barras > 2 then
    Erro := 's';
  if (Barra1 > 3) or (Barra1 < 2) then
    Erro := 's';
  if (Barra2 > 6) or (Barra2 < 4) then
    Erro := 's';
  // Aqui j· sabemos se a data È numÈrica e se est· em formato v·lido com barras
  if Erro = 'n' then
  begin
    Caracter := copy(Data, (Barra2 + 1), 4);
    if length(Caracter) < 4 then
    begin
      Caracter := '20' + Caracter; // Se a data entrar no formato dd/mm/aa
      // fazemos a data ficar dd/mm/20aa
      Data := copy(Data, 1, Barra2) + Caracter;
    end;
    // Podemos converter as posiÁıes da string em inteiros sem receio de recebermos
    // aquela mensagem de erro do delphi.
    Dia := StrToInt(copy(Data, 1, (Barra1 - 1)));
    Mes := StrToInt(copy(Data, (Barra1 + 1), (Barra2 - Barra1 - 1)));
    Ano := StrToInt(copy(Data, (Barra2 + 1), 4));
    // Verifica se o ano È bissexto
    J := Ano mod 4;
    if J = 0 then
      M[2] := 29
    else
      M[2] := 28;
    // Critica o mes
    if (Mes < 1) or (Mes > 12) then
      Erro := 's';
    // Critica o dia
    if Erro = 'n' then
      if (Dia < 1) or (Dia > M[Mes]) then
        Erro := 's';
    // critica o ano (Se quiser)
    if Ano < 2003 then
      Erro := 's';
  end;
  if Erro = 's' then
  begin
    Data := '';
    messageDlg('Data inconsistente!!!', mtError, [mbOk], 0);
  end;
end;

function diadasemana(Data: TDateTime; forma: string): string;
// retorna o dia da semana
var
  nrdia        : integer;
  diasemana    : array [1 .. 7] of string;
  meses        : array [1 .. 12] of string;
  Dia, Mes, Ano: Word;
  resultado    : string;
begin
  diasemana[1] := 'Domingo';
  diasemana[2] := 'Segunda-Feira';
  diasemana[3] := 'TerÁa-Feira';
  diasemana[4] := 'Quarta-Feira';
  diasemana[5] := 'Quinta-Feira';
  diasemana[6] := 'Sexta-Feira';
  diasemana[7] := 'S·bado';
  meses[1] := 'Janeiro';
  meses[2] := 'Fevereiro';
  meses[3] := 'MarÁo';
  meses[4] := 'Abril';
  meses[5] := 'Maio';
  meses[6] := 'Junho';
  meses[7] := 'Julho';
  meses[8] := 'Agosto';
  meses[9] := 'Setembro';
  meses[10] := 'Outubro';
    meses[11] := 'Novembro';
  meses[12] := 'Dezembro';
  DecodeDate(Data, Ano, Mes, Dia);
  nrdia := DayOfWeek(Data);
  if forma='S' then
     result := diasemana[nrdia]
  else
     result := diasemana[nrdia] + ', ' + INTTOSTR(Dia) + ' de ' + meses[Mes] + ' ' + INTTOSTR(Ano) + '.';
end;


// ------------------------------------------------------------------------------

function ArredontaFloat(x: real): real;
{ Arredonda um n˙mero float para convertÍ-lo em String }
begin
  if x > 0 then
  begin
    if Frac(x) > 0.5 then
    begin
      x := x + 1 - Frac(x);
    end
    else
    begin
      x := x - Frac(x);
    end;
  end
  else
  begin
    x := x - Frac(x);
  end;
  result := x
end;

// ------------------------------------------------------------------------------

function RoundNum(valor: Extended; Decimais: integer): Extended;
{ Quando houver,Arredonda uma possivel terceira casa decimal em uma vari·vel }
var
  I            : integer;
  Multiplicador: integer;
begin
  if Decimais > 15 then
  begin
    Decimais := 15;
  end
  else if Decimais < 0 then
  begin
    Decimais := 0;
  end;
  Multiplicador := 1;
  for I := 1 to Decimais do
  begin
    Multiplicador := Multiplicador * 10;
  end;
  result := round(valor * Multiplicador) / Multiplicador;
end;

// ------------------------------------------------------------------------------

function Gerapercentual(valor: real; Percent: real): real;
// Retorna a porcentagem de um valor
begin
  Percent := Percent / 100;
  try
    valor := valor * Percent;
  finally
    result := valor;
  end;
end;

// ------------------------------------------------------------------------------

// Integer
{
  function IntToBin(Value: LongInt; Size: Integer): string;
  //Converte uma string em bin·rio
  var
  i: Integer;
  begin
  Result := '';
  for i := Size downto 0 do
  begin
  if Value and (1 shl i) <> 0 then
  begin
  Result := Result + '1';
  end
  else
  begin
  Result := Result + '0';
  end;
  end;
  end;

}

// ------------------------------------------------------------------------------

function BinToInt(Value: string): LongInt;
{ Converte um numero bin·rio em Inteiro }
var
  I, Size: integer;
begin
  result := 0;
  Size := length(Value);
  for I := Size downto 0 do
  begin
    if copy(Value, I, 1) = '1' then
    begin
      result := result + (1 shl I);
    end;
  end;
end;

// ------------------------------------------------------------------------------

function DecToBase(Decimal: LongInt; const Base: Byte): string;
{ converte um n˙mero decimal na base especificada }
const
  Symbols: string[16] = '0123456789ABCDEF';
var
  scratch  : string;
  remainder: Byte;
begin
  scratch := '';
  repeat
    remainder := Decimal mod Base;
    scratch := Symbols[remainder + 1] + scratch;
    Decimal := Decimal div Base;
  until (Decimal = 0);
  result := scratch;
end;

// ------------------------------------------------------------------------------

function Base10(Base2: integer): integer; assembler;
{ Converte uma string em Base 10 }
asm
  cmp eax,100000000 // check upper limit
  jb @1             // ok
  mov eax,-1        // error flag
  jmp @exit         // exit with -1
@1:
  push ebx // save registers
  push esi
  xor esi,esi // result = 0
  mov ebx,10  // diveder base 10
  mov ecx,8   // 8 nibbles (10^8-1)
@2:
  mov edx,0   // clear remainder
  div ebx     // eax DIV 10, edx mod 10
  add esi,edx // result = result + remainder[I]
  ror esi,4   // shift nibble
  loop @2     // loop for all 8 nibbles
  mov eax,esi // function result
  pop esi     // restore registers
  pop ebx
@exit:
end;


// ------------------------------------------------------------------------------

function DecToBinStr(n: integer): string;
{ Converte um numero decimal em bin·rio }
var
  s       : string;
  I       : integer;
  Negative: Boolean;
begin
  if n < 0 then
  begin
    Negative := true;
  end;
  n := Abs(n);
  for I := 1 to SizeOf(n) * 8 do
  begin
    if n < 0 then
    begin
      s := s + '1';
    end
    else
    begin
      s := s + '0';
    end;
    n := n shl 1;
  end;
  Delete(s, 1, Pos('1', s) - 1); // remove leading zeros
  if Negative then
  begin
    s := '-' + s;
  end;
  result := s;
end;


// ------------------------------------------------------------------------------

function DecToRoman(Decimal: LongInt): string;
{ Converte um numero decimal em algarismos romanos }
const
  Romans: array [1 .. 13] of string   = ('I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C', 'CD', 'D', 'CM', 'M');
  Arabics: array [1 .. 13] of integer = (1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000);
var
  I      : integer;
  scratch: string;
begin
  scratch := '';
  for I := 13 downto 1 do
    while (Decimal >= Arabics[I]) do
    begin
      Decimal := Decimal - Arabics[I];
      scratch := scratch + Romans[I];
    end;
  result := scratch;
end;

// ------------------------------------------------------------------------------

function NumToHex(Num: Word): string;
// Converte um numero em Hexadecimal
var
  L       : string[16];
  BHi, BLo: Byte;
begin
  L := '0123456789ABCDEF';
  BHi := Hi(Num);
  BLo := Lo(Num);
  result := copy(L, succ(BHi shr 4), 1) + copy(L, succ(BHi and 15), 1) + copy(L, succ(BLo shr 4), 1) +
    copy(L, succ(BLo and 15), 1);
end;


// ------------------------------------------------------------------------------

function Min(A, B: integer): integer;
{ Compara dois valores Retornando o maior deles }
begin
  if A < B then
    result := A
  else
    result := B;
end;

// ------------------------------------------------------------------------------

function Max(A, B: integer): integer;
{ Compara dois valores Retornando o maior deles }
begin
  if A > B then
    result := A
  else
    result := B;
end;

// ------------------------------------------------------------------------------

function IntPrime(Value: integer): Boolean;
{ Testa se um numero È primo ou n„o }
var
  I: integer;
begin
  result := False;
  Value := Abs(Value);
  if Value mod 2 <> 0 then
  begin
    I := 1;
    repeat
      I := I + 2;
      result := Value mod I = 0
    until result or (I > Trunc(sqrt(Value)));
    result := not result;
  end;
end;

// ------------------------------------------------------------------------------

function strByteSize(Value: LongInt): string;
{ Retorna uma convers„o de Bytes para integer }
const
  KBYTE = SizeOf(Byte) shl 10;
  MBYTE = KBYTE shl 10;
  GBYTE = MBYTE shl 10;
begin
  if Value > GBYTE then
  begin
    result := FloatToStrF(round(Value / GBYTE), ffNumber, 6, 0) + ' GB';
  end
  else if Value > MBYTE then
  begin
    result := FloatToStrF(round(Value / MBYTE), ffNumber, 6, 0) + ' MB';
  end
  else if Value > KBYTE then
  begin
    result := FloatToStrF(round(Value / KBYTE), ffNumber, 6, 0) + ' KB';
  end
  else
  begin
    result := FloatToStrF(round(Value), ffNumber, 6, 0) + ' Byte';
  end;
end;

// ------------------------------------------------------------------------------

// Strings

function StrToReal(inString: string): real;
{ converte um n˙mero em Float }
var
  I: real;
  k: integer;
begin
  Val(inString, I, k);
  StrToReal := I;
end;

// ------------------------------------------------------------------------------

function BuscaDireita(Busca, Text: string): integer;
{ Pesquisa um caractere ‡ direita da string,
  retornando sua posiÁ„o }
var
  n, retorno: integer;
begin
  retorno := 0;
  for n := length(Text) downto 1 do
  begin
    if copy(Text, n, 1) = Busca then
    begin
      retorno := n;
      break;
    end;
  end;
  result := retorno;
end;

// ------------------------------------------------------------------------------

function BuscaTroca(Text, Busca, Troca: string): string;
{ Substitui um caractere dentro da string }
var
  n: integer;
begin
  for n := 1 to length(Text) do
  begin
    if copy(Text, n, 1) = Busca then
    begin
      Delete(Text, n, 1);
      Insert(Troca, Text, n);
    end;
  end;
  result := Text;
end;


// ------------------------------------------------------------------------------

function Codifica(const Str1: string): string;
{ Encripta uma string }
var
  Mascara, Str2: string;
  PonM, PonS   : Byte;
begin
  {
    Mascara := '#$%$'#13#12;
    Str2 := '';
    PonM := 1;
    for PonS := 1 to length(Str1) do
    begin
    AppendStr(Str2, Chr(Ord(Str1[PonS]) xor Ord(Mascara[PonM])));
    Inc(PonM);
    if PonM > Length(Mascara) then
    begin
    PonM := 1;
    end;
    Result := Str2;
    end;
  }
end;


// ------------------------------------------------------------------------------

function ContaCaracs(Edit: string): integer;
{ Retorna quantos caracteres tem um Edit especificado }
begin
  result := length(Edit);
end;


// ------------------------------------------------------------------------------

function Empty(inString: string): Boolean;
{ Testa se a variavel est· vazia ou n„o }
var
  index: Byte;
begin
  index := 1;
  Empty := true;
  while (index <= length(inString)) and (index <> 0) do
  begin
    if inString[index] = ' ' then
    begin
      inc(index)
    end
    else
    begin
      Empty := False;
      index := 0
    end;
  end;
end;

// ------------------------------------------------------------------------------

function LTrim(Texto: string): string;
{ Remove os EspaÁos em branco ‡ direita da string }
var
  I: integer;
begin
  I := 0;
  while true do
  begin
    inc(I);
    if I > length(Texto) then
      break;
    if Texto[I] <> #32 then
      break;
  end;
  result := copy(Texto, I, length(Texto));
end;


// ------------------------------------------------------------------------------

function Maiuscula(Texto: string): string;
{ Converte a primeira letra do texto especificado para
  maiuscula e as restantes para minuscula }
var
  OldStart: integer;
begin
  if Texto <> '' then
  begin
    Texto := UpperCase(copy(Texto, 1, 1)) + LowerCase(copy(Texto, 2, length(Texto)));
    result := Texto;
  end;
end;

// ------------------------------------------------------------------------------

function Padr(s: string; n: integer): string;
{ alinha uma string ‡ direita }
begin
  result := Format('%' + INTTOSTR(n) + '.' + INTTOSTR(n) + 's', [s]);
end;


// ------------------------------------------------------------------------------

function RemoveAcentos(Str: string): string;
{ Remove caracteres acentuados de uma string }
const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
  x: integer;
begin
  for x := 1 to length(Str) do
  begin
    if Pos(Str[x], ComAcento) <> 0 then
    begin
      Str[x] := SemAcento[Pos(Str[x], ComAcento)];
    end;
  end;
  result := Str;
end;

// ------------------------------------------------------------------------------

function Troca_acentos(Str: string): string;
{ Remove caracteres acentuados de uma string }
const
  ComAcento = 'ÖÉàìñ∆‰†Ç°¢£áÅ∑∂“‚Í«Âµê÷‡ÈÄö';
  SemAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';

var
  x: integer;
begin
  for x := 1 to length(Str) do
  begin
    if Pos(Str[x], ComAcento) <> 0 then
    begin
      Str[x] := SemAcento[Pos(Str[x], ComAcento)];
    end;
  end;
  result := Str;
end;

// ------------------------------------------------------------------------------

function caixa_letra_e_numero(Str: string): string;
{ Remove caracteres acentuados de uma string }
const
  Letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789';
var
  x  : integer;
  aux: string;
begin
  Str := UpperCase(Str);
  aux := '';
  for x := 1 to length(Str) do
  begin
    if Pos(Str[x], Letras) <> 0 then
    begin
      aux := aux + Str[x];
    end;
  end;
  while Pos(#32#32, aux) > 0 do
    Delete(aux, Pos(#32#32, aux), 1);
  result := aux;
end;

// ------------------------------------------------------------------------------

function SO_Letra_e_Numero(Str: string): string;
{ Remove caracteres acentuados de uma string }
const
  Letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
var
  x  : integer;
  aux: string;
begin
  Str := UpperCase(Str);
  aux := '';
  for x := 1 to length(Str) do
  begin
    if Pos(Str[x], Letras) <> 0 then
    begin
      // Str[x] := SemAcento[Pos(Str[x],ComAcento)];
      aux := aux + Str[x];
    end;
  end;
  // while pos('  ',aux) > 0 do aux[pos('  ',aux)] := ' ';
  result := aux;
end;

// ------------------------------------------------------------------------------

function caixa_so_numero(Str: string): string;
{ Remove caracteres acentuados de uma string }
const
  Letras = '0123456789';
var
  x  : integer;
  aux: string;
begin
  for x := 1 to length(Str) do
  begin
    if Pos(Str[x], Letras) <> 0 then
    begin
      // Str[x] := SemAcento[Pos(Str[x],ComAcento)];
      aux := aux + Str[x];
    end;
  end;
  result := aux;
end;

// ------------------------------------------------------------------------------

function Replicate(Caracter: string; Quant: integer): string;
{ Repete o mesmo caractere v·rias vezes }
var
  I: integer;
begin
  result := '';
  for I := 1 to Quant do
    result := result + Caracter;
end;


// ------------------------------------------------------------------------------

function RTrim(Texto: string): string;
{ Remove os EspaÁos em branco ‡ esquerda da string }
var
  I: integer;
begin
  I := length(Texto) + 1;
  while true do
  begin
    Dec(I);
    if I <= 0 then
      break;
    if Texto[I] <> #32 then
      break;
  end;
  result := copy(Texto, 1, I);
end;


// ------------------------------------------------------------------------------

function StringToFloat(s: string): Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numÈricas para sua representaÁ„o decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134 }
var
  I                   : integer;
  t                   : string;
  SeenDecimal, SeenSgn: Boolean;
begin
  {
    t := '';
    SeenDecimal := False;
    SeenSgn := False;
    //Percorre os caracteres da string:
    for i := Length(s) downto 0 do
    //Filtra a string, aceitando somente n˙meros e separador decimal:
    if (s[i] in ['0'..'9', '-', '+', DecimalSeparator]) then
    begin
    if (s[i] = DecimalSeparator) and (not SeenDecimal) then
    begin
    t := s[i] + t;
    SeenDecimal := True;
    end
    else if (s[i] in ['+', '-']) and (not SeenSgn) and (i = 1) then
    begin
    t := s[i] + t;
    SeenSgn := True;
    end
    else if s[i] in ['0'..'9'] then
    begin
    t := s[i] + t;
    end;
    end;
    Result := StrToFloat(t);
  }
end;

// ------------------------------------------------------------------------------

function Strs(I: LongInt): string;
{ Converte uma variavel numÈrica em string }
var
  x: string[16];
begin
  Str(I, x);
  Strs := x;
end;


// ------------------------------------------------------------------------------

function StrToPChar(const Str: string): PChar;
{ Converte String em Pchar }
type
  TRingIndex = 0 .. 7;
var
  Ring     : array [TRingIndex] of PChar;
  RingIndex: TRingIndex;
  Ptr      : PChar;
begin
  Ptr := @Str[length(Str)];
  inc(Ptr);
  if Ptr^ = #0 then
  begin
    result := @Str[1];
  end
  else
  begin
    result := StrAlloc(length(Str) + 1);
    RingIndex := (RingIndex + 1) mod (High(TRingIndex) + 1);
    StrPCopy(result, Str);
    StrDispose(Ring[RingIndex]);
    Ring[RingIndex] := result;
  end;
end;


// ------------------------------------------------------------------------------

function Alltrim(const Search: string): string;
{ Remove os espaÁos em branco de ambos os lados da string }
const
  BlackSpace = [#33 .. #126];
var
  index: Byte;
begin
  Index := 1;
  while (Index <= length(Search)) and not(Search[Index] in BlackSpace) do
  begin
    Index := Index + 1;
  end;
  result := copy(Search, Index, 255);
  Index := length(result);
  while (Index > 0) and not(result[Index] in BlackSpace) do
  begin
    Index := Index - 1;
  end;
  result := copy(result, 1, Index);
end;


// ------------------------------------------------------------------------------

function StrZero(Zeros: string; Quant: integer): string;
{ Insere Zeros ‡ frente de uma string }
var
  I, Tamanho: integer;
  aux       : string;
begin
  aux := Zeros;
  Tamanho := length(Zeros);
  Zeros := '';
  for I := 1 to Quant - Tamanho do
    Zeros := Zeros + '0';
  aux := Zeros + aux;
  StrZero := aux;
end;


// ------------------------------------------------------------------------------

function StrZerodec(Numero: Double; Total, Decimal: integer): string;
{ Insere Zeros e decimais ‡ frente de uma string }
var
  TempStr: string;
begin
  Str(Numero: 0: Decimal, TempStr);
  while length(TempStr) < Total do
  begin
    Insert('0', TempStr, 1);
  end;
  result := TempStr;

end;


// ------------------------------------------------------------------------------

function Padl(s: string; n: integer): string; // Alinhamento pela esquerda
{ alinha uma string ‡ esquerda }
begin
  result := Format('%-' + INTTOSTR(n) + '.' + INTTOSTR(n) + 's', [s]);
end;

// ------------------------------------------------------------------------------

function wordcount(Str: string): integer;
// Retorna o n˙mero de palavras que contem em uma string
var
  count: integer;
  I    : integer;
  Len  : integer;
begin
  Len := length(Str);
  count := 0;
  I := 1;
  while I <= Len do
  begin
    while ((I <= Len) and ((Str[I] = #32) or (Str[I] = #9) or (Str[I] = ';'))) do
      inc(I);
    if I <= Len then
      inc(count);
    while ((I <= Len) and ((Str[I] <> #32) and (Str[I] <> #9) and (Str[I] <> ';'))) do
      inc(I);
  end;
  wordcount := count;
end;


// ------------------------------------------------------------------------------

function LineIsEmpty(Text: string): Boolean;
// Testa se uma linha de texto est· vazia ou n„o
var
  I: Byte;
begin
  for I := 1 to length(Text) do
  begin
    if Text[I] <> ' ' then
    begin
      result := False;
      exit;
    end;
  end;
  result := true;
end;

// ------------------------------------------------------------------------------

function PadC(s: string; Len: Byte): string;
// Centraliza uma string em um espaÁo determinado
var
  Str: string;
  L  : Byte;
begin
  Str := '';
  if Len < length(s) then
  begin
    result := '';
    exit;
  end;
  L := (Len - length(s)) div 2;
  while L > 0 do
  begin
    Str := Str + ' ';
    Dec(L);
  end;
  for L := 1 to length(s) do
  begin
    Str := Str + s[L];
  end;
  result := Str;
end;

// ------------------------------------------------------------------------------

function FullFill(Str: string; FLen: Byte; symb: char): string;
// Preenche o restante da string com um caractere especificado
var
  s: string;
  I: Byte;
begin
  s := Str;
  if length(s) >= FLen then
  begin
    result := s;
    exit;
  end;
  for I := length(s) to FLen do
  begin
    s := s + symb;
  end;
  result := s;
end;


// ------------------------------------------------------------------------------

function Before(const Search, Find: string): string;
{ Retorna uma cadeia de caracteres antecedentes a uma parte da string selecionada }
const
  BlackSpace = [#33 .. #126];
var
  index: Byte;
begin
  index := Pos(Find, Search);
  if index = 0 then
    result := Search
  else
    result := copy(Search, 1, index - 1);
end;

// ------------------------------------------------------------------------------

function after(const Search, Find: string): string;
{ Retorna uma cadeia de caracteres apÛs a parte da string selecionada }
var
  index: Byte;
begin
  index := Pos(Find, Search);
  if index = 0 then
  begin
    result := '';
  end
  else
  begin
    result := copy(Search, index + length(Find), 255);
  end;
end;

// ------------------------------------------------------------------------------

function MaskString(valor: string): string;
begin
  // Result := FormatMaskText('!aaaaaaaaaaaaaa;0; ',(FormatFloat('#,##0.00',StrToFloat(valor))));
end;


// ------------------------------------------------------------------------------

function Encrypt(Senha: string): string;
{ Encripta uma String }
const
  Chave: string = 'Jesus';
var
  x, y     : integer;
  NovaSenha: string;
begin
  for x := 1 to length(Chave) do
  begin
    NovaSenha := '';
    for y := 1 to length(Senha) do
      NovaSenha := NovaSenha + chr((Ord(Chave[x]) xor Ord(Senha[y])));
    Senha := NovaSenha;
  end;
  result := Senha;
end;

// ------------------------------------------------------------------------------

function ExisteInt(Texto: string): Boolean;
{ Testa se em uma string existe um numero inteiro valido ou n„o }
var
  I: integer;
begin
  try
    I := StrToInt(Texto);
    result := true;
  except
    result := False;
  end;
end;

// ------------------------------------------------------------------------------

function extenso(valor: real): string;
var
  Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
  Unidades: array [1 .. 9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
  Dez: array [1 .. 9] of string      = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito',
    'Dezenove');
  Dezenas: array [1 .. 9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta',
    'Noventa');
  Centenas: array [1 .. 9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos',
    'Setecentos', 'Oitocentos', 'Novecentos');
  function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: string): string;
  begin
    if Expressao then
      result := CasoVerdadeiro
    else
      result := CasoFalso;
  end;

// ------------------------------------------------------------------------------

  function MiniExtenso(trio: string): string;
  var
    Unidade, Dezena, Centena: string;
  begin
    Unidade := '';
    Dezena := '';
    Centena := '';
    if (trio[2] = '1') and (trio[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(trio[3])];
      Dezena := '';
    end
    else
    begin
      if trio[2] <> '0' then
        Dezena := Dezenas[StrToInt(trio[2])];
      if trio[3] <> '0' then
        Unidade := Unidades[StrToInt(trio[3])];
    end;
    if (trio[1] = '1') and (Unidade = '') and (Dezena = '') then
      Centena := 'cem'
    else if trio[1] <> '0' then
      Centena := Centenas[StrToInt(trio[1])]
    else
      Centena := '';
    result := Centena + ifs((Centena <> '') and ((Dezena <> '') or (Unidade <> '')), ' e ', '') + Dezena +
      ifs((Dezena <> '') and (Unidade <> ''), ' e ', '') + Unidade;
  end;

begin
  if (valor > 999999.99) or (valor < 0) then
  begin
    msg := 'O valor est· fora do intervalo permitido.';
    msg := msg + 'O n˙mero deve ser maior ou igual a zero e menor que 999.999,99.';
    msg := msg + ' Se n„o for corrigido o n˙mero n„o ser· escrito por extenso.';
    showmessage(msg);
    result := '';
    exit;
  end;
  if valor = 0 then
  begin
    result := '';
    exit;
  end;
  Texto := formatfloat('000000.00', valor);
  Milhar := MiniExtenso(copy(Texto, 1, 3));
  Centena := MiniExtenso(copy(Texto, 4, 3));
  Centavos := MiniExtenso('0' + copy(Texto, 8, 2));
  result := Milhar;
  if Milhar <> '' then
    if copy(Texto, 4, 3) = '000' then
      result := result
    else
      result := result;
  if (((copy(Texto, 4, 2) = '00') and (Milhar <> '') and (copy(Texto, 6, 1) <> '0')) or (Centavos = '')) and (Centena <> '')
  then
    result := result;
  if (Milhar + Centena <> '') then
    result := result + Centena;
  if (Milhar = '') and (copy(Texto, 4, 3) = '001') then
    result := result
  else if (copy(Texto, 4, 3) <> '000') then
    result := result;
  if Centavos = '' then
  begin
    result := result;
    exit;
  end
  else
  begin
    if Milhar + Centena = '' then
      result := Centavos
    else
      //
      if length(result) > 0 then
      begin
        result := result + Centavos;
      end
      else
      begin
        result := result + '' + Centavos;
      end;
    if (copy(Texto, 8, 2) = '01') and (Centavos <> '') then
    begin
      result := result;
    end
    else
    begin
      result := result;
    end;
  end;
end;

// ------------------------------------------------------------------------------

procedure Mostra_Na_Tela;
begin
  try
    // frm_Mostra_na_Tela := Tfrm_Mostra_na_Tela.Create(Application);
    // frm_Mostra_na_Tela.ShowModal;
  finally
    // frm_Mostra_na_Tela.Free;
  end;
end;

// ------------------------------------------------------------------------------

function SoNumeros(Str: string): string;
{ Remove caracteres acentuados de uma string }
const
  Base_numeros = '0123456789';
var
  x  : integer;
  aux: string;

begin
  aux := '';
  for x := 1 to length(Str) do
  begin
    if Pos(Str[x], Base_numeros) <> 0 then
    begin
      aux := aux + Str[x];
    end;
  end;
  result := aux;
end;

// ------------------------------------------------------------------------------

function DATA_EXT(): string;
var
  D, M, y: Word;
  meses  : array [1 .. 12] of string;

begin
  meses[1] := 'Janeiro';
  meses[2] := 'Fevereiro';
  meses[3] := 'MarÁo';
  meses[4] := 'Abril';
  meses[5] := 'Maio';
  meses[6] := 'Junho';
  meses[7] := 'Julho';
  meses[8] := 'Agosto';
  meses[9] := 'Setembro';
  meses[10] := 'Outubro';
  meses[11] := 'Novembro';
  meses[12] := 'Dezembro';

  DecodeDate(Date, y, M, D);
  result := 'Rio Grande, ' + INTTOSTR(D) + ' de ' + meses[M] + ' de ' + INTTOSTR(y) + '.';
end;

// ------------------------------------------------------------------------------

procedure commit;
begin
  {
    with menu_sind.qry_Commit do
    begin
    sql.clear;
    sql.add('refresh tables');
    Open;
    end;
  }
end;


// ------------------------------------------------------------------------------

procedure CorNew(Sender: TObject); // Entrada do Controle
begin

  if (Sender is TEdit) then
    TEdit(Sender).Color := clred; // $00B3ECFD;
  if (Sender is TComboBox) then
    TComboBox(Sender).Color := clred; // $00B3ECFD;
  if (Sender is TListBox) then
    TListBox(Sender).Color := clred; // $00B3ECFD;
  // if (Sender is tcu)  then TCurrencyEdit(Sender).Color  := clRed;    //$00B3ECFD;

end;

procedure CorOld(Sender: TObject); // Saida do Controle
begin
  if (Sender is TEdit) then
    TEdit(Sender).Color := clWindow;
  if (Sender is TComboBox) then
    TComboBox(Sender).Color := clWindow;
  if (Sender is TListBox) then
    TListBox(Sender).Color := clWindow;
  // if (Sender is TCurrencyEdit)  then TCurrencyEdit(Sender).Color  := clRed;    //$00B3ECFD;
end;

// ------------------------------------------------------------------------------

function Inteiro(valor, divisor: real): integer;
var
  aux    : string;
  retorno: integer;
  x      : real;
begin
  // calcula
  x := valor / divisor;
  aux := CurrToStr(x);
  if Pos(',', aux) > 0 then
    aux := copy(aux, 1, Pos(',', aux) - 1);
  retorno := StrToInt(aux);
  result := retorno;

end;

// ------------------------------------------------------------------------------

function vpis(Dado: string): Boolean;
var
  I, wsoma, wm11, wdv, wdigito: integer;
begin
  if Trim(Dado) <> '' then
  begin
    wdv := StrToInt(copy(Dado, 11, 1));
    wsoma := 0;
    wm11 := 2;
    for I := 1 to 10 do
    begin
      wsoma := wsoma + (wm11 * StrToInt(copy(Dado, 11 - I, 1)));
      if wm11 < 9 then
        wm11 := wm11 + 1
      else
        wm11 := 2;
    end;
    wdigito := 11 - (wsoma mod 11);
    if wdigito > 9 then
      wdigito := 0;
    if wdv = wdigito then
    begin
      // MessageBox('Valor v·lido!','Aviso !', mb_IconStop+mb_ok);
      vpis := true;
    end
    else
    begin
      // Application.MessageBox('Valor informado n„o È v·lido!', 'AtenÁ„o!', mb_IconStop+mb_ok);
      showmessage('PIS Informado INVALIDO');
      vpis := False;
    end;
  end;
end;

// ------------------------------------------------------------------------------

function cpf(Num: string): Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9: integer;
  d1, d2                            : integer;
  digitado, calculado               : string;
begin
  n1 := StrToInt(Num[1]);
  n2 := StrToInt(Num[2]);
  n3 := StrToInt(Num[3]);
  n4 := StrToInt(Num[4]);
  n5 := StrToInt(Num[5]);
  n6 := StrToInt(Num[6]);
  n7 := StrToInt(Num[7]);
  n8 := StrToInt(Num[8]);
  n9 := StrToInt(Num[9]);
  d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
  d1 := 11 - (d1 mod 11);
  if d1 >= 10 then
    d1 := 0;
  d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
  d2 := 11 - (d2 mod 11);
  if d2 >= 10 then
    d2 := 0;
  calculado := INTTOSTR(d1) + INTTOSTR(d2);
  digitado := Num[10] + Num[11];
  if calculado = digitado then
    cpf := true
  else
    cpf := False;
end;

// ------------------------------------------------------------------------------

function cnpj(Num: string): Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: integer;
  d1, d2                                           : integer;
  digitado, calculado                              : string;
begin
  n1 := StrToInt(Num[1]);
  n2 := StrToInt(Num[2]);
  n3 := StrToInt(Num[3]);
  n4 := StrToInt(Num[4]);
  n5 := StrToInt(Num[5]);
  n6 := StrToInt(Num[6]);
  n7 := StrToInt(Num[7]);
  n8 := StrToInt(Num[8]);
  n9 := StrToInt(Num[9]);
  n10 := StrToInt(Num[10]);
  n11 := StrToInt(Num[11]);
  n12 := StrToInt(Num[12]);
  d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;
  d1 := 11 - (d1 mod 11);
  if d1 >= 10 then
    d1 := 0;
  d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 *
    5 + n1 * 6;
  d2 := 11 - (d2 mod 11);
  if d2 >= 10 then
    d2 := 0;
  calculado := INTTOSTR(d1) + INTTOSTR(d2);
  digitado := Num[13] + Num[14];
  if calculado = digitado then
    result := true
  else
    result := False;
end;

// ------------------------------------------------------------------------------

function Modulo10(valor: string): string;
{
  Rotina usada para c·lculo de alguns dÌgitos verificadores
  Pega-se cada um dos dÌgitos contidos no par‚metro VALOR, da direita para a
  esquerda e multiplica-se por 2121212...
  Soma-se cada um dos subprodutos. Caso algum dos subprodutos tenha mais de um
  dÌgito, deve-se somar cada um dos dÌgitos. (Exemplo: 7*2 = 14 >> 1+4 = 5)
  Divide-se a soma por 10.
  Faz-se a operaÁ„o 10-Resto da divis„o e devolve-se o resultado dessa operaÁ„o
  como resultado da funÁ„o Modulo10.
  Obs.: Caso o resultado seja maior que 9, dever· ser substituÌdo por 0 (ZERO).
}
var
  Somatoria, P, Resto, Peso, I: integer;
begin
  Peso := 2;
  Somatoria := 0;
  for I := length(valor) downto 1 do
  begin
    P := StrToInt(valor[I]) * Peso;
    if P > 9 then
      inc(Somatoria, P - 9)
    else
      inc(Somatoria, P);

    if Peso = 2 then
      Peso := 1
    else
      Peso := 2;
  end;

  Resto := Somatoria mod 10;

  if Resto = 0 then
    result := '0'
  else
    result := INTTOSTR(10 - Resto);
end;

{ rotina original em clipper funcionando no BANRISUL

  function mod10(nossonu,somadig)
  aux1  = nossonu
  aux2  = 0   //calculo de cada digito
  soma1 = 0    //soma do laco
  PESO = 2
  for xx =  len(aux1) TO 1 STEP -1
  soma1 = val(substr(aux1,xx,1))
  if PESO = 2  //int(xx / 2) == xx / 2  // o numero Ç PAR
  soma1  = soma1 * 2
  if soma1 > 9
  soma1 = soma1 - 9
  endif
  endif
  aux2 = aux2 + soma1
  IF PESO = 2
  PESO = 1
  ELSE
  PESO = 2
  ENDIF
  next
  soma1 = aux2
  if aux2 < 10
  resto = aux2
  else
  resto = AUX2 % 10        // resto
  endif
  if resto = 0.00
  quociente = "0"
  else
  quociente = ALLTRIM(STR(10 - resto,19))   //str(int(aux2 / 10),1)
  endif
  return quociente

}

// ------------------------------------------------------------------------------

function Modulo11(valor: string; Base: integer): string;
{
  Rotina muito usada para calcular dÌgitos verificadores
  Pega-se cada um dos dÌgitos contidos no par‚metro VALOR, da direita para a
  esquerda e multiplica-se pela seq¸Íncia de pesos 2, 3, 4 ... atÈ BASE.
  Por exemplo: se a base for 9, os pesos ser„o 2,3,4,5,6,7,8,9,2,3,4,5...
  Se a base for 7, os pesos ser„o 2,3,4,5,6,7,2,3,4...
  Soma-se cada um dos subprodutos.
  Divide-se a soma por 11.
  Faz-se a operaÁ„o 11-Resto da divis„o e devolve-se o resultado dessa operaÁ„o
  como resultado da funÁ„o Modulo11.
  Obs.: Caso o resultado seja maior que 9, dever· ser substituÌdo por 0 (ZERO).
}
var
  Somatoria, P, Peso, I, Resto: integer;
begin
  Peso := 2;
  Somatoria := 0;
  for I := length(valor) downto 1 do
  begin
    P := StrToInt(valor[I]) * Peso;
    inc(Somatoria, P);

    if Peso < Base then
      inc(Peso, 1)
    else
      Peso := 2;
  end;

  Resto := Somatoria mod 11;

  if (Resto = 0) or (Resto = 1) then
    result := '0'
  else
    result := INTTOSTR(11 - Resto);
end;

// ------------------------------------------------------------------------------

function CalcDigVerificador(CodigoBarras: string): char;
var
  Somatoria, P, Peso, I, Resto: integer;
begin
  Peso := 2;
  Somatoria := 0;
  for I := length(CodigoBarras) downto 1 do
    if I <> 5 then
    // Pula a quinta casa, pois eh a propria casa do digito verificador
    begin
      P := StrToInt(CodigoBarras[I]) * Peso;
      inc(Somatoria, P);
      if Peso < 9 then
        inc(Peso, 1)
      else
        Peso := 2;
    end;

  Resto := 11 - (Somatoria mod 11);

  if (Resto = 0) or (Resto = 1) or (Resto > 9) then
    result := '1'
  else
    result := chr(48 + Resto); // CHR(48) = '0', CHR(49) = '1', etc...
end;

// ------------------------------------------------------------------------------

function Formatar(Texto: string; TamanhoDesejado: integer; AcrescentarADireita: Boolean = true;
  CaracterAcrescentar: char = ' '): string;
{
  OBJETIVO: Eliminar caracteres inv·lidos e acrescentar caracteres ‡ esquerda ou ‡ direita do texto original para que a string resultante fique com o tamanho desejado

  Texto : Texto original
  TamanhoDesejado: Tamanho que a string resultante dever· ter
  AcrescentarADireita: Indica se o car·cter ser· acrescentado ‡ direita ou ‡ esquerda
  TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar car·cter ‡ direita
  Se o tamanho do texto for MAIOR que o desejado, eliminar ˙ltimos caracteres do texto
  FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar car·cter ‡ esquerda
  Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
  CaracterAcrescentar: Car·cter que dever· ser acrescentado
}
var
  QuantidadeAcrescentar, TamanhoTexto, PosicaoInicial, I: integer;

begin
  case CaracterAcrescentar of
    '0' .. '9', 'a' .. 'z', 'A' .. 'Z':
      ; { N„o faz nada }
  else
    CaracterAcrescentar := ' ';
  end;

  Texto := Trim(AnsiUpperCase(Texto));
  TamanhoTexto := length(Texto);
  for I := 1 to (TamanhoTexto) do
  begin
    if Pos(Texto[I], ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0
    then
    begin
      case Texto[I] of
        '¡', '¿', '¬', 'ƒ', '√':
          Texto[I] := 'A';
        '…', '»', ' ', 'À':
          Texto[I] := 'E';
        'Õ', 'Ã', 'Œ', 'œ':
          Texto[I] := 'I';
        '”', '“', '‘', '÷', '’':
          Texto[I] := 'O';
        '⁄', 'Ÿ', '€', '‹':
          Texto[I] := 'U';
        '«':
          Texto[I] := 'C';
        '—':
          Texto[I] := 'N';
      else
        Texto[I] := ' ';
      end;
    end;
  end;

  QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
  if QuantidadeAcrescentar < 0 then
    QuantidadeAcrescentar := 0;
  if CaracterAcrescentar = '' then
    CaracterAcrescentar := ' ';
  if TamanhoTexto >= TamanhoDesejado then
    PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
  else
    PosicaoInicial := 1;

  if AcrescentarADireita then
    Texto := copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
  else
    Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) + copy(Texto, PosicaoInicial, TamanhoDesejado);

  result := AnsiUpperCase(Texto);
end;

// ------------------------------------------------------------------------------

function FormatarComMascara(StringFormato, Texto: string): string;
begin
  // Result := FormatMaskText(StringFormato,Texto);
end;

procedure padroniza_form;
begin
  //
end;

function SerialNum(FDrive: string): string;
var
  Serial       : DWord;
  DirLen, Flags: DWord;
  DLabel       : array [0 .. 11] of char;
begin
  try
    GetVolumeInformation(PChar(FDrive + ':\'), DLabel, 12, @Serial, DirLen, Flags, nil, 0);
    result := IntToHex(Serial, 8);
  except
    result := '';
  end;
end;

function Cripto_y4(Texto: string): string;
var
  Cont, Cod: integer;
  Retorna  : string;
begin
  for Cont := 1 to length(Texto) do
  begin
    Cod := ValorAsc(copy(Texto, Cont, 1));
    Retorna := Retorna + chr(Cod + 126);
    // (*valor a ser adicionado - pode ser modificado*));
  end;
  result := Retorna;
end;

function DesCripto_y4(Texto: string): string;
var
  Cont, Cod: integer;
  Retorna  : string;
begin
  for Cont := 1 to length(Texto) do
  begin
    Cod := ValorAsc(copy(Texto, Cont, 1));
    Retorna := Retorna + chr(Cod - 126);
  end;
  result := Retorna;
end;

function ValorAsc(Letra: string): Byte;
begin
  if length(Letra) > 0 then
    ValorAsc := Ord(Letra[1])
  else
    ValorAsc := 0;
end;

function Usuario: string;
var
  NomedoUsuario: array [0 .. 255] of char;
  buffSize     : DWord;
begin
  buffSize := SizeOf(NomedoUsuario);
  GetUserName(@NomedoUsuario, buffSize);
  result := NomedoUsuario;
end;

function Crypt2(Action, Src: string): string;
label Fim;
var
  KeyLen   : integer;
  KeyPos   : integer;
  OffSet   : integer;
  Dest, Key: string;
  SrcPos   : integer;
  SrcAsc   : integer;
  TmpSrcAsc: integer;
  Range    : integer;
begin
  if (Src = '') then
  begin
    result := '';
    goto Fim;
  end;
  Key := 'YUQL23KL23';
  Key := Key + 'DF90IBRWI5';
  Key := Key + 'ROLOFFE1JAS';
  Key := Key + '467NMCXXL6J';
  Key := Key + 'AOAUWWMCL0A';
  Key := Key + 'OMM4A4VZYW9K';
  Key := Key + 'HJUI2347EJHJ';
  Key := Key + 'KDF342IBRL K';
  Key := Key + '3LABITECOURTKJ';
  Dest := '';
  KeyLen := length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= length(Src));
  end;
  result := Dest;
Fim:
end;

function JustificaTxt(mCad: string; mMAx: integer): string;
var
  mPos, mPont, mTam, mNr, mCont: integer;
  mStr                         : string;
begin
  mTam := length(mCad);

  if mTam >= mMAx then
    result := copy(mCad, 1, mMAx)
  else
    mStr := '';

  mCont := 0;
  mPont := 1;
  mNr := mMAx - mTam;

  while mCont < mNr do
  begin
    mPos := Pos(mStr, copy(mCad, mPont, 100));
    if mPos = 0 then
    begin
      mStr := mStr + ' ';
      mPont := 1;
      continue;
    end
    else
    begin
      mCont := mCont + 1;
      Insert(' ', mCad, mPos + mPont);
      mPont := mPont + mPos + length(mStr);
    end;
    result := mCad;
  end;

end;

{
  function pl_contas(_valor: Real ;
  _reduzido: string;
  Operacao: string;
  deb_cre: string;
  _ano: integer) : Boolean;
  var  ww_plano_nivel_0,
  ww_plano_nivel_1,
  ww_plano_nivel_2,
  ww_plano_nivel_3,
  ww_plano_nivel_4,
  ww_plano_nivel_5,
  ww_plano_nivel_6,
  ww_plano_nivel_7,
  ww_plano_nivel_8,
  ww_plano_nivel_9,
  ww_plano_nivel_10 : integer;
  ww_val_debito,
  ww_val_credito : Currency;
  ww_deb,
  ww_cre         : Currency;
  x : integer;
  ponto_de_calculo : integer;
  begin
  // posiciona e guarda a hierarquia do plano
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where reduzido=:reduzido');
  Params[0].AsInteger  := strtoint(_reduzido);
  Open;
  end;
  // carrega os ponteiros
  ww_plano_nivel_0 := DataModule1.qry_aux.FIELDbyName('nivel_0').AsInteger;
  ww_plano_nivel_1 := DataModule1.qry_aux.FIELDbyName('nivel_1').AsInteger;
  ww_plano_nivel_2 := DataModule1.qry_aux.FIELDbyName('nivel_2').AsInteger;
  ww_plano_nivel_3 := DataModule1.qry_aux.FIELDbyName('nivel_3').AsInteger;
  ww_plano_nivel_4 := DataModule1.qry_aux.FIELDbyName('nivel_4').AsInteger;
  ww_plano_nivel_5 := DataModule1.qry_aux.FIELDbyName('nivel_5').AsInteger;
  ww_plano_nivel_6 := DataModule1.qry_aux.FIELDbyName('nivel_6').AsInteger;
  ww_plano_nivel_7 := DataModule1.qry_aux.FIELDbyName('nivel_7').AsInteger;
  ww_plano_nivel_8 := DataModule1.qry_aux.FIELDbyName('nivel_8').AsInteger;
  ww_plano_nivel_9 := DataModule1.qry_aux.FIELDbyName('nivel_9').AsInteger;
  ww_plano_nivel_10:= DataModule1.qry_aux.FIELDbyName('nivel_10').AsInteger;

  datamodule1.ww_conta_contabil := inttostr(ww_plano_nivel_1)+'.'+
  inttostr(ww_plano_nivel_2)+'.'+
  inttostr(ww_plano_nivel_3)+'.'+
  inttostr(ww_plano_nivel_4)+'.'+
  inttostr(ww_plano_nivel_5)+'.'+
  inttostr(ww_plano_nivel_6)+'.'+
  inttostr(ww_plano_nivel_7)+'.'+
  inttostr(ww_plano_nivel_8)+'.'+
  inttostr(ww_plano_nivel_9)+'.'+
  inttostr(ww_plano_nivel_10)+'.';
  // Atualiza conta de nivel 10
  // ==========================================================================
  for x :=10  downto 1 do
  begin
  ponto_de_calculo := 0;
  case x of
  1:if ww_plano_nivel_1 <> 0 then ponto_de_calculo := 1;
  2:if ww_plano_nivel_2 <> 0 then ponto_de_calculo := 1;
  3:if ww_plano_nivel_3 <> 0 then ponto_de_calculo := 1;
  4:if ww_plano_nivel_4 <> 0 then ponto_de_calculo := 1;
  5:if ww_plano_nivel_5 <> 0 then ponto_de_calculo := 1;
  6:if ww_plano_nivel_6 <> 0 then ponto_de_calculo := 1;
  7:if ww_plano_nivel_7 <> 0 then ponto_de_calculo := 1;
  8:if ww_plano_nivel_8 <> 0 then ponto_de_calculo := 1;
  9:if ww_plano_nivel_9 <> 0 then ponto_de_calculo := 1;
  10:if ww_plano_nivel_10 <> 0 then ponto_de_calculo := 1;
  end;
  if ponto_de_calculo = 1 then
  begin
  {
  case x of
  1: ww_plano_nivel_1 := 0;
  2: ww_plano_nivel_2 := 0;
  3: ww_plano_nivel_3 := 0;
  4: ww_plano_nivel_4 := 0;
  5: ww_plano_nivel_5 := 0;
  6: ww_plano_nivel_6 := 0;
  7: ww_plano_nivel_7 := 0;
  8: ww_plano_nivel_8 := 0;
  9: ww_plano_nivel_9 := 0;
  10: ww_plano_nivel_10:= 0;
  end;
}
{
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  //ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_cre := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  case x of
  1: ww_plano_nivel_1 := 0;
  2: ww_plano_nivel_2 := 0;
  3: ww_plano_nivel_3 := 0;
  4: ww_plano_nivel_4 := 0;
  5: ww_plano_nivel_5 := 0;
  6: ww_plano_nivel_6 := 0;
  7: ww_plano_nivel_7 := 0;
  8: ww_plano_nivel_8 := 0;
  9: ww_plano_nivel_9 := 0;
  10: ww_plano_nivel_10:= 0;
  end;

  end;
  end;
}
{

  function pl_contas222(_valor: Real ; _reduzido: string; Operacao: string;
  deb_cre: string; _ano: integer) : Boolean;
  var  ww_plano_nivel_0,
  ww_plano_nivel_1,
  ww_plano_nivel_2,
  ww_plano_nivel_3,
  ww_plano_nivel_4,
  ww_plano_nivel_5,
  ww_plano_nivel_6,
  ww_plano_nivel_7,
  ww_plano_nivel_8,
  ww_plano_nivel_9,
  ww_plano_nivel_10 : integer;
  ww_val_debito,
  ww_val_credito : Currency;
  ww_deb,
  ww_cre         : Currency;


  begin
  // posiciona e guarda a hierarquia do plano
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where reduzido=:reduzido');
  Params[0].AsInteger  := strtoint(_reduzido);
  Open;
  end;
  // carrega os ponteiros
  ww_plano_nivel_0 := DataModule1.qry_aux.FIELDbyName('nivel_0').AsInteger;
  ww_plano_nivel_1 := DataModule1.qry_aux.FIELDbyName('nivel_1').AsInteger;
  ww_plano_nivel_2 := DataModule1.qry_aux.FIELDbyName('nivel_2').AsInteger;
  ww_plano_nivel_3 := DataModule1.qry_aux.FIELDbyName('nivel_3').AsInteger;
  ww_plano_nivel_4 := DataModule1.qry_aux.FIELDbyName('nivel_4').AsInteger;
  ww_plano_nivel_5 := DataModule1.qry_aux.FIELDbyName('nivel_5').AsInteger;
  ww_plano_nivel_6 := DataModule1.qry_aux.FIELDbyName('nivel_6').AsInteger;
  ww_plano_nivel_7 := DataModule1.qry_aux.FIELDbyName('nivel_7').AsInteger;
  ww_plano_nivel_8 := DataModule1.qry_aux.FIELDbyName('nivel_8').AsInteger;
  ww_plano_nivel_9 := DataModule1.qry_aux.FIELDbyName('nivel_9').AsInteger;
  ww_plano_nivel_10:= DataModule1.qry_aux.FIELDbyName('nivel_10').AsInteger;

  datamodule1.ww_conta_contabil := inttostr(ww_plano_nivel_1)+'.'+
  inttostr(ww_plano_nivel_2)+'.'+
  inttostr(ww_plano_nivel_3)+'.'+
  inttostr(ww_plano_nivel_4)+'.'+
  inttostr(ww_plano_nivel_5)+'.'+
  inttostr(ww_plano_nivel_6)+'.'+
  inttostr(ww_plano_nivel_7)+'.'+
  inttostr(ww_plano_nivel_8)+'.'+
  inttostr(ww_plano_nivel_9)+'.'+
  inttostr(ww_plano_nivel_10)+'.';
  // Atualiza conta de nivel 10
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 <> 0) and
  (ww_plano_nivel_3 <> 0) and
  (ww_plano_nivel_4 <> 0) and
  (ww_plano_nivel_5 <> 0) and
  (ww_plano_nivel_6 <> 0) and
  (ww_plano_nivel_7 <> 0) and
  (ww_plano_nivel_8 <> 0) and
  (ww_plano_nivel_9 <> 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  //ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_cre := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  ww_plano_nivel_9 := 0;

  // Atualiza conta de nivel 9
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 <> 0) and
  (ww_plano_nivel_3 <> 0) and
  (ww_plano_nivel_4 <> 0) and
  (ww_plano_nivel_5 <> 0) and
  (ww_plano_nivel_6 <> 0) and
  (ww_plano_nivel_7 <> 0) and
  (ww_plano_nivel_8 <> 0) and
  (ww_plano_nivel_9 = 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_deb := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  ww_plano_nivel_8 := 0;

  // Atualiza conta de nivel 8
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 <> 0) and
  (ww_plano_nivel_3 <> 0) and
  (ww_plano_nivel_4 <> 0) and
  (ww_plano_nivel_5 <> 0) and
  (ww_plano_nivel_6 <> 0) and
  (ww_plano_nivel_7 <> 0) and
  (ww_plano_nivel_8 = 0) and
  (ww_plano_nivel_9 = 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_deb := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  ww_plano_nivel_7 := 0;


  // Atualiza conta de nivel 6
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 <> 0) and
  (ww_plano_nivel_3 <> 0) and
  (ww_plano_nivel_4 <> 0) and
  (ww_plano_nivel_5 <> 0) and
  (ww_plano_nivel_6 <> 0) and
  (ww_plano_nivel_7 = 0) and
  (ww_plano_nivel_8 = 0) and
  (ww_plano_nivel_9 = 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_deb := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  ww_plano_nivel_6 := 0;


  // Atualiza conta de nivel 5
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 <> 0) and
  (ww_plano_nivel_3 <> 0) and
  (ww_plano_nivel_4 <> 0) and
  (ww_plano_nivel_5 <> 0) and
  (ww_plano_nivel_6 = 0) and
  (ww_plano_nivel_7 = 0) and
  (ww_plano_nivel_8 = 0) and
  (ww_plano_nivel_9 = 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_deb := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  ww_plano_nivel_5 := 0;


  // Atualiza conta de nivel 4
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 <> 0) and
  (ww_plano_nivel_3 <> 0) and
  (ww_plano_nivel_4 <> 0) and
  (ww_plano_nivel_5 = 0) and
  (ww_plano_nivel_6 = 0) and
  (ww_plano_nivel_7 = 0) and
  (ww_plano_nivel_8 = 0) and
  (ww_plano_nivel_9 = 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_deb := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  ww_plano_nivel_4 := 0;



  // Atualiza conta de nivel 3
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 <> 0) and
  (ww_plano_nivel_3 <> 0) and
  (ww_plano_nivel_4 = 0) and
  (ww_plano_nivel_5 = 0) and
  (ww_plano_nivel_6 = 0) and
  (ww_plano_nivel_7 = 0) and
  (ww_plano_nivel_8 = 0) and
  (ww_plano_nivel_9 = 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_deb := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  ww_plano_nivel_3 := 0;


  // Atualiza conta de nivel 2
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 <> 0) and
  (ww_plano_nivel_3 = 0) and
  (ww_plano_nivel_4 = 0) and
  (ww_plano_nivel_5 = 0) and
  (ww_plano_nivel_6 = 0) and
  (ww_plano_nivel_7 = 0) and
  (ww_plano_nivel_8 = 0) and
  (ww_plano_nivel_9 = 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger   := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_deb := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;
  ww_plano_nivel_2 := 0;
  // Atualiza conta de nivel 1
  // ==========================================================================
  if (ww_plano_nivel_1 <> 0) and
  (ww_plano_nivel_2 = 0) and
  (ww_plano_nivel_3 = 0) and
  (ww_plano_nivel_4 = 0) and
  (ww_plano_nivel_5 = 0) and
  (ww_plano_nivel_6 = 0) and
  (ww_plano_nivel_7 = 0) and
  (ww_plano_nivel_8 = 0) and
  (ww_plano_nivel_9 = 0) and
  (ww_plano_nivel_10 =  0) then
  begin
  with DataModule1.qry_aux do
  begin
  sql.Clear;
  sql.Add('Select * from polar_110 where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  Params[0].AsInteger   := ww_plano_nivel_0;
  Params[1].AsInteger   := ww_plano_nivel_1;
  Params[2].AsInteger   := ww_plano_nivel_2;
  Params[3].AsInteger   := ww_plano_nivel_3;
  Params[4].AsInteger   := ww_plano_nivel_4;
  Params[5].AsInteger   := ww_plano_nivel_5;
  Params[6].AsInteger   := ww_plano_nivel_6;
  Params[7].AsInteger   := ww_plano_nivel_7;
  Params[8].AsInteger   := ww_plano_nivel_8;
  Params[9].AsInteger   := ww_plano_nivel_9;
  Params[10].AsInteger  := ww_plano_nivel_10;
  Open;
  end;
  ww_val_credito := 0;
  ww_val_debito  := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  // coleta o valor atual da conta analitica
  ww_val_credito :=  DataModule1.qry_aux.FIELDbyName('credito').AsCurrency;
  ww_val_debito :=  DataModule1.qry_aux.FIELDbyName('debito').AsCurrency;
  end
  else
  begin
  ShowMessage('Conta nao encontada nivel 5');
  end;

  // atualiza no analitica
  if operacao = 'SOMAR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito + _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito + _valor;
  ww_deb := ww_val_debito;
  end;
  END;
  if operacao = 'DIMINUIR' THEN
  BEGIN
  if UpperCase(deb_cre) = 'DEB' THEN
  begin
  ww_cre := ww_val_credito;
  ww_deb := ww_val_debito - _valor;
  end;
  if UpperCase(deb_cre) = 'CRE' THEN
  begin
  ww_cre := ww_val_credito - _valor;
  ww_deb := ww_val_debito;
  end;
  END;

  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  sql.Add('UpDate polar_110 set debito=:ww_deb,'+
  'credito=:ww_cre '+
  ' where nivel_0=:n0'+
  ' and nivel_1=:n1 '+
  ' and nivel_2=:n2 '+
  ' and nivel_3=:n3 '+
  ' and nivel_4=:n4 '+
  ' and nivel_5=:n5 '+
  ' and nivel_6=:n6 '+
  ' and nivel_7=:n7 '+
  ' and nivel_8=:n8 '+
  ' and nivel_9=:n9 '+
  ' and nivel_10=:n10 ');
  ParamByName('ww_deb').AsCurrency := ww_deb;
  ParamByName('ww_cre').AsCurrency := ww_cre;
  ParamByName('n0').AsInteger   := ww_plano_nivel_0;
  ParamByName('n1').AsInteger   := ww_plano_nivel_1;
  ParamByName('n2').AsInteger   := ww_plano_nivel_2;
  ParamByName('n3').AsInteger   := ww_plano_nivel_3;
  ParamByName('n4').AsInteger   := ww_plano_nivel_4;
  ParamByName('n5').AsInteger   := ww_plano_nivel_5;
  ParamByName('n6').AsInteger   := ww_plano_nivel_6;
  ParamByName('n7').AsInteger   := ww_plano_nivel_7;
  ParamByName('n8').AsInteger   := ww_plano_nivel_8;
  ParamByName('n9').AsInteger   := ww_plano_nivel_9;
  ParamByName('n10').AsInteger   := ww_plano_nivel_10;
  ExecSQL;
  end;
  end;

  end;
}
{
  function pl_lancamento(_referencia: string;          // codigo do fornecedor
  _tabela: string;              // tabela de origem dese fornecedor
  _conta_reduzida: string;      // conta reduzida
  _documento: String;           // numero do documento
  _emissao: string;             // Data do Documento
  _descricao: string;           // descricao do lanÁamento
  _debito: Real;                // Valor a Debito
  _credito: Real;               // valor a Credito
  _conta_contabil: string;      //
  _codigo_produto: string;      //
  _operacao: string) : boolean; // codigo dos produtos
  begin
  IF _operacao = 'INCLUIR' THEN
  BEGIN
  with DataModule1.qry_aux do
  begin
  sql.clear;
  sql.Add('Replace into polar_102('+
  ' conta_origem   , tabela_ref   ,reduzido    , documento  ,'+
  ' emissao        , conta        , descricao  , debito     ,'+
  ' credito        , ctb_ano      , codigo_produto          ,'+
  ' data_cadastro  , inclusao)');
  sql.Add('Values('+
  ':conta_origem   ,:tabela_ref   ,:reduzido    ,:documento  ,'+
  ':emissao        ,:conta        ,:descricao   ,:debito     ,'+
  ':credito        ,:ctb_ano      ,:codigo_produto,           '+
  ':data_cadastro  ,:inclusao)');
  Params[0].AsString      := _referencia;
  Params[1].AsString      := _tabela;
  Params[2].AsString      := _conta_reduzida;
  Params[3].Asstring      := _documento;
  Params[4].AsDateTime    := strtodatetime(_emissao);
  Params[5].Asstring      := DataModule1.ww_conta_contabil;
  Params[6].AsString      := _descricao;

  IF _conta_reduzida<>'584'  then  // conta 3.1.2.3.receitas de descontos
  begin
  Params[7].AsCurrency    := _debito;
  Params[8].AsCurrency    := _credito;
  end
  else
  begin
  Params[7].AsCurrency    := _credito;
  Params[8].AsCurrency    := _debito;
  end;
  params[9].Asinteger     := 2010; //DataModule1.qry_parametrosano_contabil.AsInteger;
  params[10].Asstring     := _codigo_produto;
  params[11].AsDateTime   := now();
  params[12].AsString     := DataModule1.qry_loginCODIGO.AsString;
  ExecSQL;
  end;
  end;
  IF _operacao = 'EXCLUIR' THEN
  BEGIN
  with DataModule1.qry_aux do
  begin
  sql.clear;
  sql.Add('Delete from polar_102 ');
  sql.Add(' where (ctb_ano=:ctb_ano)');
  sql.Add(' and (conta_origem=:conta_origem) ');
  sql.Add(' and (tabela_ref =:tabela_ref) ');
  sql.Add(' and (documento=:documento) ');
  sql.Add(' and (emissao=:emissao) ');
  sql.Add(' and (reduzido=:reduzido) ');
  sql.Add(' and (codigo_produto=:codigo_produto)');
  params[0].Asinteger     := 2010;  //DataModule1.qry_parametrosano_contabil.AsInteger;
  Params[1].Asstring      := _conta_contabil;
  Params[2].AsString      := _tabela;
  Params[3].Asstring      := _documento;
  Params[4].AsDateTime    := strtodatetime(_emissao);
  Params[5].AsString      := _conta_reduzida;
  params[6].Asstring      := _codigo_produto;
  ExecSQL;
  end;
  // gravar o arquivo texto para seguranÁa
  // -------------------------------------
  END;
  end;

  function pl_compras(_obra: string;     // codigo da obra
  _item: Integer;    // item orÁado
  _sub_item: Integer;// sub-item orÁado
  _valor: Real;      // valor da compra
  _operacao: string) : boolean; // operaÁ„o aplicada
  var aux_valor : Currency;
  aux_orcedo_item,
  aux_orcedo_zero  : Currency;
  begin
  // guarda o valor do sub-item atual
  with DataModule1.qry_aux do
  begin
  sql.clear;
  sql.Add('Select * from polar_002 '+
  ' where (obra=:obra) '+
  ' and   (item=:item) '+
  ' and   (sub_item=:sub_item)');
  Params[0].AsString  := _obra;
  Params[1].AsInteger := _item;
  Params[2].AsInteger := _sub_item;
  OPen;
  end;
  aux_valor  := 0;
  aux_orcedo_item := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  aux_valor := DataModule1.qry_aux.fieldByName('valor_material_real').AsCurrency;
  aux_orcedo_item := DataModule1.qry_aux.fieldByName('valor_material_orcado').AsCurrency
  end;

  with DataModule1.qry_aux do
  begin
  sql.clear;
  sql.Add('UpDate polar_002 set valor_material_real=:v1');
  sql.Add(' where obra=:obra ');
  sql.Add(' and item=:item ');
  sql.Add(' and sub_item=:sub_item');
  IF _operacao = 'INCLUIR' THEN
  Params[0].AsCurrency := _valor+aux_valor
  else
  Params[0].AsCurrency := _valor-aux_valor;

  Params[1].AsString :=   _obra;
  Params[2].AsInteger := _item;
  Params[3].AsInteger := _sub_item;
  ExecSQL;
  end;
}
{
  with DataModule1.qry_aux do
  begin
  sql.clear;
  sql.Add('Select * from polar_002 '+
  ' where (obra=:obra) '+
  ' and   (item=:item) '+
  ' and   (sub_item=:sub_item)');
  Params[0].AsString  := _obra;
  Params[1].AsInteger := _item;
  Params[2].AsInteger := 0;
  OPen;
  end;

  aux_valor       := 0;
  aux_orcedo_zero := 0;
  if DataModule1.qry_aux.RecordCount > 0 then
  begin
  aux_valor := DataModule1.qry_aux.fieldByName('valor_material_real').AsCurrency;
  aux_orcedo_zero := DataModule1.qry_aux.fieldByName('valor_material_orcado').AsCurrency
  end;

  with DataModule1.qry_aux do
  begin
  sql.clear;
  sql.Add('UpDate polar_002 set valor_material_real=:v1');
  sql.Add(' where obra=:obra ');
  sql.Add(' and item=:item ');
  sql.Add(' and sub_item=:sub_item');
  IF _operacao = 'INCLUIR' THEN
  Params[0].AsCurrency := _valor+aux_valor
  else
  Params[0].AsCurrency := _valor-aux_valor;

  Params[1].AsString   := _obra;
  Params[2].AsInteger  := _item;
  Params[3].AsInteger  := 0;
  ExecSQL;
  end;
}
// end;

{
  function retorna_reduzido(_conta: string) : string;
  var AUX : STRING;
  ww_red : integer;
  xz,nn_0,nn_1,nn_2,
  nn_3,nn_4,nn_5 : integer;
  nn_6,nn_7,nn_8,
  nn_9,nn_10 : integer;
  posicao : integer;
  x :integer;
  begin
  xz:=0;   nn_0:=0; nn_1:=0; nn_2:=0;
  nn_3:=0; nn_4:=0; nn_5:=0;
  nn_6:=0; nn_7:=0; nn_8:=0;
  nn_9:=0; nn_10:=0;
  posicao:=1;
  x :=0;
  aux := '';
  for xz := 1 to length(_conta) do
  begin
  if copy(_conta,xz,1) <> '.' then
  aux := aux + copy(_conta,xz,1)
  else
  begin
  case posicao of
  1: nn_1 := StrToInt(aux);
  2: nn_2 := StrToInt(aux);
  3: nn_3 := StrToInt(aux);
  4: nn_4 := StrToInt(aux);
  5: nn_5 := StrToInt(aux);
  6: nn_6 := StrToInt(aux);
  7: nn_7 := StrToInt(aux);
  8: nn_8 := StrToInt(aux);
  9: nn_9 := StrToInt(aux);
  10: nn_10 := StrToInt(aux);
  end;
  aux := '';
  posicao := posicao + 1;
  end;
  end;
  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  SQL.Add('Select * from polar_110 Where '+
  ' nivel_1=:n_1 '+
  ' and nivel_2=:n_2 '+
  ' and nivel_3=:n_3 '+
  ' and nivel_4=:n_4 '+
  ' and nivel_5=:n_5 '+
  ' and nivel_6=:n_6 '+
  ' and nivel_7=:n_7 '+
  ' and nivel_8=:n_8 '+
  ' and nivel_9=:n_9 '+
  ' and nivel_10=:n_10 ');
  Params[0].AsInteger    := nn_1;
  Params[1].AsInteger    := nn_2;
  Params[2].AsInteger    := nn_3;
  Params[3].AsInteger    := nn_4;
  Params[4].AsInteger    := nn_5;
  Params[5].AsInteger    := nn_6;
  Params[6].AsInteger    := nn_7;
  Params[7].AsInteger    := nn_8;
  Params[8].AsInteger    := nn_9;
  Params[9].AsInteger    := nn_10;
  open;
  end;

  DataModule1.ww_conta_contabil := DataModule1.Qry_apoio.fieldByName('nivel_1').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_2').asstring <> '0' then
  datamodule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_2').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_3').asstring <> '0' then
  datamodule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_3').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_4').asstring <> '0' then
  datamodule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_4').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_5').asstring <> '0' then
  datamodule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_5').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_6').asstring <> '0' then
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_6').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_7').asstring <> '0' then
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_7').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_8').asstring <> '0' then
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_8').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_9').asstring <> '0' then
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_9').asstring +'.';

  if DataModule1.Qry_apoio.fieldByName('nivel_10').asstring <> '0' then
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_10').asstring +'.';

  result := datamodule1.Qry_apoio.fieldByName('reduzido').AsString;
  end;
}

{
  function retorna_EXTENSO(_conta: string) : string;
  var AUX : STRING;
  ww_red : integer;
  xz,nn_0,nn_1,nn_2,
  nn_3,nn_4,nn_5 : integer;
  nn_6,nn_7,nn_8,
  nn_9,nn_10 : integer;
  posicao : integer;
  x :integer;
  begin
  xz:=0;   nn_0:=0; nn_1:=0; nn_2:=0;
  nn_3:=0; nn_4:=0; nn_5:=0;
  nn_6:=0; nn_7:=0; nn_8:=0;
  nn_9:=0; nn_10:=0;
  posicao:=1;
  x :=0;
  aux := '';
  with DataModule1.Qry_apoio do
  begin
  sql.Clear;
  SQL.Add('Select * from polar_110 Where '+
  ' reduzido=:n_1 ');
  Params[0].AsInteger    := strtoint(_conta);
  open;
  end;

  DataModule1.ww_conta_contabil := DataModule1.Qry_apoio.fieldByName('nivel_1').asstring +'.';
  datamodule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_2').asstring +'.';
  datamodule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_3').asstring +'.';
  datamodule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_4').asstring +'.';
  datamodule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_5').asstring +'.';
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_6').asstring +'.';
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_7').asstring +'.';
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_8').asstring +'.';
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_9').asstring +'.';
  DataModule1.ww_conta_contabil := datamodule1.ww_conta_contabil+DataModule1.Qry_apoio.fieldByName('nivel_10').asstring +'.';
  result := DataModule1.ww_conta_contabil;

  end;
}

end.
