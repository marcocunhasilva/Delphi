Unit UExtenso;

Interface

Type  TipoFloat = Real; {Qual tipo de variavel representa dinheiro}

Const PrimeiraLetraMaiuscula : Boolean = True;
      {A funcao Dinheiro_Extenso retorna a primeira letra do
       string em maiuscula (no caso de True). Mudar para False
       se nao quiser isto.}

function Dinheiro_Extenso(Numero:TipoFloat):String;
{
 Converte um valor em dinheiro para seu correspondente em Portugues
 Aceita valores entre 0 e 999999.99
 Retorna string nulo se o numero ultrapassar estes limites
}

function Integer_Extenso(Numero:LongInt):String;
{
 Converte um numero inteiro para seu correspondente em Portugues
 Aceita valores entre 0 e 999999
 Retorna string nulo se o numero ultrapassar estes limites
}

function Primeira_Maiuscula(Palavra:String):String;
{
 Transforma a primeira letra da Palavra em letra maiuscula,
 nao altera o restante da Palavra
}

{
 As seguintes constantes sao utilizadas para a composicao
 do nome do numero. Podem ser alteradas no programa que as
 utiliza ANTES de chamar as funcoes anteriores.
}

Const
      NomeJuncao    : String = ' e '; {Exemplo: cento e dois}
                                      {              ^^^    }
      NomeMilhares  : String = ' e ';  {Exemplo: um mil, duzentos e trinta}
                                      {               ^^                 }

      {Nomes da moeda: unidade (singular e plural), centesimos (singular
                       e plural) e quando for 0.00}
      NomeDinheiro  : array[1..5] of String =
                      ({1}'real',{2}'reais',{3}'centavo',{4}'centavos',
                       {5}'nenhum real');

      NumeroDeNomes = 39; {NAO e' conveniente alterar este numero!}

      {Nomes de alguns numeros (sem acentos). Pode ser colocada a
       acentuacao, se necessario, alterando os valores das constantes.
       Ver, por exemplo, comentario seguinte com a acentuacao para
       Windows95/Nt. Nao deve ser alterada a ordem dos numeros!}
      NomesDosNumeros : array[1..NumeroDeNomes] of String =
            ({1}'um', {2}'dois', {3}'tres', {4}'quatro', {5}'cinco',
             {6}'seis', {7}'sete', {8}'oito', {9}'nove', {10}'dez',
             {11}'onze', {12}'doze',{13}'treze',{14}'quatorze',{15}'quinze',
             {16}'dezesseis',{17}'dezessete',{18}'dezoito',{19}'dezenove',
             {20}'vinte', {21}'trinta', {22}'quarenta', {23}'cinquenta',
             {24}'sessenta', {25}'setenta', {26}'oitenta', {27}'noventa',
             {28}'cento', {29}'duzentos', {30}'trezentos', {31}'quatrocentos',
             {32}'quinhentos', {33}'seiscentos', {34}'setecentos',
             {35}'oitocentos', {36}'novecentos', {37}'mil',
{Excecoes da regra}   {38}'zero',
                      {39}'cem'
             );

(* Acentos em Windows95/NT {Basicamente 3 e 50}
      NomesDosNumeros : array[1..NumeroDeNomes] of String =
            ({1}'um', {2}'dois', {3}'três', {4}'quatro', {5}'cinco',
             {6}'seis', {7}'sete', {8}'oito', {9}'nove', {10}'dez',
             {11}'onze', {12}'doze',{13}'treze',{14}'quatorze',{15}'quinze',
             {16}'dezesseis',{17}'dezessete',{18}'dezoito',{19}'dezenove',
             {20}'vinte', {21}'trinta', {22}'quarenta', {23}'cinqüenta',
             {24}'sessenta', {25}'setenta', {26}'oitenta', {27}'noventa',
             {28}'cento', {29}'duzentos', {30}'trezentos', {31}'quatrocentos',
             {32}'quinhentos', {33}'seiscentos', {34}'setecentos',
             {35}'oitocentos', {36}'novecentos', {37}'mil',
{Excecoes da regra}   {38}'zero',
                      {39}'cem'
             );
*)

Implementation

Const InteiroMinimo : LongInt = 0;      {menor numero inteiro admissivel}
      InteiroMaximo : LongInt = 999999; {maior numero inteiro admissivel}
      TresMaximo    : LongInt = 999;    {maior numero inteiro c/ 3 digitos}

procedure JuntaAntes(NovaParte,Juncao:String; Var Antigo:String);
{Junta a NovaParte com Antigo usando Juncao se o Antigo nao
 for vazio}
begin
   if length(NovaParte)>0 then
   if length(Antigo)>0 then Antigo:=NovaParte+Juncao+Antigo
                       else Antigo:=NovaParte
end;

procedure JuntaDepois(NovaParte,Juncao:String; Var Antigo:String);
{Junta a NovaParte com Antigo usando Juncao se o Antigo nao
 for vazio}
begin
   if length(NovaParte)>0 then
   if length(Antigo)>0 then Antigo:=Antigo+Juncao+NovaParte
                       else Antigo:=NovaParte
end;

function TresDigitos_Extenso(Numero:LongInt):String;
{Converte tres digitos para extenso}
Var Temporario:String;
    Dezena, Digito : Integer;
begin
   Numero:=Numero mod 1000; {fica somente com os ultimos 3 digitos}
   Temporario:=''; {zera variavel auxiliar}
   if (Numero>=InteiroMinimo)and(Numero<=TresMaximo) then {Numero OK}
   if Numero=100 then Temporario:=NomesDosNumeros[39] {excecao} else
   begin {Numero de 3 digitos valido}
      Dezena:=Numero mod 100; {ultimos dois digitos}
      if (Dezena in [1..20]) then Temporario:=NomesDosNumeros[Dezena] else
      begin {ultimos dois digitos maiores do que 20}
         Digito:=Dezena mod 10; {digito da unidade}
         if Digito>0 then JuntaAntes(NomesDosNumeros[Digito],NomeJuncao,Temporario);
         Digito:=Dezena div 10; {digito da dezena}
         if Digito>0 then JuntaAntes(NomesDosNumeros[18+Digito],NomeJuncao,Temporario);
      end;
      Digito:=Numero div 100; {digito da centena}
      if Digito>0 then JuntaAntes(NomesDosNumeros[27+Digito],NomeJuncao,Temporario);
   end;
   TresDigitos_Extenso:=Temporario
end;

function Integer_Extenso(Numero:LongInt):String;
{Converte um numero inteiro para extenso}
var Temporario,Auxiliar:String;
    Fim, Comeco:LongInt;
begin
   Temporario:=''; {Numero invalido? Retorna string vazio!}
   if (Numero>=InteiroMinimo)and(Numero<=InteiroMaximo)
   then {E' zero?} if Numero=0 then Temporario:=NomesDosNumeros[38] else
   begin
      Fim:=Numero mod 1000; {ultimos 3 digitos}
      Temporario:=TresDigitos_Extenso(Fim);
      Comeco:=Numero div 1000; {primeiros 3 digitos}
      if Comeco>0 then
      begin
         Auxiliar:=TresDigitos_Extenso(Comeco)+' '+NomesDosNumeros[37];
         if Fim>100 then JuntaAntes(Auxiliar,NomeMilhares,Temporario)
                    else JuntaAntes(Auxiliar,NomeJuncao,Temporario)
      end
   end;
   Integer_Extenso:=Temporario
end;

function Dinheiro_Extenso(Numero:TipoFloat):String;
Var Inteiro,Centavo:LongInt;
    Temporario,Auxiliar:String;
begin
   Inteiro:=Trunc(Numero);
   Centavo:=Round(100*frac(Numero));
   if (Inteiro>0)or(Centavo>0) then
   begin
      Temporario:='';
      if Inteiro<=InteiroMaximo then
      begin
         if Inteiro>0 then
         begin
            Temporario:=Integer_Extenso(Inteiro);
            if Inteiro>1 then Temporario:=Temporario+' '+NomeDinheiro[2]
                         else Temporario:=Temporario+' '+NomeDinheiro[1];
         end;
         if Centavo>0 then
         begin
            Auxiliar:=Integer_Extenso(Centavo);
            JuntaDepois(Auxiliar,NomeJuncao,Temporario);
            if Centavo>1 then Temporario:=Temporario+' '+NomeDinheiro[4]
                      else Temporario:=Temporario+' '+NomeDinheiro[3];
         end
      end
   end else Temporario:=NomeDinheiro[5];
   if PrimeiraLetraMaiuscula then
      Temporario:=Primeira_Maiuscula(Temporario);
   Dinheiro_Extenso:=Temporario
end;

function Primeira_Maiuscula(Palavra:String):String;
var i:integer;
begin
   if length(Palavra)>0 then
   begin
      i:=1;
      while (i<=length(Palavra))and(Palavra[i]=' ') do inc(i);
      if i<=length(Palavra) then Palavra[i]:=UpCase(Palavra[i]);
   end;
   Primeira_Maiuscula:=Palavra
end;

END.