unit uSGCP;

interface

uses
  Data.DB,
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.UITypes,
  System.Actions,
  System.ImageList,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
  Vcl.ActnList,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.CategoryButtons,
  Vcl.WinXCtrls,
  Vcl.DBCtrls,
  Vcl.Mask,
  Vcl.Buttons,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Datasnap.DBClient,
  Datasnap.Provider,

  uConstantes,
  uDM,
  uBtnState,
  uLib,
  uShowForm,
  JvComponentBase,
  JvBalloonHint,
  Pkg.Json.DTO,
  RootUnit,

  REST.Types,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TfrmSGCP = class(TForm)
    actSV: TActionList;
    actPessoas: TAction;
    imgPessoas16: TImageList;
    svMenu: TSplitView;
    catMenuItems: TCategoryButtons;
    pnlToolbar: TPanel;
    imgMenu: TImage;
    lblTitle: TLabel;
    imgAgenda32: TImageList;
    actSair: TAction;
    dsPessoas: TDataSource;
    qryPessoas: TFDQuery;
    actCadastro: TActionList;
    actNovo: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    imgCadastro16: TImageList;
    actEditar: TAction;
    qryAux: TFDQuery;
    qryGrava: TFDQuery;
    pnlStatusBar: TPanel;
    pnlPessoas: TPanel;
    pcPessoas: TPageControl;
    tsPesquisa: TTabSheet;
    pnlGrid: TPanel;
    dbgSGCP: TDBGrid;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    edtPesquisa: TEdit;
    tsDados: TTabSheet;
    pnlDados: TPanel;
    lblNome: TLabel;
    lblCodigo: TLabel;
    lblCPF: TLabel;
    Label11: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCPF: TEdit;
    edtNome: TEdit;
    edtLogradouro: TEdit;
    edtLocalidade: TEdit;
    edtCodigo: TEdit;
    edtUF: TComboBox;
    edtTelefone: TEdit;
    edtCEP: TEdit;
    edtRG: TEdit;
    edtBairro: TEdit;
    pnlAcoes: TPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnNovo: TSpeedButton;
    btnImporta: TButton;
    JvBalloonHint1: TJvBalloonHint;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    lblRegistros: TLabel;
    procedure actPessoasExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actMenuClientesExecute(Sender: TObject);
    procedure edtNomeMouseLeave(Sender: TObject);
    procedure edtPesquisaClick(Sender: TObject);
    procedure dbgSGCPDblClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure imgMaxmizeClick(Sender: TObject);
    procedure imgMinimizeClick(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure edtCPFEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        overload;
    procedure pcPessoasChange(Sender: TObject);
  private
    { Private declarations }
    procedure dbgSGCPClick(Sender: TObject);
    procedure ClearEdits;
    procedure ConsultaCEP(CEP: string);
    procedure DoDados;
    procedure FocusColor(Sender: TObject);
    procedure DoPesquisa;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

  type
    EPessoaJaCadastrada = class(Exception)
  end;

const
  PESQUISA = 0;
  DADOS    = 1;

  // Colunas DBGrid
  CODIGO     = 0;
  CPF        = 1;
  RG         = 2;
  NOME       = 3;
  TELEFONE   = 4;
  CEP        = 5;
  LOGRADOURO = 6;
  BAIRRO     = 7;
  LOCALIDADE = 8;
  UF         = 9;

var
  frmSGCP: TfrmSGCP;

  cCPF: string = '';

  Operacao: TOperacao;

implementation

{$R *.dfm}

uses
  UTL_BIBLIOTECA;

procedure TfrmSGCP.actCancelarExecute(Sender: TObject);
begin
  ClearEdits;
  CancelButtons;
  qryPessoas.Cancel;
  pcPessoas.ActivePageIndex := PESQUISA;
  qryPessoas.Close;
  pnlGrid.Visible := True;
  dbgSGCP.Visible := False;
  lblRegistros.Caption := '';
  edtPesquisa.Clear;
  edtPesquisa.Setfocus;
end;

procedure TfrmSGCP.actPessoasExecute(Sender: TObject);
var
  nRegistros: Integer;
begin
  nRegistros := 0;
  DM.qryPessoas.Open;
  nRegistros := DM.qryPessoas.RecordCount;
  if nRegistros = 0 then
  begin
    if not pnlPessoas.Visible then
    begin
      pnlPessoas.Visible := True;
      pcPessoas.ActivePageIndex := DADOS;
      pnlDados.Enabled := False;
      InsertButtons;
      edtCPF.Clear;
      Exit;
    end
    else
    begin
      pnlPessoas.Visible := False;
      qryPessoas.Close;
      ClearEdits;
      Exit;
    end;
  end
  else
  begin
    if not pnlPessoas.Visible then
    begin
      pnlPessoas.Visible := True;
      pnlGrid.Visible := True;
      dbgSGCP.Visible := False;
      DM.qryPessoas.Close;
      qryPessoas.Close;
      ClearEdits;
      pcPessoas.ActivePageIndex := PESQUISA;
      edtPesquisa.SetFocus;

      Exit;
    end
    else
    begin
      pnlPessoas.Visible := False;
      DM.qryPessoas.Close;
      ClearEdits;
      Exit;
    end;
  end;
end;

procedure TfrmSGCP.actEditarExecute(Sender: TObject);
begin
  UpdateButtons;
  pnlDados.Enabled := True;
  Operacao         := opUpdate;
end;

procedure TfrmSGCP.actExcluirExecute(Sender: TObject);
var
  Parametro: String;
  nLengthCPF: Integer;
  nResp: Integer;
begin
  Operacao := opDelete;
  nResp := Application.MessageBox('Deseja realmente excluir este CLIENTE?',
                                  'Atenção',
                                   MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2);

  if nResp = mrYes then
  begin

    qryPessoas.Close;
    qryPessoas.SQL.Clear;
    qryPessoas.SQL.Text := DeleteSQL;

    // CPF
    nLengthCPF := Length(edtCPF.Text);
    if nLengthCPF > 0 then
    begin
      cCPF := Trim(edtCPF.Text);
      Parametro := cCPF + '%';
      qryPessoas.ParamByName('Parametro').AsString := Parametro;
      qryPessoas.ExecSQL;
      qryPessoas.SQL.Clear;
      qryPessoas.SQL.Text := SelectSQL;
      qryPessoas.Open;
      qryPessoas.Last;
      // qryPessoas.CommitUpdates;
      ShowMessage('PESSOA excluida com sucesso...');
      ClearEdits;

      pnlGrid.Visible           := True;
      dbgSGCP.Visible           := False;
      pcPessoas.ActivePageIndex := PESQUISA;
      pnlPesquisa.Visible       := True;
      edtPesquisa.SetFocus;
    end;
    qryPessoas.Close;
  end;
  Operacao := opNone;
end;

procedure TfrmSGCP.actMenuClientesExecute(Sender: TObject);
begin
  frmSGCP.ShowModal;
end;

procedure TfrmSGCP.actNovoExecute(Sender: TObject);
begin
  Operacao := opInsert;
  InsertButtons;
  if qryPessoas.Active  then
  begin
    pnlDados.Enabled := True;
    ClearEdits;
    edtCPF.SetFocus;
  end
  else
  begin
    qryPessoas.Open;
    pnlDados.Enabled := True;
    ClearEdits;
    edtCPF.SetFocus;
  end;
end;

procedure TfrmSGCP.actSairExecute(Sender: TObject);
var
  nResp: Integer;
begin
  nResp := Application.MessageBox('Deseja realmente encerrar a aplicação?', 'Atenção',
                                   MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2);

  if nResp = mrYes then
  begin
    DM.qryPessoas.Close;
    DM.conSGCP.Connected := False;
    Application.Terminate;
  end
  else
  begin
    Abort;
  end;
end;

procedure TfrmSGCP.actSalvarExecute(Sender: TObject);
var
  cCPF: String;
  cNome: String;
  cEndereco: String;
  cCidade: String;
  cBairro: String;
  cEstado: String;
  Parametro: String;
  cPesquisa: String;
  nLengthCPF: Integer;
  nLengthNome: Integer;
  nLengthEndereco: Integer;
  nLengthBairro: Integer;
  nLengthCidade: Integer;
  nLengthEstado: Integer;
begin
  if not (qryPessoas.State in [dsBrowse]) then
    Exit;

  SaveButtons;
  // if (qryPessoas.State in [dsInsert]) then
  if Operacao = opInsert then
  begin
    try
      try
        qryPessoas.Close;
        qryPessoas.SQL.Clear;
        qryPessoas.SQL.Add('INSERT INTO PESSOAS (');
        qryPessoas.SQL.Add('CPF, RG, NOME, TELEFONE, CEP, LOGRADOURO, BAIRRO, LOCALIDADE, UF ');
        qryPessoas.SQL.Add(') VALUES (');
        qryPessoas.SQL.Add(':CPF, :RG, :NOME, :TELEFONE, :CEP, :LOGRADOURO, ');
        qryPessoas.SQL.Add(':BAIRRO, :LOCALIDADE, :UF);');
        qryPessoas.ParamByName('CPF').Value := edtCPF.Text;
        qryPessoas.ParamByName('RG').Value := edtRG.Text;
        qryPessoas.ParamByName('NOME').Value := edtNome.Text;
        qryPessoas.ParamByName('TELEFONE').Value := edtTelefone.Text;
        qryPessoas.ParamByName('CEP').Value := edtCEP.Text;
        qryPessoas.ParamByName('LOGRADOURO').Value := edtLogradouro.Text;
        qryPessoas.ParamByName('BAIRRO').Value := edtBairro.Text;
        qryPessoas.ParamByName('LOCALIDADE').Value := edtLocalidade.Text;
        qryPessoas.ParamByName('UF').Value := edtUF.Text;
        qryPessoas.ExecSQL;
        // qryPessoas.CommitUpdates;

        if qryPessoas.RecordCount > 0 then
        begin
          DM.qryPessoas.Cancel;
          edtCPF.SetFocus;
          qryPessoas.Close;
          raise EPessoaJaCadastrada.Create('Pessoa já Cadastrada !');
        end;

        ClearEdits;
        pnlGrid.Visible      := True;
        dbgSGCP.Visible      := False;
        Operacao := opNone;
        pcPessoas.ActivePageIndex := PESQUISA;
        pnlPesquisa.Visible := True;
        edtPesquisa.SetFocus;
        // qryPessoas.Post;
        // qryPessoas.Close;

      except
        on E:Exception do
        begin
          DM.conSGCP.Rollback;
          ShowMessage(E.Message);
        end;
      end;
    finally
      ClearEdits;
      DM.qryPessoas.Close;
      Operacao := opNone;
    end;
  end;

  //if (qryPessoas.State in [dsEdit]) then
  if Operacao = opUpdate then
  begin
    try
      try
        cCPF      := Trim(edtCPF.Text);
        cNome     := Trim(edtNome.Text);
        cEndereco := Trim(edtLogradouro.Text);
        cBairro   := Trim(edtBairro.Text);
        cCidade   := Trim(edtLocalidade.Text);
        cEstado   := Trim(edtUF.Text);

        nLengthCPF      := Length(cCPF);
        nLengthNome     := Length(cNome);
        nLengthEndereco := Length(cEndereco);
        nLengthBairro   := Length(cBairro);
        nLengthCidade   := Length(cCidade);
        nLengthEstado   := Length(cEstado);

        qryPessoas.Close;
        qryPessoas.SQL.Clear;
        qryPessoas.SQL.Text := 'UPDATE PESSOAS P SET ' +
                               'P.CPF        = :CPF, ' +
                               'P.RG         = :RG, ' +
                               'P.NOME       = :NOME, ' +
                               'P.TELEFONE   = :TELEFONE, ' +
                               'P.CEP        = :CEP, ' +
                               'P.LOGRADOURO = :LOGRADOURO, ' +
                               'P.BAIRRO     = :BAIRRO, ' +
                               'P.LOCALIDADE = :LOCALIDADE, ' +
                               'P.UF         = :UF ';

        if (nLengthCPF > 0) then
        begin
          qryPessoas.SQL.Text := qryPessoas.SQL.Text + 'WHERE (P.CPF LIKE :CPF)';
          qryPessoas.ParamByName('CPF').AsString := cCPF + '%';
        end;

        qryPessoas.ParamByName('CPF').Value := edtCPF.Text;
        qryPessoas.ParamByName('RG').Value := edtRG.Text;
        qryPessoas.ParamByName('NOME').Value := edtNome.Text;
        qryPessoas.ParamByName('TELEFONE').Value := edtTelefone.Text;
        qryPessoas.ParamByName('CEP').Value := edtCEP.Text;
        qryPessoas.ParamByName('LOGRADOURO').Value := edtLogradouro.Text;
        qryPessoas.ParamByName('BAIRRO').Value := edtBairro.Text;
        qryPessoas.ParamByName('LOCALIDADE').Value := edtLocalidade.Text;
        qryPessoas.ParamByName('UF').Value := edtUF.Text;
        qryPessoas.ExecSQL;

        if qryPessoas.RecordCount > 0 then
        begin
          DM.qryPessoas.Cancel;
          edtCPF.SetFocus;
          qryPessoas.Close;
          raise EPessoaJaCadastrada.Create('Pessoa já Cadastrada !');
        end;

        // qryPessoas.Post;

        // DM.qryPessoas.Post;
        // DM.conSGCP.Commit;
        qryPessoas.Close;
        Operacao := opNone;
        pnlGrid.Visible      := True;
        dbgSGCP.Visible      := False;
        edtPesquisa.SetFocus;
      except
        on E:Exception do
        begin
          DM.conSGCP.Rollback;
          ShowMessage(E.Message);
        end;
      end;
    finally
      DM.qryPessoas.Close;
    end;
  end;

  lblRegistros.Caption := '';
  DM.qryPessoas.Close;
  pcPessoas.ActivePageIndex := PESQUISA;
  qryPessoas.Close;
  edtPesquisa.Clear;
end;

procedure TfrmSGCP.dbgSGCPClick(Sender: TObject);
begin
  if not dbgSGCP.DataSource.DataSet.IsEmpty then
  begin
    dbgSGCP.Options := dbgSGCP.Options + [dgEditing];
  end
  else
  begin
    dbgSGCP.Options := dbgSGCP.Options - [dgEditing];
  end;
end;


procedure TfrmSGCP.dbgSGCPDblClick(Sender: TObject);
begin
  if qryPessoas.RecordCount > 0 then
  begin
    pcPessoas.ActivePageIndex := DADOS;
    // qryPessoas.Open;
    // DM.qryPessoas.Edit;
    InitializeButtons;

    // Popula os dados.
    edtCodigo.Text     := dbgSGCP.Fields[CODIGO].Text;
    edtCPF.Text        := dbgSGCP.Fields[CPF].Text;
    edtRG.Text         := dbgSGCP.Fields[RG].Text;
    edtNome.Text       := dbgSGCP.Fields[NOME].Text;
    edtTelefone.Text   := dbgSGCP.Fields[TELEFONE].Text;
    edtCEP.Text        := dbgSGCP.Fields[CEP].Text;
    edtLogradouro.Text := dbgSGCP.Fields[LOGRADOURO].Text;
    edtBairro.Text     := dbgSGCP.Fields[BAIRRO].Text;
    edtLocalidade.Text := dbgSGCP.Fields[LOCALIDADE].Text;
    edtUF.Text         := dbgSGCP.Fields[UF].Text;
  end;

  pnlDados.Enabled := False;
    // edtNome.SetFocus;
end;

procedure TfrmSGCP.edtCEPExit(Sender: TObject);
begin
  // FocusColor;
  if Operacao = opInsert then
    ConsultaCEP(edtCep.Text);

end;

procedure TfrmSGCP.edtCPFEnter(Sender: TObject);
begin
  // FocusColor;
end;

procedure TfrmSGCP.edtCPFExit(Sender: TObject);
var
  lIsNumber: Boolean;
  lIsCPF: Boolean;
begin
  // FocusColor;

  cCPF := edtCPF.Text;

  if (Length(cCPF) > 0) then
  begin
    lIsCPF := IsCPF(cCPF);

    if not lIsCPF then
    begin
      ShowMessage('O CPF informado é inválido! Por favor, informe novamente...');
      edtCPF.SelectAll;
      edtCPF.Text := EmptyStr;
      edtCPF.SetFocus;
      Abort;
    end;
  end
  else
  begin
    Exit;
  end;

end;

procedure TfrmSGCP.edtNomeMouseLeave(Sender: TObject);
begin
//  lblMensagem.Caption := '';
//  lblMensagem.Caption := 'Informe o nome para a pesquisa e clique em PESQUISAR...';
end;

procedure TfrmSGCP.edtPesquisaChange(Sender: TObject);
begin
  if Length(edtPesquisa.Text) >= 3 then
  begin
    Pesquisar;
  end;
end;

procedure TfrmSGCP.edtPesquisaClick(Sender: TObject);
begin
  edtPesquisa.Clear;
  edtPesquisa.SetFocus;
  pnlGrid.Visible      := True;
  dbgSGCP.Visible      := False;
  qryPessoas.Close;
  lblRegistros.Caption := '';
end;

procedure TfrmSGCP.FocusColor(Sender: TObject);
var
  nComponent: Integer;
  Edit: TEdit;
begin
  for nComponent := 0 to ComponentCount - 1 do
  begin
    if Components[nComponent] is TEdit then
    begin
      Edit := Components[nComponent] as TEdit;

      if Edit.Focused then
      begin
        Edit.Color := $00E7AA2A;
        Edit.Font.Color := clWhite;
        Edit.Font.Style := Edit.Font.Style + [fsBold];
      end
      else
      begin
        Edit.Color := $00322F2D;
        Edit.Font.Color := clWhite;
        Edit.Font.Style := Edit.Font.Style + [fsBold];
      end;
    end;
  end;
end;

procedure TfrmSGCP.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  nResp: Integer;
begin
  nResp := Application.MessageBox('Deseja realmente encerrar a aplicação?',
                                  'Atenção',
                                   MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2);

  if nResp = mrYes then
  begin
    DM.conSGCP.Commit;
    qryPessoas.Close;
    DM.qryPessoas.Close;
    DM.conSGCP.Connected := False;
    CanClose := True;
  end
  else
  begin
    CanClose := False;
  end;
end;

procedure TfrmSGCP.FormCreate(Sender: TObject);
var
  nComponents: Integer;
begin
  CreateSQL;
  Operacao := opNone;
  TfrmSGCP(dbgSGCP).OnClick := dbgSGCPClick;
  pnlDados.Enabled := False;
  for nComponents := 0 to ComponentCount - 1 do
  begin
    if Components[nComponents] is TEdit then
    begin
      (Components[nComponents] as TEdit).OnExit := FocusColor;
    end;
  end;

end;

procedure TfrmSGCP.FormDestroy(Sender: TObject);
begin
  DestroySQL;
end;

procedure TfrmSGCP.FormShow(Sender: TObject);
begin
  pnlPessoas.Visible  := False;
  qryPessoas.Close;
  lblRegistros.Caption := '';
  //pnlStatusBar.Caption := Application.OnHint;
end;

procedure TfrmSGCP.imgCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmSGCP.imgMaxmizeClick(Sender: TObject);
begin
  Application.Restore;
end;

procedure TfrmSGCP.imgMenuClick(Sender: TObject);
begin
  if svMenu.Opened then
    svMenu.Close
  else
    svMenu.Open;
end;

procedure TfrmSGCP.imgMinimizeClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmSGCP.pcPessoasChange(Sender: TObject);
begin
  case pcPessoas.ActivePageIndex of
    PESQUISA: DoPesquisa;
    DADOS: DoDados;
  end;
end;

procedure TfrmSGCP.DoPesquisa;
begin
  Operacao := opNone;
  pnlPesquisa.Visible := True;
  edtPesquisa.SetFocus;
end;

procedure TfrmSGCP.ClearEdits;
var
  nComponents: Integer;
begin
  for nComponents := 0 to ComponentCount - 1 do
  begin
    if Components[nComponents] is TCustomEdit then
      (Components[nComponents] as TCustomEdit).Clear;

    if Components[nComponents] is TCustomEdit then
      (Components[nComponents] as TCustomEdit).Clear;
  end;
end;

procedure TfrmSGCP.ConsultaCEP(CEP: string);
var
  SGCP: TRoot;
begin
  SGCP := TRoot.Create;
  try
    RESTClient1.BaseURL := 'https://viacep.com.br/ws/' + edtCEP.Text + '/json/';
    RESTRequest1.Execute;

    edtLogradouro.Text := SGCP.Logradouro;
    edtBairro.Text := SGCP.Bairro;
    edtLocalidade.Text := SGCP.Localidade;
    edtUF.Text := SGCP.Uf;
  finally
    SGCP.Free;
  end;

end;

procedure TfrmSGCP.DoDados;
begin
  Operacao := opNone;
  pnlAcoes.Visible := True;
  pnlDados.visible := True;
end;

procedure TfrmSGCP.FormActivate(Sender: TObject);
begin
  FocusColor(nil);
end;

procedure TfrmSGCP.FormKeyDown(Sender: TObject; var Key: Word; Shift:
    TShiftState);
var
  nLengthPesquisa: Integer;

begin
  if Key = VK_RETURN then
  begin
    nLengthPesquisa := Length(edtPesquisa.Text);

    if nLengthPesquisa = 0 then
    begin
      ShowMessage('Favor informar o que deseja pesquisar...');
      edtPesquisa.Clear;
      edtPesquisa.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfrmSGCP.Pesquisar;
var
  nLengthCPF: Integer;
  nLengthPesquisa: Integer;
  cPesquisa: string;
  cPesquisaCPF: string;
  Parametro: String;
begin
  nLengthCPF  := 0;
  nLengthPesquisa := 0;

  cPesquisaCPF := '';

  nLengthPesquisa := Length(edtPesquisa.Text);

  if nLengthPesquisa = 0 then
  begin
    ShowMessage('Favor informar o que deseja pesquisar...');
    edtPesquisa.Clear;
    edtPesquisa.SetFocus;
    Abort;
  end;

  if not DM.qryPessoas.Active then
  begin
    DM.qryPessoas.Open;
    if DM.qryPessoas.RecordCount = 0 then
    begin
      ShowMessage('Não há nenhuma PESSOA cadastrada...');
      edtPesquisa.Clear;
      edtPesquisa.SetFocus;
      Abort;
    end;
    DM.qryPessoas.Close;
  end;

  with qryPessoas do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT                              ' +
                '  P.CODIGO,                         ' +
                '  P.CPF,                            ' +
                '  P.RG,                             ' +
                '  P.NOME,                           ' +
                '  P.TELEFONE,                       ' +
                '  P.CEP,                            ' +
                '  P.LOGRADOURO,                     ' +
                '  P.BAIRRO,                         ' +
                '  P.LOCALIDADE,                     ' +
                '  P.UF                              ' +
                'FROM                                ' +
                '  PESSOAS P                         ' +
                'WHERE                               ' +
                '  (P.CPF        LIKE :PARAMETRO) OR ' +
                '  (P.RG         LIKE :PARAMETRO) OR ' +
                '  (P.NOME       LIKE :PARAMETRO) OR ' +
                '  (P.TELEFONE   LIKE :PARAMETRO) OR ' +
                '  (P.CEP        LIKE :PARAMETRO) OR ' +
                '  (P.LOGRADOURO LIKE :PARAMETRO) OR ' +
                '  (P.BAIRRO     LIKE :PARAMETRO) OR ' +
                '  (P.LOCALIDADE LIKE :PARAMETRO) OR ' +
                '  (P.UF         LIKE :PARAMETRO)    ' +
                'ORDER BY                            ' +
                '  P.NOME;                           ';
  end;

  // Nome
  cPesquisa := Trim(edtPesquisa.Text);
  if (nLengthPesquisa > 0) and (IsNumber(cPesquisa) = True) then
  begin
    Parametro := cPesquisa + '%';
  end
  else
  begin
    if (nLengthPesquisa > 0) then
    begin
      Parametro := '%' + cPesquisa + '%';
    end;
  end;

  qryPessoas.ParamByName('Parametro').AsString := Parametro;
  qryPessoas.Open;

  lblRegistros.Caption := 'Encontrados ' + IntToStr(qryPessoas.RecordCount) + ' registro(s)';
  pnlGrid.Visible := True;
  dbgSGCP.Visible := True;

  if qryPessoas.RowsAffected = 0 then
  begin
    pnlGrid.Visible := False;
    dbgSGCP.Visible := False;

    ShowMessage('Pessoa de nome ' + cPesquisa + ' não foi encontrada...');
    qryPessoas.Close;
    ClearEdits;
    edtPesquisa.SetFocus;
    Abort;
  end;
end;

end.
