unit uShowForm;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, DateUtils, ImgList, UxTheme, Themes, XPMan, ExtDlgs,
  AppEvnts;

  procedure ShowForm(const AClasse: TCustomFormClass; out Form; nMode: Integer = 1);

const
  // Tipo do Form
  MODAL   = 1;
  NOMODAL = 2;

implementation

uses uDM, uSGCP;

///////////////////////////////////////////////////////////////////////////
//                                                                       //
// procedure responsavel por chamar um formulário                        //
//                                                                       //
// procedure ShowForm(Form: TForm; nTypeForm: Integer);                  //
// Parâmetros: Form - Formulario a ser chamado                           //
//             nMode - 1: MODAL                                          //
//                     2: NOMODAL                                        //
//                                                                       //
///////////////////////////////////////////////////////////////////////////

procedure ShowForm(const AClasse: TCustomFormClass; out Form; nMode: Integer);
var
  // Acessa o mesmo endereço de memória de Form, porém com tipagem
  cCad: String;
  Reference: TCustomForm absolute Form;
begin
  cCad := '';
  if not Assigned(Reference) then
  begin
    Application.CreateForm(AClasse, Form);
    case nMode of
      MODAL:
      begin
        try
          TForm(Reference).BorderIcons := [biSystemMenu];
          TForm(Reference).WindowState := wsMaximized;
          // nCad := TForm(Reference).Tag;
          Reference.ShowModal;
        finally
          if Assigned(Reference) then
            FreeAndNil(Reference);
        end;
      end;
      NOMODAL:
      begin
        TForm(Reference).BorderIcons := [biSystemMenu];
        TForm(Reference).WindowState := wsMaximized;
        // nCad := TForm(Reference).Tag;
        Reference.Show;
      end;
    end;
  end;
end;

end.
