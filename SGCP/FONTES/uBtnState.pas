unit uBtnState;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  Mask, DBCtrls, Menus,
//  cxGraphics,
//  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
//  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
//  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
//  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
//  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
//  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
//  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
//  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
//  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
//  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
//  cxDBEdit, cxNavigator, cxDBNavigator, cxButtons, cxLabel,
//  dxSkinsdxBarPainter, dxBar, cxClasses, dxRibbon,
  ImgList,
//  dxSkinscxPCPainter, cxPC, dxSkinsdxStatusBarPainter, dxStatusBar,
//  dxRibbonForm,
//  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
//  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
//  cxGridDBTableView, cxGrid, cxLocalization, dxRibbonStatusBar,
  UxTheme, Themes, XPMan,
//  cxGroupBox, cxDBLabel, cxMaskEdit,
//  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
//  cxDBLookupComboBox, dxdbtrel, cxRadioGroup, cxImage,
  ExtDlgs,
  AppEvnts,
//  cxMemo,
  DateUtils;
//  dxRibbonSkins, dxSkinBlueprint,
//  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
//  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
//  dxSkinWhiteprint, dxSkinsdxRibbonPainter, cxPCdxBarPopupMenu, dxScreenTip;

procedure InsertButtons;
procedure UpdateButtons;
procedure CancelButtons;
procedure InitializeButtons;
procedure SaveButtons;

const
  // Forms
  PESSOAS = 1;

implementation

uses uDM, uSGCP;

procedure InsertButtons;
begin
  frmSGCP.btnNovo.Enabled := True;
  frmSGCP.btnEditar.Enabled := False;
  frmSGCP.btnExcluir.Enabled := False;
  frmSGCP.btnCancelar.Enabled := True;
  frmSGCP.btnSalvar.Enabled := True;
end;

procedure UpdateButtons;
begin
  frmSGCP.btnNovo.Enabled := False;
  frmSGCP.btnEditar.Enabled := False;
  frmSGCP.btnExcluir.Enabled := False;
  frmSGCP.btnCancelar.Enabled := True;
  frmSGCP.btnSalvar.Enabled := True;
end;

procedure CancelButtons;
begin
  frmSGCP.btnNovo.Enabled := True;
  frmSGCP.btnEditar.Enabled := False;
  frmSGCP.btnExcluir.Enabled := False;
  frmSGCP.btnCancelar.Enabled := False;
  frmSGCP.btnSalvar.Enabled := False;
  // frmSGCP.btnFechar.Enabled := True;
end;

procedure InitializeButtons;
begin
//  frmSGCP.btnPrimeiro.Enabled := True;
//  frmSGCP.btnAnterior.Enabled := True;
//  frmSGCP.btnProximo.Enabled := True;
//  frmSGCP.btnUltimo.Enabled := True;
  frmSGCP.btnExcluir.Enabled := True;
  frmSGCP.btnEditar.Enabled := True;
  frmSGCP.btnSalvar.Enabled := False;
end;

procedure SaveButtons;
begin
  frmSGCP.btnNovo.Enabled := True;
  frmSGCP.btnEditar.Enabled := True;
  frmSGCP.btnExcluir.Enabled := True;
  frmSGCP.btnSalvar.Enabled := False;
  frmSGCP.btnCancelar.Enabled := False;
//  frmSGCP.btnFechar.Enabled := True;
end;

end.
