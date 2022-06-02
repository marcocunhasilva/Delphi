program SGCP;

uses
  Vcl.Forms,
  uConstantes in 'uConstantes.pas',
  uBtnState in 'uBtnState.pas',
  uSGCP in 'uSGCP.pas' {frmSGCP},
  uDM in 'uDM.pas' {DM: TDataModule},
  UTL_BIBLIOTECA in '..\LIB\UTL_BIBLIOTECA.pas',
  uRGBTOBGR in '..\LIB\uRGBTOBGR.pas',
  Pkg.Json.DTO in '..\LIB\Pkg.Json.DTO.pas',
  RootUnit in '..\LIB\RootUnit.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSGCP, frmSGCP);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
