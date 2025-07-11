unit Ufrm_cadastro_funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    LbCadastroFuncionario: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtNome: TDBEdit;
    Edtemail: TDBEdit;
    Edtsenha: TDBEdit;
    DBGrid1: TDBGrid;
    Btn_cadastro_funcionario: TButton;
    Btn_excluir: TButton;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    procedure Btn_cadastro_funcionarioClick(Sender: TObject);
    procedure Btn_excluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDataModule;

procedure TForm1.Btn_cadastro_funcionarioClick(Sender: TObject);
begin
  DataModule1.FDTableCadastrarFuncionario.Insert;
end;

procedure TForm1.Btn_excluirClick(Sender: TObject);
begin
  with DataModule1 do
      begin
        if FDTableCadastrarFuncionario.RecordCount > 0 then
        begin
          FDTableCadastrarFuncionario.Delete;
        end
        else
          begin
            ShowMessage('Não á funcionários para ser excluidas')
          end;
      end;
end;

end.
