unit uFuncoes;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms,
  Dialogs, Printers;

{  Functions  }
Function FormataFone(Fone: String): string;
function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
function StrIsInteger(const S: string): boolean;
Function ValidacaoData(sData : String): Boolean;
function EspacoEsq(const I: string; const Casas: byte): string;
function EspacoDir(const I: string; const Casas: byte): string;
function caractersemacento ( str: String ): String;
function Centraliza (wStr1: String; wTama: Integer): String;
function ZeroEsquerda(const I: integer; const Casas: byte): string;
function AllTrim(OQue : String) : String;
function PadLeft(StrToPad: String; LenToPad: Integer; StrFill: String) : String;
function PadRight(StrToPad: String; LenToPad: Integer; StrFill: String) : String;
function ValidaData(sData : String) : Boolean;
function DiadaSemana(Data : TDateTime) : String;
function DiaSemanaAbrev(Data : TDateTime) : String;
function CompData(sDataIni, sDataFim4, sMensagem1, sMensagem2 : String) : Boolean;
function MesExtenso(Data : TDateTime) : string;
function Mes(Data : TDateTime) : string;
function NomeEstado(Sigla : String) : String;
function VerificaEstado(Sigla : String) : Boolean;
function ValidaNum(sNum : String) : Boolean;
function Confirma_Exclusao : Boolean;
function Formata_CPFCGC(Valor, Tipo: String) : string;
function IsInteger(TestaString: String) : boolean;
//=============================================================
function BiosDate: String;
function CorrentPrinter :String;
function DateMais(Dat:TDateTime;Numdias:Integer): TDateTime;
function JanelaExiste(Classe,Janela:String) :Boolean;
function DelphiCarregado : Boolean;
function DetectaDrv(const drive : char): boolean;
//function DiasNoMes(AYear, AMonth: Integer): Integer;
function DifDateUtil(dataini,datafin:string):integer;
function DifHora(Inicio,Fim : String):String;
function DiscoNoDrive(const drive : char): boolean;
function ExisteInt(Texto:String): Boolean;
function GetDefaultPrinterName : string;
function GetMemoryTotalPhys : DWord;
function IdadeAtual(Nasc : TDate): Integer;
function IdadeN(Nascimento:TDateTime) : String;
function IsDigit(c:char):boolean;
function IsPrinter : Boolean;
function MemoryReturn(Categoria: integer): integer;
function NumeroSerie(Unidade:PChar):String;
function PercentDisk(unidade: byte): Integer;
function SystemDateTime(tDate: TDateTime; tTime: TDateTime): Boolean;
function TestaCgc(xCGC: String):Boolean;
function validapis(Dado : String) : boolean;
function AnoBis(Data: TDateTime): Boolean;
function ValidarPJF(Numero: String): Boolean;
function ValidarHora(hr : string):boolean;
function ValidaCPF(num:string): Boolean;
function IsCPF( xCPF:String ): Boolean;
function testacpf(cpf:string):boolean; //teste cpf com máscara

{ Procedures }
procedure Adverte(Mensagem,Cabecalho : String);
procedure Informacao(Mensagem,Cabecalho : String);
procedure Ampulheta;
procedure Seta;
procedure Delay(iMSecs: Integer);
procedure Sound(Freq:Word);
//procedure AjustaForms(formulario: TForm);
procedure AjustaForm(Form: TForm);
//procedure NoSound;

// Atribuo um set para cadas operacao
type
//   TOperacao = (opInsert, opUpdate, opDelete, opNone);

  TCaracteres = Set of Char; //Definimos o nosso set e dizemos o seu tipo
  TNumeros    = set of Char; //Definimos o nosso set e dizemos o seu tipo

var
  resultado : word;
  dDatavalida : TDateTime;
  iNumValido : Integer;
  sUsuario : String;
  icodigo : integer;

const
	ScreenWidth: LongInt = 1024; {I designed my form in 800x600 mode.}
  ScreenHeight: LongInt = 768;

  // Letras maiúsculas e minúsculas e caracteres especiais
  CARACTERES: TCaracteres = ['A'..'Z', 'a'..'z', #33..#47, #58..#64, #91..#96, #123..#126, #128..#255];

  // Números
  NUMEROS: 		TNumeros 		= ['0'..'9', #40];

implementation

uses Variants;
{
const
  ScreenWidth: LongInt = 1024; {I designed my form in 800x600 mode.
  ScreenHeight: LongInt = 768;
}


{-----------------------------------------------------------------------------}
{ Função : retira todos os em brancos da string                               }
{ Parametros : OQue - string que será retirado os brancos                     }
{ Retorno :  String                                                           }
{-----------------------------------------------------------------------------}
function AllTrim(OQue : String) : String;
Begin
  While Pos(' ',OQue) > 0 do
    Delete(OQue,Pos(' ',OQue),1);
  result := OQue;
end;

{-----------------------------------------------------------------------------}
{ Função : Abrir janela de mensagem com o ícone de advertência                }
{ Parametros : mensagem - string que conterá a mensagem                       }
{              cabecalho - cabecalho da caixa, vazio será assumido "Atenção"  }
{-----------------------------------------------------------------------------}
Procedure Adverte(Mensagem,Cabecalho : String);
Begin
  if cabecalho = '' then
     cabecalho := 'Atenção';

  MessageBeep(MB_ICONASTERISK);
  resultado := Application.MessageBox(Pchar(Mensagem),PChar(Cabecalho),
               MB_APPLMODAL+MB_OK+MB_ICONWARNING);
end;

{-----------------------------------------------------------------------------}
{ Função : Abrir janela de mensagem com o ícone de informação                 }
{ Parametros : mensagem - string que conterá a mensagem                       }
{              cabecalho - cabecalho da caixa, vazio será assumido "Atenção"  }
{-----------------------------------------------------------------------------}
Procedure Informacao(Mensagem, Cabecalho : String);
begin
  if cabecalho = '' then
     cabecalho := 'Informação';
  resultado := Application.MessageBox(Pchar(Mensagem),PChar(Cabecalho),
               MB_APPLMODAL+MB_OK+MB_ICONEXCLAMATION);
end;

{-----------------------------------------------------------------------------}
{ Função : retira todos os caracteres da esquerda da string                   }
{ Parametros : StrToPad - String para retirar os caracteres,                  }
{ LenToPad - tamanho para ser retirado, StrFill - caracter para ser eliminado }
{ Retorno :  String                                                           }
{-----------------------------------------------------------------------------}
function PadLeft(StrToPad: String; LenToPad: Integer; StrFill: String) : String;
var
  cStr : String;
  iCont, iLimite: Integer;
begin
  cStr := '';
  iLimite := LenToPad - Length(StrToPad);
  if LenToPad > Length(StrToPad) then
     for iCont := 1 to iLimite do
         cStr := cStr + StrFill;
  PadLeft := cStr + StrToPad;
end;

{-----------------------------------------------------------------------------}
{ Função : retira todos os caracteres da direita da string                    }
{ Parametros : StrToPad - String para retirar os caracteres,                  }
{ LenToPad - tamanho para ser retirado, StrFill - caracter para ser eliminado }
{ Retorno :  String                                                           }
{-----------------------------------------------------------------------------}
function PadRight(StrToPad: String; LenToPad: Integer; StrFill: String) : String;
var
  cStr : String;
  iCont, iLimite: Integer;
begin
  cStr := '';
  iLimite := LenToPad - Length(StrToPad);
  if LenToPad > Length(StrToPad) then
    for iCont := 1 to iLimite do
       cStr := cStr + StrFill;
  PadRight := StrToPad + cStr;
end;

{-----------------------------------------------------------------------------}
{ Validar Datas                                                               }
{ Parametros :  DATA - string que conterá a daa que será avaliada             }
{ Retorno : Boolean - TRUE se Inválida                                        }
{-----------------------------------------------------------------------------}
function ValidaData(sData :String) : Boolean;
Begin
  Result := FAlse;  // se a data for válida retorna FALSE
  if AllTrim(sData) <> '//' then
  begin
    try
       dDatavalida := StrToDate(sData);
    except
      on EConvertError do
      begin
        Adverte('Data Inválida !','Aviso');
        Result := True; // se a data for inválida retorna TRUE
      end;
    end;
  end;
end;

{-----------------------------------------------------------------------------}
{ Retorna o dia da semana                                                     }
{ Parametros :  DATA - Data atual                                             }
{ Retorno : string com o dia da semana                                        }
{-----------------------------------------------------------------------------}
function DiadaSemana(Data : TDateTime) : String;
var
  i : integer;
const
  cSemana : Array[1..7] of string = ( 'Domingo','Segunda-Feira',
                                      'Terça-Feira','Quarta-Feira',
                                      'Quinta-Feira','Sexta-Feira',
                                      'Sábado' );
begin
  i := DayOfWeek(Data);
  if i = 0 then
  begin
    Result := 'Dia inválido!!!';
    Exit;
  end;
  Result := cSemana[i];
end;

{-----------------------------------------------------------------------------}
{ Retorna a abreviatura do dia da semana                                      }
{ Parametros :  DATA - Data atual                                             }
{ Retorno : string com a abreviatura do dia da semana                         }
{-----------------------------------------------------------------------------}
function DiaSemanaAbrev(Data : TDateTime) : String;
var
  i : integer;

const
  cSemana : Array[1..7] of string = ( 'Dom','Seg','Ter','Qua','Qui','Sex', 'Sáb' );
begin
  i := DayOfWeek(Data);
  if i = 0 then
  begin
    Result := 'Dia inválido!!!';
    Exit;
  end;
  Result := cSemana[i];
end;


{------------------------------------------------------------------------------}
{ Testar se a Data Final é menor que a Data Inicial                            }
{ Parametros :  sDataIni - string que contera a data inicial                   }
{               sDataFim - string que contera a data final                     }
{ Retorno : Boolean - TRUE se Data Final menor  que inicial                    }
{------------------------------------------------------------------------------}
function CompData(sDataIni, sDataFim4, sMensagem1, sMensagem2 : String) : Boolean;
begin
  Result := FALSE; // se a data inicial maior que a data final
  if (alltrim(sDataIni) <> '//') and (alltrim(sDataIni) <> '//') then
  begin
    if StrToDate(sDataIni) > StrToDate(sDataFim4) then
    begin
      Adverte(sMensagem2+' '+'deve ser maior que '+' '+sMensagem1,'');
      Result := True; // se a data inicial menor que a data final
    end;
  end;
end;

{------------------------------------------------------------------------------}
{ Retornar o mes por extenso                                                   }
{ Parametros :  Data - data atual                                              }
{ Retorno : string com o mes                                                   }
{------------------------------------------------------------------------------}
function MesExtenso(Data : TDateTime) : string;
var
  wDia, wMes, wAno : Word;
const
  cMeses : Array[1..12] of String = ( 'Janeiro','Fevereiro','Março',
                                      'Abril','Maio','Junho','Julho',
                                      'Agosto','Setembro','Outubro',
                                      'Novembro','Dezembro' );
begin
  DecodeDate(Data, wDia, wMes, wAno);
  Result := cMeses[wMes];
end;

{------------------------------------------------------------------------------}
{ Retornar a sigla do mes                                                      }
{ Parametros :  Data - Data atual                                              }
{ Retorno : string com a sigla do mes                                          }
{------------------------------------------------------------------------------}
function Mes(Data : TDateTime) : string;
var
  wDia, wMes, wAno : Word;
const
  cMeses : Array[1..12] of String = ( 'JAN','FEV','MAR','ABR','MAI','JUN',
                                      'JUL','AGO','SET','OUT','NOV','DEZ' );
begin
  DecodeDate(Data, wDia, wMes, wAno);
  Result := cMeses[wMes];
end;

{--------------------------------------------------------------------------}
{ Retornar o nome do estado por extenso                                    }
{ Parametros :  Sigla - string que conterá a sigla do estado               }
{ Retorno : String com o nome do estado                                    }
{--------------------------------------------------------------------------}
function NomeEstado(Sigla : String) : String;
var
  iPosicao, iIndice : Integer;
const
  cEstados : Array[1..28] of String = ( 'Acre','Alagoas','Amazonas','Amapá',
                                        'Bahia','Ceará','Distrito Federal',
                                        'Espírito Santo','Goiás','Maranhão',
                                        'Minas Gerais','Mato Grosso do Sul',
                                        'Mato Grosso','Para','Paraíba',
                                        'Pernambuco','Piaui','Paraná',
                                        'Rio de Janeiro','Rondônia',
                                        'Rio Grande do Norte','Roraima',
                                        'Rio Grande do Sul','Santa Catarina',
                                        'Sergipe','São Paulo','Tocantins',
                                        'Fernando de Noronha' );
  cSiglas : Array[1..28] of String =  ( 'AC','AL','AM','AP','BA','CE','DF',
                                        'ES','GO','MA','MG','MS','MT','PA',
                                        'PB','PE','PI','PR','RJ','RO','RN',
                                        'RR','RS','SC','SE','SP','TO','FN' );
begin
  iPosicao := 0;

  for iIndice := 1 to High(cSiglas) do
  begin
    if cSiglas[iIndice] = Sigla then
      iPosicao := iIndice;
  end;

  if iPosicao = 0 then
    Result := 'Sigla de estado inválida!'
  else
    Result := cEstados[iPosicao];
end;

{----------------------------------------------------------------------------}
{ Verifica se o estado é valido ou não                                       }
{ Parametros : Sigla - string que conterá a sigla do estado                  }
{ Retorno : Booleano - se TRUE estado OK, se FALSE estado invalido           }
{----------------------------------------------------------------------------}
function VerificaEstado(Sigla : String) : Boolean;
var
  iPosicao, iIndice : Integer;
const
  cSiglas : Array[1..28] of String =  ( 'AC','AL','AM','AP','BA','CE','DF',
                                        'ES','GO','MA','MG','MS','MT','PA',
                                        'PB','PE','PI','PR','RJ','RO','RN',
                                        'RR','RS','SC','SE','SP','TO','FN' );
begin
  iPosicao := 0;

  for iIndice := 1 to High(cSiglas) do
  begin
    if cSiglas[iIndice] = Sigla then
      iPosicao := iIndice;
  end;

  if iPosicao = 0 then
    Result := False
  else
    Result := True;
end;

{--------------------------------------------------------------------------}
{ Validar Numeros                                                          }
{ Parametros :  NUM - string que conterá numero que será avaliado          }
{ Retorno : Boolean - TRUE se Inválido                                     }
{--------------------------------------------------------------------------}
function ValidaNum(sNum :String) : Boolean;
begin
  Result := False;  // se numero for válido retorna FALSE
  if AllTrim(sNum) <> '' then
  begin
    try
      iNumValido := StrToInt(sNum);
    except
      on EConvertError do
      begin
        Result := True; // se numero for inválido retorna TRUE
      end;
    end;
  end;
end;

Function Confirma_Exclusao : Boolean;
begin
  if Application.MessageBox('Confirma Exclusão do Registro?','Confirmação',
                            MB_APPLMODAL + MB_ICONQUESTION + MB_DEFBUTTON2+
                            MB_OKCANCEL) = IDCANCEL then
    Result := False
  else
    Result := True;
end;

procedure Ampulheta;
begin
  Screen.Cursor := crHourGlass;
end;

procedure Seta;
begin
  Screen.Cursor := crDefault;
end;

// Tipo: F- Fisica - CPF
//       J- Juridica - CGC
function Formata_CPFCGC(Valor, Tipo: String) : string;
begin
  if Tipo = 'F' then
  begin
    Result := Copy(Valor,1,3)+'.'+Copy(Valor,4,3)+'.'+
              Copy(Valor,7,3)+'-'+Copy(Valor,10,2);
  end
  else
  begin
    Result := Copy(Valor,1,2)+'.'+Copy(Valor,3,3)+'.'+
              Copy(Valor,6,3)+'/'+Copy(Valor,9,4)+'-'+
              Copy(Valor,13,2);
  end;
end;

//========================================================================
//=======================================================================
//=======================================================================
//=======================================================================
// Retorna a data da fabricação do Chip da Bios do sistema
function BiosDate: String;
begin
  result := string(pchar(ptr($FFFF5)));
end;

// Retorna a impressora padrão do windows
// Requer a unit printers declarada na clausula uses da unit
function CorrentPrinter :String;
var
   Device : array[0..255] of char;
   Driver : array[0..255] of char;
   Port   : array[0..255] of char;
   hDMode : THandle;
begin
  Printer.GetPrinter(Device, Driver, Port, hDMode);
  Result := Device+' na porta ' + Port;
end;

{ Soma um determinado número de dias a uma data }
function DateMais(Dat:TDateTime;Numdias:Integer): TDateTime;
begin
  Dat := Dat + Numdias;
  Result := Dat;
end;

// Estas funções servem para verificar
// se o delphi está carregado ou não
Function JanelaExiste(Classe,Janela:String) :Boolean;
var
  PClasse,PJanela : array[0..79] of char;
begin
  if Classe = '' then
    PClasse[0] := #0
  else
    StrPCopy(PClasse,Classe);

  if Janela = '' then
    PJanela[0] := #0
  else
    StrPCopy(PJanela, Janela);

  if FindWindow(PClasse, PJAnela) <> 0 then
    result := true
  else
    Result := false;
end;

Function DelphiCarregado : Boolean;
begin
   Result := False;
  if JanelaExiste('TPropertyInspector','Object Inspector') then
  begin
    result := True;
  end
  else
  begin
    result := False;
  end;
end;

(*{ No evento OnCreate do form coloque:}
if not DelphiCarregado then
   showmessage('Delphi está ativo, bom menino!')
else
begin
     Showmessage('Vc não poderá utilizar esta aplicação! Mau garoto!');
     application.terminate;
end;*)

{Detecta quantas unidade possui no computador}
function DetectaDrv(const drive : char): boolean;
var
  Letra: string;
begin
  Letra := drive + ':\';
  if GetDriveType(PChar(Letra)) < 2 then
  begin
    result := False;
  end
  else
  begin
    result := True;
  end;
end;

// Retorna quantos dias tem um referido mes do ano
{function DiasNoMes(AYear, AMonth: Integer): Integer;
var
   dData : TDateTime;
   sData : String;
   iDias : Integer;
const
     DaysInMonth: array[1..12] of Integer = ( 31, 28, 31, 30, 31, 30, 31, 31,
                                              30, 31, 30, 31);
begin
     if Length(IntToStr(AYear)) <> 4 then
     begin
          Adverte( 'ERRO FATAL......'+#13+
                   'Parametro errado na função DIASNOMES()!'+#13+
                   'Ano deve ter 4 digitos.','Aviso');
          Application.Terminate;
     end;
     sData := '01/'+PadLeft(IntToStr(Amonth),2,'0')+'/'+IntToStr(AYear);
     dData := StrToDate(sData);
     if AMonth = 2 then
     begin
          if AnoBis(dData) then
          begin
               Inc(DaysInMonth[AMonth]);
          end;
     end;
     iDias := DaysInMonth[AMonth];
     if AMonth = 2 then
        DaysInMonth[AMonth] := 28;
     Result := iDias;
end;
}
{Retorna a quantidade de dias uteis entre duas datas}
function DifDateUtil(dataini,datafin:string):integer;
var
  a, b, c:TDateTime;
  ct, s:integer;
begin
  if StrToDate(DataFin) < StrtoDate(DataIni) then
  begin
    Result := 0;
    exit;
  end;

  ct := 0;
  s  := 1;
  a  := strtodate(dataFin);
  b  := strtodate(dataIni);

  if a > b then
  begin
    c := a;
    a := b;
    b := c;
    s := 1;
  end;
  a := a + 1;
  while (dayofweek(a)<>2) and (a <= b) do
  begin
    if dayofweek(a) in [2..6] then
    begin
      inc(ct);
    end;
    a := a + 1;
  end;

  ct := ct + round((5*int((b-a)/7)));
  a := a + (7*int((b-a)/7));

  while a <= b do
  begin
    if dayofweek(a) in [2..6] then
    begin
      inc(ct);
    end;
    a := a + 1;
  end;

  if ct < 0 then
  begin
    ct := 0;
  end;

  result := s * ct;
end;

{Retorna a diferença entre duas horas}
function DifHora(Inicio,Fim : String):String;
var
  FIni, FFim : TDateTime;
begin
  Fini := StrTotime(Inicio);
  FFim := StrToTime(Fim);
  If (Inicio > Fim) then
  begin
    Result := TimeToStr((StrTotime('23:59:59')-Fini)+FFim)
  end
  else
  begin
    Result := TimeToStr(FFim-Fini);
  end;
end;

{Detecta se há disco no Drive}
function DiscoNoDrive(const drive : char): boolean;
var
  DriveNumero : byte;
  EMode : word;
begin
  EMode := 0;
  result := false;
  DriveNumero := ord(Drive);
  if DriveNumero >= ord('a') then
  begin
    dec(DriveNumero,$20);
    EMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  end;

  try
    if DiskSize(DriveNumero-$40) = -1 then
    begin
      Result := False;
    end
    else
    begin
      Result := True;
    end;
  except
    SetErrorMode(EMode);
  end;
end;

{Testa se em uma string existe um numero inteiro valido ou não}
function ExisteInt(Texto:String): Boolean;
var
  i: Integer;
begin
  try
    i      := StrToInt(Texto);
    Result := True;
  except
    Result := False;
  end;
end;

// Retorna o nome da impressora padrão do Windows
function GetDefaultPrinterName : string;
begin
  if(Printer.PrinterIndex > 0)then
  begin
    Result := Printer.Printers[Printer.PrinterIndex];
  end
  else
  begin
    Result := 'Nenhuma impressora Padrão foi detectada';
  end;
end;

// Retorna o total de memoria do computador
function GetMemoryTotalPhys : DWord;
var
  ms : TMemoryStatus;
begin
  ms.dwLength := SizeOf( ms );
  GlobalMemoryStatus( ms );
  Result := ms.dwTotalPhys;
end;

// Retorna a idade Atual de uma pessoa a partir da data de nascimento
// Esta função retorna a idade em formato integer
function IdadeAtual(Nasc : TDate): Integer;
var
  AuxIdade, Meses : String;
  MesesFloat : Real;
  IdadeInc, IdadeReal : Integer;
begin
  AuxIdade := Format('%0.2f', [(Date - Nasc) / 365.6]);
  Meses := FloatToStr(Frac(StrToFloat(AuxIdade)));

  if AuxIdade = '0' then
  begin
    Result := 0;
    Exit;
  end;
  if Meses[1] = '-' then
  begin
    Meses := FloatToStr(StrToFloat(Meses) * -1);
  end;
  Delete(Meses, 1, 2);
  if Length(Meses) = 1 then
  begin
    Meses := Meses + '0';
  end;
  if (Meses <> '0') And (Meses <> '') then
  begin
    MesesFloat := Round(((365.6 * StrToInt(Meses)) / 100) / 30.47)
  end
  else
  begin
    MesesFloat := 0;
  end;
  if MesesFloat <> 12 then
  begin
    IdadeReal := Trunc(StrToFloat(AuxIdade)); // + MesesFloat;
  end
  else
  begin
    IdadeInc := Trunc(StrToFloat(AuxIdade));
    Inc(IdadeInc);
    IdadeReal := IdadeInc;
  end;
  Result := IdadeReal;
end;

// Retorna a idade de uma pessoa a partir da data de nascimento
function IdadeN(Nascimento:TDateTime) : String;
type
  Data = Record
    Ano : Word;
    Mes : Word;
    Dia : Word;
  end;
const
  Qdm:String = '312831303130313130313031'; // Qtde dia no mes
var
  Dth : Data;                         // Data de hoje
  Dtn : Data;                         // Data de nascimento
  anos, meses, dias, nrd : Shortint;  // Usadas para calculo da idade
begin
  DecodeDate(Date,Dth.Ano,Dth.Mes,Dth.Dia);
  DecodeDate(Nascimento,Dtn.Ano,Dtn.Mes,Dtn.Dia);
  anos := Dth.Ano - Dtn.Ano;
  meses := Dth.Mes - Dtn.Mes;
  if meses < 0 then
  begin
    Dec(anos);
    meses := meses+12;
  end;
  dias := Dth.Dia - Dtn.Dia;
  if dias < 0 then
  begin
    nrd := StrToInt(Copy(Qdm,(Dth.Mes-1)*2-1,2));
    if ((Dth.Mes-1)=2) and ((Dth.Ano Div 4)=0) then
    begin
         Inc(nrd);
    end;
    dias := dias+nrd;
    meses := meses-1;
  end;
  {
  Result := IntToStr(anos)+' Anos '+IntToStr(meses)+
            ' Meses '+IntToStr(dias)+' Dias';
  }

  // 1 ano, 1 mes, 1 dia
  if (anos = 1) and (meses = 1) and (dias = 1) then
  begin
    Result := IntToStr(anos)  + ' ano ' +
              IntToStr(meses) + ' mes ' +
              IntToStr(dias)  + ' dia';
    exit;
  end;

  // 1 ano, 1 mes, varios dias
  if (anos = 1) and (meses = 1) and (dias > 1) then
  begin
    Result := IntToStr(anos)  + ' ano ' +
              IntToStr(meses) + ' mes ' +
              IntToStr(dias)  + ' dias';
    exit;
  end;

  // 1 ano, 1 dia
  if (anos = 1) and (meses = 0) and (dias = 1) then
  begin
    Result := IntToStr(anos) + ' ano ' +
              IntToStr(dias) + ' dia';
    exit;
  end;

  // 1 ano, varios meses, 1 dia
  if (anos = 1) and (meses > 1) and (dias = 1) then
  begin
    Result := IntToStr(anos)  + ' ano ' +
              IntToStr(meses) + ' meses ' +
              IntToStr(dias)  + ' dia';
    exit;
  end;  //faltou 1 ano, varios dias, 1 meses

  // 1 ano
  if (anos = 1) and (meses = 0) and (dias = 0) then
  begin
    Result := IntToStr(anos) + ' ano ';
    exit;
  end;

  // varios anos
  if (anos > 1) and (meses = 0) and (dias = 0) then
  begin
    Result := IntToStr(anos)+' anos ';
    exit;
  end;

  // varios anos, 1 mes, 1 dia
  if (anos > 1) and (meses = 1) and (dias = 1) then
  begin
    Result := IntToStr(anos)  + ' anos ' +
              IntToStr(meses) + ' mes '  +
              IntToStr(dias)  + ' dia';
    exit;
  end;

  // varios anos, varios meses, 1 dia
  if (anos > 1) and (meses > 1) and (dias = 1) then
  begin
    Result := IntToStr(anos)  + ' anos '  +
              IntToStr(meses) + ' meses ' +
              IntToStr(dias)  + ' dia';
    exit;
  end;

  // varios anos, varios meses, varios dias
  if (anos > 1) and (meses > 1) and (dias > 1) then
  begin
    Result := IntToStr(anos)  + ' anos '  +
              IntToStr(meses) + ' meses ' +
              IntToStr(dias)  + ' dias';
    exit;
  end;

  // varios dias
  if (anos = 0) and (meses = 0) and (dias > 1) then
  begin
    Result := IntToStr(anos) + ' anos ' +
              IntToStr(dias) + ' dias';
    exit;
  end;

  // 1 dia
  if (anos = 0) and (meses = 0) and (dias = 1) then
  begin
    Result := IntToStr(dias) + ' dia';
    exit;
  end;

  // 1 mes
  if (anos = 0) and (meses = 1) and (dias = 0) then
  begin
    Result := IntToStr(meses) + ' mes ';
    exit;
  end;

  // 1 mes 1 dia
  if (anos = 0) and (meses = 1) and (dias = 1) then
  begin
    Result := IntToStr(meses) + ' Mes ' +
              IntToStr(dias)  + ' dia ';
    exit;
  end;

  // 1 mes, varios dias
  if (anos = 0) and (meses = 1) and (dias > 1) then
  begin
    Result := IntToStr(meses) + ' mes ' +
              IntToStr(dias)  + ' dias ';
    exit;
  end;

  // varios meses e dias
  if (anos = 0) and (meses > 1) and (dias > 1) then
  begin
    Result := IntToStr(meses) + ' meses ' +
              IntToStr(dias)  + ' dias ';
    exit;
  end;

  // varios meses
  if (anos = 0) and (meses > 1) and (dias = 0) then
  begin
    Result := IntToStr(meses) + ' meses ';
    exit;
  end;

end;

// Testa se o dado é um digito (numero) ou
// um caractere qualquer
function IsDigit(c:char):boolean;
begin
  result := c in ['0'..'9']
end;

{Testa se a impressora está ativa ou não, retornando .t.
 em caso positivo}
function IsPrinter : Boolean;
const
  PrnStInt  : Byte = $17;
  StRq      : Byte = $02;
  PrnNum    : Word = 0;  { 0 para LPT1, 1 para LPT2, etc. }
var
  nResult : byte;
begin  (* IsPrinter*)
  Asm
     mov ah,StRq;
     mov dx,PrnNum;
     Int $17;
     mov nResult,ah;
  end;
  IsPrinter := (nResult and $80) = $80;
End;

// Retorna a memoria do sistema
// voce pode usar a tabela abaixo para fazer as devidas modificações
Function MemoryReturn(Categoria: integer): integer;
var
  MemoryStatus: TMemoryStatus;
  Retval : Integer;
begin
  RetVal := 0;
  MemoryStatus.dwLength:= sizeof(MemoryStatus);
  GlobalMemoryStatus(MemoryStatus);
  if categoria > 8 then
  begin
       Retval := 0;
  end;
  case categoria of
    1: Retval := MemoryStatus.dwTotalPhys;     // bytes de memória física
    2: Retval := MemoryStatus.dwLength;        // sizeof(MEMORYSTATUS)
    3: Retval := MemoryStatus.dwMemoryLoad;    // percentual de memória em uso
    4: Retval := MemoryStatus.dwAvailPhys;     // bytes livres de memória física
    5: Retval := MemoryStatus.dwTotalPageFile; // bytes de paginação de arquivo
    6: Retval := MemoryStatus.dwAvailPageFile; // bytes livres de paginação de arquivo
    7: Retval := MemoryStatus.dwTotalVirtual;  // bytes em uso de espaço de endereço
    8: Retval := MemoryStatus.dwAvailVirtual;  // bytes livres
  end;
  result := Retval;
end;

{Retorna o Número serial da unidade especificada}
function NumeroSerie(Unidade:PChar):String;
var
  VolName,SysName : AnsiString;
  SerialNo,MaxCLength,FileFlags : DWord;
begin
  try
    SetLength(VolName,255);
    SetLength(SysName,255);
    GetVolumeInformation(Unidade,PChar(VolName),255,@SerialNo,
    MaxCLength,FileFlags,PChar(SysName),255);
    result := IntToHex(SerialNo,8);
  except
    result := ' ';
  end;
end;

{Retorna a porcentagem de espaço livre em uma unidade de disco}
function PercentDisk(unidade: byte): Integer;
var
  A,B, Percentual : longint;
begin
  if DiskFree(Unidade)<> -1 then
  begin
    A := DiskFree(Unidade) div 1024;
    B := DiskSize(Unidade) div 1024;
    Percentual := (A * 100) div B;
    result := Percentual;
  end
  else
  begin
    result := -1;
  end;
end;

{Permite que você altere a data e a hora do sistema}
function SystemDateTime(tDate: TDateTime; tTime: TDateTime): Boolean;
var
  tSetDate: TDateTime;
  vDateBias: Variant;
  tSetTime: TDateTime;
  vTimeBias: Variant;
  tTZI: TTimeZoneInformation;
  tST: TSystemTime;
begin
  GetTimeZoneInformation(tTZI);
  vDateBias := tTZI.Bias / 1440;
  tSetDate  := tDate + vDateBias;
  vTimeBias := tTZI.Bias / 1440;
  tSetTime  := tTime + vTimeBias;
  with tST do
  begin
    wYear         := StrToInt(FormatDateTime('yyyy', tSetDate));
    wMonth        := StrToInt(FormatDateTime('mm', tSetDate));
    wDay          := StrToInt(FormatDateTime('dd', tSetDate));
    wHour         := StrToInt(FormatDateTime('hh', tSettime));
    wMinute       := StrToInt(FormatDateTime('nn', tSettime));
    wSecond       := StrToInt(FormatDateTime('ss', tSettime));
    wMilliseconds := 0;
  end;
  SystemDateTime := SetSystemTime(tST);
end;

{Testa se o CGC é válido ou não}
function TestaCgc(xCGC: String):Boolean;
Var
  d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
  Check : String;
begin
  d1 := 0;
  d4 := 0;
  xx := 1;
  for nCount := 1 to Length( xCGC )-2 do
  begin
    if Pos( Copy( xCGC, nCount, 1 ), '/-.' ) = 0 then
    begin
      if xx < 5 then
      begin
        fator := 6 - xx;
      end
      else
      begin
        fator := 14 - xx;
      end;
      d1 := d1 + StrToInt( Copy( xCGC, nCount, 1 ) ) * fator;
      if xx < 6 then
      begin
        fator := 7 - xx;
      end
      else
      begin
        fator := 15 - xx;
      end;
      d4 := d4 + StrToInt( Copy( xCGC, nCount, 1 ) ) * fator;
      xx := xx+1;
    end;
  end;
  resto := (d1 mod 11);
  if resto < 2 then
  begin
    digito1 := 0;
  end
  else
  begin
    digito1 := 11 - resto;
  end;

  d4    := d4 + 2 * digito1;
  resto := (d4 mod 11);

  if resto < 2 then
  begin
    digito2 := 0;
  end
  else
  begin
    digito2 := 11 - resto;
  end;

  Check := IntToStr(Digito1) + IntToStr(Digito2);
  if Check <> copy(xCGC,succ(length(xCGC)-2),2) then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;

{Testa se o número do pis é válido ou não}
function validapis(Dado: String): boolean;
var
  i, wsoma, Wm11, Wdv,wdigito: Integer;
begin
  if AllTrim(Dado) <> '' Then
  begin
    wdv := strtoint(copy(Dado, 11, 1));
    wsoma := 0;
    wm11 := 2;
    for i := 1 to 10 do
    begin
      wsoma := wsoma + (wm11 *strtoint(copy(Dado,11 - I, 1)));
      if wm11 < 9 then
      begin
        wm11 := wm11+1
      end
      else
      begin
        wm11 := 2;
      end;
    end;
    wdigito := 11 - (wsoma MOD 11);
    if wdigito > 9 then
    begin
      wdigito := 0;
    end;
    if wdv = wdigito then
    begin
      validapis := true;
    end
    else
    begin
      validapis := False;
    end;
  end;
end;

{Testa se um ano é bixesto, retornando True em caso positivo}
function AnoBis(Data: TDateTime): Boolean;
var
  Dia,Mes,Ano : Word;
begin
  DecodeDate(Data,Ano,Mes,Dia);
  if Ano mod 4 <> 0 then
  begin
    AnoBis := False;
  end
  else if Ano mod 100 <> 0 then
  begin
    AnoBis := True;
  end
  else if Ano mod 400 <> 0 then
  begin
    AnoBis := False;
  end
  else
  begin
    AnoBis := True;
  end;
end;

//
// Promove um estado de espera no aplicativo
//
procedure Delay(iMSecs: Integer);
var
  lnTickCount: LongInt;
begin
  lnTickCount := GetTickCount;
  repeat
    Application.ProcessMessages;
  until
    ((GetTickCount - lnTickCount) >= LongInt(iMSecs));
end;

//
// Executa um som no speaker do computador com uma determinada frequencia
//
procedure Sound(Freq:Word);
asm
  MOV DX, AX
  IN AL, $61
  MOV AH, AL
  AND AL, 3
  JNE @@1
  MOV AL, AH
  OR AL, 3
  OUT $61, AL
  MOV AL, $B6
  OUT $43, AL
  @@1:
  MOV AX, DX
  OUT $42, AL
  MOV AL, AH
  OUT $42, AL
end;
//
// paraliza a funcao sound
//
procedure nosoud;
asm
  IN AL, $61
  AND AL, $FC
  OUT $61, AL
end;

function ValidarPJF(Numero: String): Boolean;
var
  i,j,k, Soma, Digito : Integer;
  Avaliar: String;
begin
  Avaliar := Copy(Numero,1,Length(Numero)-2);
  for j := 1 to 2 do
  begin
    k     := 2;
    Soma  := 0;
    for i := Length(Avaliar) downto 1 do
    begin
      Soma := Soma + (Ord(Avaliar[i]) - Ord('0')) * k;
      Inc(k);
      if (k > 9) and (Length(Avaliar)>=12) then
        k := 2;
    end;
    Digito := 11 - Soma mod 11;
    if Digito >= 10 then
      Digito := 0;
    Avaliar := Avaliar + Chr(Digito + Ord('0'));
  end;
  Result := Avaliar = Numero;
end;

function ZeroEsquerda(const I: integer; const Casas: byte): string;
var
  Ch: Char;
begin
  Result := IntToStr(I);
  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';
  while Length(Result) < Casas do
    Result := Ch + Result;
end;

function caractersemacento ( str: String ): String;
var
i: Integer;
begin
  for i := 1 to Length ( str ) do
  begin
    case str[i] of
      'á': str[i] := 'a';
      'é': str[i] := 'e';
      'í': str[i] := 'i';
      'ó': str[i] := 'o';
      'ú': str[i] := 'u';
      'à': str[i] := 'a';
      'è': str[i] := 'e';
      'ì': str[i] := 'i';
      'ò': str[i] := 'o';
      'ù': str[i] := 'u';
      'â': str[i] := 'a';
      'ê': str[i] := 'e';
      'î': str[i] := 'i';
      'ô': str[i] := 'o';
      'û': str[i] := 'u';
      'ä': str[i] := 'a';
      'ë': str[i] := 'e';
      'ï': str[i] := 'i';
      'ö': str[i] := 'o';
      'ü': str[i] := 'u';
      'ã': str[i] := 'a';
      'õ': str[i] := 'o';
      'ñ': str[i] := 'n';
      'ç': str[i] := 'c';
      'Á': str[i] := 'A';
      'É': str[i] := 'E';
      'Í': str[i] := 'I';
      'Ó': str[i] := 'O';
      'Ú': str[i] := 'U';
      'À': str[i] := 'A';
      'È': str[i] := 'E';
      'Ì': str[i] := 'I';
      'Ò': str[i] := 'O';
      'Ù': str[i] := 'U';
      'Â': str[i] := 'A';
      'Ê': str[i] := 'E';
      'Î': str[i] := 'I';
      'Ô': str[i] := 'O';
      'Û': str[i] := 'U';
      'Ä': str[i] := 'A';
      'Ë': str[i] := 'E';
      'Ï': str[i] := 'I';
      'Ö': str[i] := 'O';
      'Ü': str[i] := 'U';
      'Ã': str[i] := 'A';
      'Õ': str[i] := 'O';
      'Ñ': str[i] := 'N';
      'Ç': str[i] := 'C';
    end;
  end;
  Result := str;
end;


function Centraliza (wStr1: String; wTama: Integer): String;
var
  i: Integer;
  wSpac: String;
begin

  wSpac := '';
  For i :=1 to wTama do
    wSpac := wSpac + ' ';

  wStr1 := Trim(wStr1);
  Result := Copy(wSpac,1,(wTama div 2)-(Length(wStr1) div 2))+  
  wStr1 + Copy(wSpac,1,(wTama div 2)-(Length(wStr1) div 2));

end;

function EspacoDir(const I: string; const Casas: byte): string;
var
  Ch: Char;
begin
  Result := trim(I);
  if Length(Result) > Casas then
  begin
    //Ch := '*';
    //Result := '';
  end
  else
    Ch := ' ';
  while Length(Result) < Casas do
    Result := Result + Ch;
end;

function EspacoEsq(const I: string; const Casas: byte): string;
var
  Ch: Char;
begin
  Result := trim(I);
  if Length(Result) > Casas then
  begin
    //Ch := '*';
    //Result := '';
  end
  else
    Ch := ' ';
  while Length(Result) < Casas do
    Result := Ch + Result;
end;

function ValidacaoData(sData : String): Boolean;
begin
  try
    sData := DateToStr(StrToDate(sData));
    Result := True;
  except
    Result := False;
  end;
end;


function StrIsInteger(const S: string): boolean;
begin
  try
    StrToInt(S);
    Result := true;
  except
    Result := false;
  end;
end;

function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
//retorna o ultimo dia o mes, de uma data fornecida
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;
end;

Function FormataFone(Fone: String): string;
var
  I : Integer;
  ddd, prefix, tel : String;
begin
  ddd := '';
  prefix := '';
  tel := '';

  //pega o ddd formatado
  ddd := '(';
  for i := 1 to 2 do
  begin
    ddd := ddd + fone[i];
  //Inc(i);
  end;
  ddd := ddd + ')';

  //prefixo de 3 dígitos
  if Length(Fone) = 10 then
  begin
    for i := 3 to length(Fone)-4 do
    begin
      prefix := prefix + Fone[i]
    //Inc(i);
    end;
    prefix := prefix + '-';
  end;

  //prefixo de 4 digitos
  if Length(Fone) = 9 then
  begin
    for i := 3 to length(Fone)-4 do
    begin
      prefix := prefix + Fone[i]
    //Inc(i);
    end;
    prefix := prefix + '-';
  end;

  // telefone
  for i := length(Fone)-3 to length(Fone) do
  tel := tel + Fone[i];

  //junta tudo
  Result := ddd + prefix + tel;
end;


function IsInteger(TestaString: String) : boolean;
begin
  try
    StrToInt(TestaString);
  except
    On EConvertError do
      result := False;
    else
      result := True;
  end;
end;

function ValidarHora(hr: string):boolean;
var
  ch : Char;
begin
  result:=true;
  if trim(hr) <> '' then
  begin
    try
      StrToTime(Trim(hr));
    except
    on EConvertError do
    begin
      //Application.MessageBox('Hora Inválida!', 'Erro!' , MB_ICONERROR + MB_OK);
      result := false;
    end;
  end;
end;

end;

{procedure AjustaForms(formulario: TForm);
    {Manter a janela no tamanho normal independente da resolução de vídeo}
    {Declarar dentro do Type do Formulário e chamar a partir do evento Create do Form}
{Const
  nTamOriginal = 1024;
Var
   nEscala : Double;
   nPorcento : Integer;
begin
  if nTamOriginal <> Screen.Width then
  begin
    nEscala   := ((Screen.Width-nTamOriginal)/nTamOriginal);
    nPorcento := Round((nEscala*100) + 100);
    formulario.Width     := Round(formulario.Width * (nEscala+1));
    formulario.Height    := Round(formulario.Height * (nEscala+1));
    formulario.ScaleBy(nPorcento,100);
  end;
end;  }

procedure AjustaForm(Form: TForm);
begin
  Form.scaled := true;
  if (Screen.Width <> ScreenWidth) then
  begin
    // Form.Height := longint(Form.Height) * longint(Screen.Height) DIV ScreenHeight;
    Form.Height := Form.Height * Screen.Height DIV ScreenHeight;
    // Form.Width  := longint(Form.Width) * longint(Screen.Width) DIV ScreenWidth;
    Form.Width  := Form.Width * Screen.Width DIV ScreenWidth;
    Form.ScaleBy(screen.width, ScreenWidth);
  end;
end;

function ValidaCPF(num:string): Boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9 : integer;
   d1,d2                      : integer;
   digitado, calculado        : String;
begin
   if num = '00000000000' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '11111111111' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '22222222222' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '33333333333' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '44444444444' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '55555555555' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '66666666666' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '77777777777' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '88888888888' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if num = '99999999999' then
   begin
      ValidaCPF := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   begin
      n1 := StrToInt(num[1]);
      n2 := StrToInt(num[2]);
      n3 := StrToInt(num[3]);
      n4 := StrToInt(num[4]);
      n5 := StrToInt(num[5]);
      n6 := StrToInt(num[6]);
      n7 := StrToInt(num[7]);
      n8 := StrToInt(num[8]);
      n9 := StrToInt(num[9]);
      d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 +
            n2 * 9 + n1 * 10;
      d1 := 11-(d1 mod 11);
      if d1 >= 10 then
         d1 := 0;
      d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 +
            n3 * 9 + n2 * 10 + n1 * 11;
      d2 := 11 - (d2 mod 11);
      if d2 >= 10 then
         d2 := 0;
      calculado := IntToStr(d1) + IntToStr(d2);
      digitado  := num[10] + num[11];
      if calculado = digitado then
         ValidaCPF := True
      else
      begin
         ValidaCPF := False;
         messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
      end;
   end;
end;

function IsCPF( xCPF:String ): Boolean;
var
  d1,d4,xx,nCount,resto,digito1,digito2 : Integer;
  Check : String;
Begin
   if xCPF = '00000000000' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '11111111111' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '22222222222' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '33333333333' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '44444444444' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '55555555555' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '66666666666' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '77777777777' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '88888888888' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end
   else
   if xCPF = '99999999999' then
   begin
      Result := False;
      messagebox(application.handle,'CPF inválido!','Erro', MB_OK or MB_ICONERROR);
   end;

  d1 := 0; d4 := 0; xx := 1;
  for nCount := 1 to Length( xCPF )-2 do
  begin
    if Pos( Copy( xCPF, nCount, 1 ), '/-.' ) = 0 then
    begin
       d1 := d1 + ( 11 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
       d4 := d4 + ( 12 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
       xx := xx+1;
    end;
  end;
  resto := (d1 mod 11);
  if resto < 2 then
  begin
    digito1 := 0;
  end
  else
  begin
    digito1 := 11 - resto;
  end;
  d4 := d4 + 2 * digito1;
  resto := (d4 mod 11);
  if resto < 2 then
  begin
    digito2 := 0;
  end
  else
  begin
    digito2 := 11 - resto;
  end;
  Check := IntToStr(Digito1) + IntToStr(Digito2);
  if Check <> copy(xCPF,succ(length(xCPF) - 2), 2) then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;

Function testacpf(cpf:string):boolean;
var
  i:integer;
  Want:char;
  Wvalid:boolean;
  Wdigit1,Wdigit2:integer;
begin
  Wdigit1:=0;
  Wdigit2:=0;
  Want:=cpf[1];//variavel para testar se o cpf é repetido como 111.111.111-11
  Delete(cpf,ansipos('.',cpf),1);  //retira as mascaras se houver
  Delete(cpf,ansipos('.',cpf),1);
  Delete(cpf,ansipos('-',cpf),1);

  //testar se o cpf é repetido como 111.111.111-11
  for i:=1 to length(cpf) do
  begin
    if cpf[i] <> Want then
      begin
         Wvalid:=true;  // se o cpf possui um digito diferente ele passou no primeiro teste
         break
      end;
  end;
    // se o cpf é composto por numeros repetido retorna falso
  if not Wvalid then
    begin
       result:=false;
       exit;
    end;

  //executa o calculo para o primeiro verificador
  for i:=1 to 9 do
  begin
    wdigit1:=Wdigit1+(strtoint(cpf[10-i])*(I+1));
  end;
  Wdigit1:= ((11 - (Wdigit1 mod 11))mod 11) mod 10;
  {formula do primeiro verificador
      soma=1°*2+2°*3+3°*4.. até 9°*10
      digito1 = 11 - soma mod 11
      se digito > 10 digito1 =0
    }

   //verifica se o 1° digito confere
  if IntToStr(Wdigit1) <> cpf[10] then
  begin
    result:=false;
    exit;
  end;

  for i:=1 to 10 do
  begin
    wdigit2 := Wdigit2 + (strtoint(cpf[11 - i]) * (I + 1));
  end;
  Wdigit2:= ((11 - (Wdigit2 mod 11)) mod 11) mod 10;
    {formula do segundo verificador
       soma=1°*2+2°*3+3°*4.. até 10°*11
       digito1 = 11 - soma mod 11
       se digito > 10 digito1 =0
     }

  // confere o 2° digito verificador
  if IntToStr(Wdigit2) <> cpf[11] then
  begin
    result := false;
    exit;
  end;

  //se chegar até aqui o cpf é valido
  result := true;
end;

end.

