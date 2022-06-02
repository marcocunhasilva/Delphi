unit uDM;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    dsPessoas: TDataSource;
    dsRel: TDataSource;
    qryPessoas: TFDQuery;
    qryRel: TFDQuery;
    updPessoas: TFDUpdateSQL;
    qry_Aux: TFDQuery;
    conSGCP: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tacSGCP: TFDTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);

    function AddID (cGen: string; aConnection: TFDConnection; bInc: Boolean): Integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  nRecord: Integer;

implementation

uses
  uConstantes, uSGCP;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM.AddID(cGen: string; aConnection: TFDConnection;
  bInc: Boolean): Integer;
var
  Qry: TFDQuery;
begin
  Qry := TFDQuery.Create(nil);
  try
    Qry.Connection := aConnection;
    if bInc then
      Qry.SQL.Add('SELECT GEN_ID(' + cGen + ', 1) FROM RDB$DATABASE')
    else
      Qry.SQL.Add('SELECT GEN_ID(' + cGen + ', 0) FROM RDB$DATABASE');
    Qry.Open;
    Result := Qry.Fields[0].AsInteger;
  finally
    FreeAndNil(Qry);
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
  cDatabase  : String;
  cLog       : string;
  cArquivoSQL: String;
  cUserName  : String;
  cPassWord  : String;
begin
  conSGCP.Params.Database := EmptyStr;
  conSGCP.Params.UserName := EmptyStr;
  conSGCP.Params.Password := EmptyStr;

  cDatabase := ExtractFilePath(Application.ExeName) + '..\BANCO\SGCP.FDB';
  cUserName := 'SYSDBA';
  cPassWord := 'masterkey';

  conSGCP.Connected        := False;
  conSGCP.Params.Database  := cDatabase;
  conSGCP.Params.UserName  := cUserName;
  conSGCP.Params.Password  := cPassWord;
  conSGCP.Connected        := True;

  cLog        := ExtractFilePath(Application.ExeName) + '..\LOG\';
  cArquivoSQL := ExtractFilePath(Application.ExeName) + '..\LOG\SGCP.LOG';
  if not DirectoryExists(cLog) then
  begin
    CreateDir(cLog);
  end;

  // Abre Tabela;
  qryPessoas.Close;
  qryPessoas.SQL.Clear;
  qryPessoas.SQL.Text := SelectSQL;
  if not FileExists(cArquivoSQL) then
    qryPessoas.SQL.SaveToFile(cArquivoSQL);
  qryPessoas.Open;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  qryPessoas.Active  := False;
  conSGCP.Connected := False;
end;

end.
