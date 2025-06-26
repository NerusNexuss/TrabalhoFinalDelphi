unit Ufm_cadastro_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TUfmProduto = class(TForm)
    lbProdutos: TLabel;
    edtNomeProduto: TEdit;
    edtPrecoProduto: TEdit;
    Edit3: TEdit;
    edtQuantidadeProduto: TEdit;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UfmProduto: TUfmProduto;

implementation

{$R *.dfm}

procedure TUfmProduto.FormCreate(Sender: TObject);
begin

end;

end.
