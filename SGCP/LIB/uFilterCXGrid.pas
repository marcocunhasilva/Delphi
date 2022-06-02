// estrutura na tela:
Grid
   Nivel - Dados

// onde
Grid : TcxGrid
Nivel: TcxGridLevel
Dados: TcxGridDBTableView

uses 
	cxGridDBTableView, cxGridTableView, cxGrid, cxGridCustomView, cxGridStyleSheetsPreview, cxStyleSheetEditor, Cxstyles;

----------------------------------------
// QuantumGrid - como filtrar via codigo os registros de um cxGrid
Dados.DataController.Filter.BeginUpdate;
try
  Dados.DataController.Filter.Root.Clear;
  Dados.DataController.Filter.Root.AddItem(DadosNome,  foLike, '%' + PesquisaEdit.Text + '%', PesquisaEdit.Text);
finally
  Dados.DataController.Filter.EndUpdate;
end;
Dados.DataController.Filter.Active := True;