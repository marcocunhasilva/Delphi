unit Ungeral;

interface

Uses SysUtils,Dialogs,Controls,SelType;

var FAce:File; {arquivo de acessórios padrões}
    AcePadR,
    AcePad:RecAcePad;
    pace:longint;

Procedure VeArquivo(S:string);
function PosicionaAcePad:boolean;

implementation

{posiciona no registro corretor retorna verdadeiro se existe}
function PosicionaAcePad:boolean;
begin
  result:=false;
  Seek(FAce,0);
  while not eof(FAce) do begin
    pace:=FilePos(FAce);
    blockread(FAce,AcePadR,1);
    if AcePadR.modelo=AcePad.modelo then
      if AcePadR.arranjo=AcePad.arranjo then begin
        AcePad:=AcePadR;
        Seek(FAce,pace);
        result:=true;
        exit;
      end;
  end;
end;

{}
Procedure VeArquivo(S:string);
begin
  if FileExists(s) then
    exit;
  if MessageDlg( 'Arquivo: '+AnsiUpperCase(s)+#10+' não foi localizado. '#10#10'Encerrar o programa agora?',
                 mtError, [mbYes, mbNo], 0) = mrYes then
    halt(1);
end;


end.
 