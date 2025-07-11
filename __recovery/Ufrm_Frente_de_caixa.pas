unit Ufrm_Frente_de_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    LbProduto: TLabel;
    Label2: TLabel;
    lbQuantidade: TLabel;
    edtQuantidade: TEdit;
    edtPrecoUnitário: TEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnCancelar: TButton;
    lbTotal: TLabel;
    btnProcessar: TButton;
    DBGrid2: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    EdtNomeProdutoFrenteCaixa: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses UDataModule;

end.
