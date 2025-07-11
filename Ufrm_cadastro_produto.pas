unit Ufrm_cadastro_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TUfmProduto = class(TForm)
    lbProdutos: TLabel;
    DBGrid1: TDBGrid;
    EdtNomeProduto: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtPreco: TDBEdit;
    EdtDiscricao: TDBEdit;
    Label3: TLabel;
    EdtEstoque: TDBEdit;
    btnCadastrarProdutos: TButton;
    btnExcluirProdutos: TButton;
    procedure btnCadastrarProdutosClick(Sender: TObject);
    procedure btnExcluirProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UfmProduto: TUfmProduto;

implementation

{$R *.dfm}

uses UDataModule;

procedure TUfmProduto.btnCadastrarProdutosClick(Sender: TObject);
begin
  DataModule1.FDTableCadastroProduto.Insert;
end;

procedure TUfmProduto.btnExcluirProdutosClick(Sender: TObject);
begin
  with DataModule1 do
      begin
        if FDTableCadastroProduto.RecordCount > 0 then
        begin
          FDTableCadastroProduto.Delete;
        end
        else
          begin
            ShowMessage('Não á produtos para ser excluidas')
          end;
      end;
end;


end.
