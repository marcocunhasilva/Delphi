unit uRemoveCPF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDM, uLib, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmRemoveMascaraCPF = class(TForm)
    qryClientes: TFDQuery;
    qryClientesCPF: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    dsClientes: TDataSource;
    Label1: TLabel;
    edtDBCPF: TDBEdit;
    btnRemoveCPF: TBitBtn;
    btnFechar: TBitBtn;
    lblCPF: TLabel;
    qryClientesCODIGO: TIntegerField;
    btnOpen: TBitBtn;
    btnClose: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure btnRemoveCPFClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  CPF = 1;
  DATA = 2;
  CEP = 3;
  TELEFONE = 4;
  CNPJ = 5;

var
  frmRemoveMascaraCPF: TfrmRemoveMascaraCPF;

implementation

{$R *.dfm}

procedure TfrmRemoveMascaraCPF.btnCloseClick(Sender: TObject);
begin
  qryClientes.Close;
end;

procedure TfrmRemoveMascaraCPF.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRemoveMascaraCPF.btnOpenClick(Sender: TObject);
begin
  qryClientes.Open;
end;

procedure TfrmRemoveMascaraCPF.btnRemoveCPFClick(Sender: TObject);
var
  cCPF: string;
  mCPF: string;
begin
  if DM.conClientes.Connected then
  begin
    qryClientes.CachedUpdates := True;
    qryClientes.Open;
    qryClientes.First;
  end
  else
  begin
    DM.conClientes.Connected := True;
    qryClientes.CachedUpdates := True;
    qryClientes.Open;
    qryClientes.First;
  end;

  // Varre a tabela
  while not qryClientes.Eof do
  begin
    mCPF := qryClientesCPF.AsString;
    qryClientes.Edit;
    cCPF := TiraMascara(mCPF, CPF);
    lblCPF.Caption := cCPF;
    qryClientesCPF.AsString := cCPF;
    qryClientes.Post;
    qryClientes.Next;
  end;
  qryClientes.ApplyUpdates(0);
  // DM.conCClientes.Commit;
  qryClientes.Close;
  qryClientes.CachedUpdates := False;
end;

end.
