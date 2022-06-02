unit uBtnState;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ComCtrls,
  ExtCtrls,
  StdCtrls,
  Buttons,
  Grids,
  DBGrids,
  DB,
  Mask,
  DBCtrls,
  Menus,
  ImgList,
  UxTheme,
  Themes,
  XPMan;

procedure InsertButtons;
procedure UpdateButtons;
procedure CancelButtons;
procedure InitializeButtons;
procedure SaveButtons;

const
  // Forms
  PESSOAS = 1;

implementation

uses uDM, uPessoas;

procedure InsertButtons;
begin
  frmPessoas.btnNovo.Enabled := True;
  frmPessoas.btnEditar.Enabled := False;
  frmPessoas.btnExcluir.Enabled := False;
  frmPessoas.btnCancelar.Enabled := True;
  frmPessoas.btnSalvar.Enabled := True;
end;

procedure UpdateButtons;
begin
  frmPessoas.btnNovo.Enabled := False;
  frmPessoas.btnEditar.Enabled := False;
  frmPessoas.btnExcluir.Enabled := False;
  frmPessoas.btnCancelar.Enabled := True;
  frmPessoas.btnSalvar.Enabled := True;
end;

procedure CancelButtons;
begin
  frmPessoas.btnNovo.Enabled := True;
  frmPessoas.btnEditar.Enabled := False;
  frmPessoas.btnExcluir.Enabled := False;
  frmPessoas.btnCancelar.Enabled := False;
  frmPessoas.btnSalvar.Enabled := False;
  // frmPessoas.btnFechar.Enabled := True;
end;

procedure InitializeButtons;
begin
//  frmPessoas.btnPrimeiro.Enabled := True;
//  frmPessoas.btnAnterior.Enabled := True;
//  frmPessoas.btnProximo.Enabled := True;
//  frmPessoas.btnUltimo.Enabled := True;
  frmPessoas.btnExcluir.Enabled := True;
  frmPessoas.btnEditar.Enabled := True;
  frmPessoas.btnSalvar.Enabled := False;
end;

procedure SaveButtons;
begin
  frmPessoas.btnNovo.Enabled := True;
  frmPessoas.btnEditar.Enabled := True;
  frmPessoas.btnExcluir.Enabled := True;
  frmPessoas.btnSalvar.Enabled := False;
  frmPessoas.btnCancelar.Enabled := False;
//  frmPessoas.btnFechar.Enabled := True;
end;

end.
