unit Ufrm_Frente_de_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param;

type
  TForm2 = class(TForm)
    LbProduto: TLabel;
    Label2: TLabel;
    lbQuantidade: TLabel;
    DBGrid2: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    EdtNomeProdutoCaixa: TDBEdit;

    DBEdit1: TDBEdit;
    BtnAdicionarProduto: TButton;
    BtnExcluirProduto: TButton;
    btnPesquisar: TButton;
    FDQueryProduto: TFDQuery;
    StringGridCarrinho: TStringGrid;
    DataSource1: TDataSource;
    procedure BtnAdicionarProdutoClick(Sender: TObject);
    procedure BtnExcluirProdutoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    EdtQuantidadeFrente: TDBEdit;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses UDataModule;

procedure TForm2.BtnAdicionarProdutoClick(Sender: TObject);
var
  produto: string;
  precoUnit: Double;
  quantidade: Integer;
  total: Double;
  novaLinha: Integer;
begin

  produto := FDQueryProduto.FieldByName('nome_produto').AsString;
  precoUnit := FDQueryProduto.FieldByName('preco').AsFloat;
  quantidade := StrToIntDef(EdtQuantidadeFrente.Text, 1);
  total := precoUnit * quantidade;


  novaLinha := StringGridCarrinho.RowCount;
  StringGridCarrinho.RowCount := novaLinha + 1;

  StringGridCarrinho.Cells[0, novaLinha] := produto;
  StringGridCarrinho.Cells[1, novaLinha] := FormatFloat('0.00', precoUnit);
  StringGridCarrinho.Cells[2, novaLinha] := IntToStr(quantidade);
  StringGridCarrinho.Cells[3, novaLinha] := FormatFloat('0.00', total);
end;

procedure TForm2.BtnExcluirProdutoClick(Sender: TObject);
begin

  with DataModule1 do
      begin
        if FDTableVenda.RecordCount > 0 then
        begin
          FDTableVenda.Delete;
        end
        else
          begin
            ShowMessage('Não á vendas para ser excluidas')
          end;
      end;
end;

procedure TForm2.btnPesquisarClick(Sender: TObject);
begin
  FDQueryProduto.Close;
  FDQueryProduto.ParamByName('pesquisa').AsString := '%' + EdtNomeProdutoCaixa.Text + '%';
  FDQueryProduto.Open;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  StringGridCarrinho.Cells[0, 0] := 'Produto';
  StringGridCarrinho.Cells[1, 0] := 'Preço Unitário';
  StringGridCarrinho.Cells[2, 0] := 'Quantidade';
  StringGridCarrinho.Cells[3, 0] := 'Total';
end;

end.
