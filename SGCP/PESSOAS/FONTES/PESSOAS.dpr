program PESSOAS;

uses
  Vcl.Forms,
  uConstantes in 'uConstantes.pas',
  uBtnState in 'uBtnState.pas',
  uPessoas in 'uPessoas.pas' {frmPessoas},
  uDM in 'uDM.pas' {DM: TDataModule},
  UTL_BIBLIOTECA in '..\..\LIB\UTL_BIBLIOTECA.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPessoas, frmPessoas);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
