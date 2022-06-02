unit uContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkins, dxSkinsDefaultPainters, Vcl.StdCtrls, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait;

type
  TfrmContatos = class(TForm)
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    AgendaConnection: TFDConnection;
    edtNumero: TEdit;
    edtTipo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnGravar: TButton;
    btnSalvar: TButton;
    Label3: TLabel;
    edtNome: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure FDQuery1AfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContatos: TfrmContatos;

implementation

{$R *.dfm}

procedure TfrmContatos.btnGravarClick(Sender: TObject);
begin
  with FDQuery1 do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO CONTATOS (NOME) ');
    SQL.Add('VALUES (:NOME)' );
    ParamByName('NOME').Value := edtNome.Text;
    ExecSQL;
    SQL.Add('SELECT * FROM CONTATOS ORDER BY CONTATO' );
  end;
  with FDQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CONTATOS ORDER BY CONTATO' );
    Open;
  end;
end;

procedure TfrmContatos.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmContatos.btnSalvarClick(Sender: TObject);
begin
  with FDQuery2 do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO TELEFONES (CONTATO, NUMERO, TIPO) ');
    SQL.Add('VALUES (:CONTATO, :NUMERO, :TIPO)' );
    ParamByName('CONTATO').Value := FDQuery1.FieldByName('CONTATO').Value;
    ParamByName('NUMERO').Value := edtNumero.Text;
    ParamByName('TIPO').Value := edtTipo.Text;
    ExecSQL;

    SQL.Clear;
    SQL.Add('SELECT * FROM TELEFONES WHERE CONTATO = :CONTATO ORDER BY TIPO, NUMERO' );
    ParamByName('CONTATO').Value := FDQuery1.FieldByName('CONTATO').Value;
    Open;
  end;
end;

procedure TfrmContatos.FDQuery1AfterScroll(DataSet: TDataSet);
begin
  with FDQuery2 do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TELEFONES WHERE CONTATO = :CONTATO ORDER BY TIPO, NUMERO' );
    ParamByName('CONTATO').Value := FDQuery1.FieldByName('CONTATO').Value;
    Open;
  end;
end;

procedure TfrmContatos.FormShow(Sender: TObject);
begin
  FDQuery1.Open;
end;

end.
