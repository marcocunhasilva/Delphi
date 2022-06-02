{
  Objeto...: Biblioteca de rotinas de sistema.
  Categoria: Open-Source
  Autor....: Daniel Pereira Guimarães
  Itamar Bitencourt Roloff
  E-mail...: tecnobyte@ulbrajp.com.br
  Home-Page: www.ulbrajp.com.br/~tecnobyte
  Revisão..: 21 de Fevereiro de 2001
  24 de Novembro de 2007  -->> ROLOFF & SILVA LTDA.
}

unit UTL_SISTEMA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  Winsock, vcl.forms;

{ Retorna true se o computador está configurado para rede }
function NetIsPresent: boolean;

{ Retorna o nome do computador }
function SysComputerName: string;

{ Retorna o diretório do Windows }
function SysWinDir: string;

{ Retorna a identificação da plataforma }
function SysPlatform: DWord;

{ Define o nome do computador }
function SysSetComputerName(const S: string): boolean;

{ Retorna o diretório System do Windows }
function SysSystemDir: string;

{ Retorna o diretório Temp do Windows }
function SysTempDir: string;

{ Retorna o nome do usuário logado no Windows }
function SysUserName: string;

{ Retorna informações de versão do Windows }
function SysVersion(var Ver: _OSVERSIONINFOA): boolean;

{ Retorna uma string contendo a versão do Windows }
function SysVersionStr: string;

{ Processa as mensagens enviadas a uma janela }
procedure WndProcessMessages(const Wnd: HWnd);

{ Processa as mensagens enviadas a uma janela - somente o intervalo
  de mensagens informado }
procedure WndProcessMessagesEx(const Wnd: HWnd; const FromMsg, ToMsg: Cardinal);

{ Retorna o IP da maquina corrente }
function GetIP: string;

// unction GetMacAddresses(const Machine: string; const Addresses: TStrings): Integer;
// function AdapterToString(Adapter: TAdapterStatus): string;
function Crypt(Action, Src: String): String;

function ExtractName(const Filename: string): string;

implementation

function ExtractName(const Filename: string): string;
{ Retorna o nome do Arquivo sem extensão }
var
  aExt: string;
  aPos: Integer;
begin
  aExt := ExtractFileExt(Filename);
  Result := ExtractFileName(Filename);
  if aExt <> '' then
  begin
    aPos := Pos(aExt, Result);
    if aPos > 0 then
    begin
      Delete(Result, aPos, Length(aExt));
    end;
  end;
end;

{ *** Net *** }
function NetIsPresent: boolean;
begin
  Result := GetSystemMetrics(SM_NETWORK) <> 0;
end;

{ Sys }
function SysComputerName: string;
var
  I: DWord;
begin
  I := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, I);
  Windows.GetComputerName(PChar(Result), I);
  Result := string(PChar(Result));
end;

function SysWinDir: string;
begin
  SetLength(Result, MAX_PATH);
  Windows.GetWindowsDirectory(PChar(Result), MAX_PATH);
  Result := string(PChar(Result));
end;

function SysPlatform: DWord;
var
  Ver: _OSVERSIONINFOA;
begin
  if SysVersion(Ver) then
    Result := Ver.dwPlatformId
  else
    Result := 0;
end;

function SysSetComputerName(const S: string): boolean;
begin
  Result := Windows.SetComputerName(PChar(S));
end;

function SysSystemDir: string;
begin
  SetLength(Result, MAX_PATH);
  if GetSystemDirectory(PChar(Result), MAX_PATH) > 0 then
    Result := string(PChar(Result))
  else
    Result := '';
end;

function SysTempDir: string;
begin
  SetLength(Result, MAX_PATH);
  if GetTempPath(MAX_PATH, PChar(Result)) > 0 then
    Result := string(PChar(Result))
  else
    Result := '';
end;

function SysUserName: string;
var
  I: DWord;
begin
  I := 255;
  SetLength(Result, I);
  Windows.GetUserName(PChar(Result), I);
  Result := string(PChar(Result));
end;

function SysVersion(var Ver: _OSVERSIONINFOA): boolean;
begin
  {
    Ver.dwOSVersionInfoSize := SizeOf(Ver);
    Result := GetVersionEx(Ver);
  }
end;

function SysVersionStr: string;
var
  Ver: _OSVERSIONINFOA;
begin
  {
    if SysVersion(Ver) then
    Result := IntToStr(Ver.dwMajorVersion) + '.' +
    IntToStr(Ver.dwMinorVersion)
    else
    Result := '';
  }
end;

procedure WndProcessMessages(const Wnd: HWnd);
begin
  WndProcessMessagesEx(Wnd, 0, 0);
end;

procedure WndProcessMessagesEx(const Wnd: HWnd; const FromMsg, ToMsg: Cardinal);
var
  Msg: tagMsg;
begin
  while PeekMessage(Msg, Wnd, FromMsg, ToMsg, PM_REMOVE) do
    DispatchMessage(Msg);
end;

function GetIP: string;
// --> Declare a Winsock na clausula uses da unit
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name   : string;
begin
  // exit;

  {
    WSAStartup(2, WSAData);
    SetLength(Name, 255);
    Gethostname(PChar(Name), 255);
    SetLength(Name, StrLen(PChar(Name)));
    HostEnt := gethostbyname(PChar(Name));
    with HostEnt^ do
    begin
    Result := Format('%d.%d.%d.%d',
    [Byte(h_addr^[0]),Byte(h_addr^[1]),
    Byte(h_addr^[2]),Byte(h_addr^[3])]);
    end;
    WSACleanup;
  }
end;

function Crypt(Action, Src: String): String;
Label Fim;
var
  KeyLen   : Integer;
  KeyPos   : Integer;
  OffSet   : Integer;
  Dest, Key: String;
  SrcPos   : Integer;
  SrcAsc   : Integer;
  TmpSrcAsc: Integer;
  Range    : Integer;
begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9' + 'KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  // SrcPos := 0;
  // SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:
end;

end.
