unit uPessoas;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  System.ImageList,
  Vcl.ImgList,
  Data.DB,
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
  uShowForm;

type
  TfrmPessoas = class(TForm)
    actSV: TActionList;
    actClientes: TAction;
    imgPessoas16: TImageList;
    pnlClientes: TPanel;
    pcClientes: TPageControl;
    tsPesquisa: TTabSheet;
    pnlPesquisaContato: TPanel;
    pnlGrid: TPanel;
    dbgClientes: TDBGrid;
    tsDados: TTabSheet;
    pnlDados: TPanel;
    lblNome: TLabel;
    svMenu: TSplitView;
    catMenuItems: TCategoryButtons;
    pnlToolbar: TPanel;
    imgMenu: TImage;
    lblTitle: TLabel;
    imgAgenda32: TImageList;
    actSair: TAction;
    lblCodigo: TLabel;
    dsPessoas: TDataSource;
    pnlAcoes: TPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    pnlPesquisa: TPanel;
    qryPessoas: TFDQuery;
    actCadastro: TActionList;
    actNovo: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnNovo: TSpeedButton;
    Label1: TLabel;
    actPesquisar: TAction;
    imgCadastro16: TImageList;
    btnPesquisar: TBitBtn;
    actEditar: TAction;
    lblCPF: TLabel;
    Label11: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    edtCPF: TEdit;
    edtNome: TEdit;
    edtLogradouro: TEdit;
    edtLocalidade: TEdit;
    edtCodigo: TEdit;
    edtUF: TComboBox;
    edtPesquisa: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtTelefone: TEdit;
    edtCEP: TEdit;
    Label4: TLabel;
    edtRG: TEdit;
    edtBairro: TEdit;
    Label5: TLabel;
    btnImporta: TButton;
    qryAux: TFDQuery;
    qryGrava: TFDQuery;
    procedure actClientesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actMenuClientesExecute(Sender: TObject);
    procedure edtNomeMouseLeave(Sender: TObject);
    procedure edtPesquisaClick(Sender: TObject);
    procedure dbgClientesDblClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure imgMaxmizeClick(Sender: TObject);
    procedure imgMinimizeClick(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
  private
    { Private declarations }
    procedure dbgClientesClick(Sender: TObject);
    procedure ClearEdits;
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
  frmPessoas: TfrmPessoas;

  cCPF: string = '';

  Operacao: TOperacao;

implementation

{$R *.dfm}

uses
  UTL_BIBLIOTECA;

procedure TfrmPessoas.actCancelarExecute(Sender: TObject);
begin
  ClearEdits;
  CancelButtons;
  qryPessoas.Cancel;
  pcClientes.ActivePageIndex := PESQUISA;
  edtPesquisa.Clear;
  qryPessoas.Close;
end;

procedure TfrmPessoas.actClientesExecute(Sender: TObject);
var
  nRegistros: Integer;
begin
  nRegistros := 0;
  DM.qryPessoas.Open;
  nRegistros := DM.qryPessoas.RecordCount;
  if nRegistros = 0 then
  begin
    if not pnlClientes.Visible then
    begin
      pnlClientes.Visible := True;
      pcClientes.ActivePageIndex := DADOS;
      pnlDados.Enabled := False;
      InsertButtons;
      edtCPF.Clear;
      Exit;
    end
    else
    begin
      pnlClientes.Visible := False;
      qryPessoas.Close;
      ClearEdits;
      Exit;
    end;
  end
  else
  begin
    if not pnlClientes.Visible then
    begin
      pnlClientes.Visible := True;
      DM.qryPessoas.Close;
      qryPessoas.Close;
      pcClientes.ActivePageIndex := PESQUISA;
      ClearEdits;
      edtPesquisa.SetFocus;
      btnPesquisar.Enabled := False;
      pnlGrid.Visible := False;
      Exit;
    end
    else
    begin
      pnlClientes.Visible := False;
      DM.qryPessoas.Close;
      ClearEdits;
      Exit;
    end;
  end;
end;

procedure TfrmPessoas.actEditarExecute(Sender: TObject);
begin
  UpdateButtons;
  pnlDados.Enabled := True;
  Operacao         := opUpdate;
end;

procedure TfrmPessoas.actExcluirExecute(Sender: TObject);
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
    qryPessoas.SQL.Text := 'DELETE                    ' +
                           'FROM                      ' +
                           '  PESSOAS P               ' +
                           'WHERE                     ' +
                           '  (P.CPF LIKE :PARAMETRO) ' +
                           'ORDER BY                  ' +
                           '  P.NOME;                 ';

    // CPF
    nLengthCPF := Length(edtCPF.Text);
    if nLengthCPF > 0 then
    begin
      cCPF := Trim(edtCPF.Text);
      Parametro := cCPF + '%';
      qryPessoas.ParamByName('Parametro').AsString := Parametro;
      qryPessoas.ExecSQL;
      ClearEdits;
      ShowMessage('PESSOA excluida com sucesso...');
    end;
  end;
  Operacao := opNone;
end;

procedure TfrmPessoas.actMenuClientesExecute(Sender: TObject);
begin
  frmPessoas.ShowModal;
end;

procedure TfrmPessoas.actNovoExecute(Sender: TObject);
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

procedure TfrmPessoas.actPesquisarExecute(Sender: TObject);
var
  nLengthCPF: Integer;
  nLengthNome: Integer;
  cPesquisa: string;
  cPesquisaCPF: string;
  Parametro: String;
begin
  nLengthCPF  := 0;
  nLengthNome := 0;

  cPesquisaCPF := '';

  nLengthNome := Length(edtPesquisa.Text);

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
  if (nLengthNome > 0) and (IsNumber(cPesquisa) = True) then
  begin
    Parametro     := cPesquisa + '%';
    btnPesquisar.Enabled := False;
  end
  else
  begin
    if (nLengthNome > 0) then
    begin
      Parametro := '%' + cPesquisa + '%';
    end;
  end;

  qryPessoas.ParamByName('Parametro').AsString := Parametro;
  qryPessoas.Open;

  pnlGrid.Visible := True;

  if qryPessoas.RowsAffected = 0 then
  begin
    pnlGrid.Visible := False;
    ShowMessage('Pessoa de nome' + cPesquisa + ' não foi encontrada...');
    qryPessoas.Close;
    ClearEdits;
    edtPesquisa.SetFocus;
    Abort;
  end;
end;

procedure TfrmPessoas.actSairExecute(Sender: TObject);
var
  nResp: Integer;
begin
  nResp := Application.MessageBox('Deseja realmente encerrar a aplicação?', 'Atenção',
                                   MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2);

  if nResp = mrYes then
  begin
    DM.qryPessoas.Close;
    DM.conPessoas.Connected := False;
    Application.Terminate;
  end
  else
  begin
    Abort;
  end;
end;

procedure TfrmPessoas.actSalvarExecute(Sender: TObject);
var
  cCPF: String;
  cNome: String;
  cEndereco: String;
  cCidade: String;
  cEstado: String;
  Parametro: String;
  cPesquisa: String;
  nLengthCPF: Integer;
  nLengthNome: Integer;
  nLengthEndereco: Integer;
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
        qryPessoas.SQL.Add('CPF, RG, NOME, TEEFONE, CEP, LOGRADOURO, BAIRRO, LOCALIDADE, UF ');
        qryPessoas.SQL.Add(') VALUES (');
        qryPessoas.SQL.Add(':CPF, :RG, :NOME, :TEEFONE, :CEP, :LOGRADOURO, :BAIRRO, :LOCALIDADE, :UF);');
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
        Operacao := opNone;
        // qryPessoas.Post;
        // qryPessoas.Close;

      except
        on E:Exception do
        begin
          DM.conPessoas.Rollback;
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
        cCidade   := Trim(edtLocalidade.Text);
        cEstado   := Trim(edtUF.Text);

        nLengthCPF      := Length(cCPF);
        nLengthNome     := Length(cNome);
        nLengthEndereco := Length(cEndereco);
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
        // DM.conPessoas.Commit;
        qryPessoas.Close;
        Operacao := opNone;
      except
        on E:Exception do
        begin
          DM.conPessoas.Rollback;
          ShowMessage(E.Message);
        end;
      end;
    finally
      DM.qryPessoas.Close;
    end;
  end;

  DM.qryPessoas.Close;
  pcClientes.ActivePageIndex := PESQUISA;
  qryPessoas.Close;
  edtPesquisa.Clear;
end;

procedure TfrmPessoas.btnImportaClick(Sender: TObject);
begin
    // Leitura da tabela alvo
    with qryPessoas do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM PESSOAS');
      Open;
    end;

    qryPessoas.First;

    // Percorrer a tabela alvo
    while not qryPessoas.Eof do
    begin
      // Busca o alvo na tabela de origem
      with qryaux do
      begin
         SQL.Clear;
         SQL.Add('SELECT * FROM ALUNOS WHERE ALUNO = :ALUNO' );
         ParamByName('ALUNO').AsInteger := qryPessoas.FieldByName('CODIGO').AsInteger;
         Open;
      end;

      // Atualização da tabela alvo
      if qryAux.RecordCount > 0 then
      begin
         with qryGrava do
         begin
           SQL.Clear;
           SQL.Add('UPDATE PESSOAS SET RG =:RG, ' + // campo 1 de atualização
                                      'EMAIL    =:EMAIL ,' +
                                      'CEP      =:CEP ,' +
                                      'BAIRRO   =:BAIRRO ,' +
                                      'TELEFONE =:TELEFONE ' +
                   'WHERE CODIGO =:CODIGO'); // Chave Primária

           ParamByName('RG').AsString := qryAux.FieldByName('RG').AsString; // dados do campo 1

           ParamByName('EMAIL').AsString := LowerCase(qryAux.FieldByName('EMAIL').AsString);
           ParamByName('CEP').AsString := SoNumeros(qryAux.FieldByName('CEP').AsString);
           ParamByName('BAIRRO').AsString := qryAux.FieldByName('BAIRRO').AsString;
           ParamByName('TELEFONE').AsString := SoNumeros(qryAux.FieldByName('CELULAR').AsString);

           // Chave Primária
           ParamByName('CODIGO').AsString := qryPessoas.FieldByName('CODIGO').AsString;
           ExecSQL;
         end;
      end;
      qryPessoas.Next; // Avança registro
    end;
end;

procedure TfrmPessoas.dbgClientesClick(Sender: TObject);
begin
  if not dbgClientes.DataSource.DataSet.IsEmpty then
  begin
    dbgClientes.Options := dbgClientes.Options + [dgEditing];
  end
  else
  begin
    dbgClientes.Options := dbgClientes.Options - [dgEditing];
  end;
end;


procedure TfrmPessoas.dbgClientesDblClick(Sender: TObject);
begin
  if qryPessoas.RecordCount > 0 then
  begin
    pcClientes.ActivePageIndex := DADOS;
    // qryPessoas.Open;
    // DM.qryPessoas.Edit;
    InitializeButtons;

    // Popula os dados.

    edtCodigo.Text     := dbgClientes.Fields[CODIGO].Text;
    edtCPF.Text        := dbgClientes.Fields[CPF].Text;
    edtRG.Text         := dbgClientes.Fields[RG].Text;
    edtNome.Text       := dbgClientes.Fields[NOME].Text;
    edtLogradouro.Text := dbgClientes.Fields[LOGRADOURO].Text;
    edtBairro.Text     := dbgClientes.Fields[BAIRRO].Text;
    edtLocalidade.Text := dbgClientes.Fields[LOCALIDADE].Text;
    edtUF.Text         := dbgClientes.Fields[UF].Text;
  end;

  pnlDados.Enabled := False;
    // edtNome.SetFocus;
end;

procedure TfrmPessoas.edtCPFExit(Sender: TObject);
var
  lIsNumber: Boolean;
  lIsCPF: Boolean;
begin
{
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
}
end;

procedure TfrmPessoas.edtNomeMouseLeave(Sender: TObject);
begin
//  lblMensagem.Caption := '';
//  lblMensagem.Caption := 'Informe o nome para a pesquisa e clique em PESQUISAR...';
end;

procedure TfrmPessoas.edtPesquisaChange(Sender: TObject);
begin
  if Length(edtPesquisa.Text) >= 3 then
    btnPesquisar.Enabled := True;
end;

procedure TfrmPessoas.edtPesquisaClick(Sender: TObject);
begin
  edtPesquisa.Clear;
  edtPesquisa.SetFocus;
  btnPesquisar.Enabled := False;
  pnlGrid.Visible      := False;
  qryPessoas.Close;
end;

procedure TfrmPessoas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  nResp: Integer;
begin
  nResp := Application.MessageBox('Deseja realmente encerrar a aplicação?',
                                  'Atenção',
                                   MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2);

  if nResp = mrYes then
  begin
    DM.conPessoas.Commit;
    qryPessoas.Close;
    DM.qryPessoas.Close;
    DM.conPessoas.Connected := False;
    CanClose := True;
  end
  else
  begin
    CanClose := False;
  end;
end;

procedure TfrmPessoas.FormCreate(Sender: TObject);
begin
  CreateSQL;
  Operacao := opNone;
  TfrmPessoas(dbgClientes).OnClick := dbgClientesClick;
  pnlDados.Enabled := False;
end;

procedure TfrmPessoas.FormDestroy(Sender: TObject);
begin
  DestroySQL;
end;

procedure TfrmPessoas.FormShow(Sender: TObject);
begin
  pnlClientes.Visible  := False;
  qryPessoas.Close;
end;

procedure TfrmPessoas.imgCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPessoas.imgMaxmizeClick(Sender: TObject);
begin
  Application.Restore;
end;

procedure TfrmPessoas.imgMenuClick(Sender: TObject);
begin
  if svMenu.Opened then
    svMenu.Close
  else
    svMenu.Open;
end;

procedure TfrmPessoas.imgMinimizeClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmPessoas.ClearEdits;
var
  nComponents: Integer;
begin
  for nComponents := 0 to ComponentCount - 1 do
  begin
    if Components[nComponents] is TCustomEdit then
    begin
      (Components[nComponents] as TCustomEdit).Clear;
    end;
  end;
end;

end.
