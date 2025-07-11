unit Ufrm_cadastro_pagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmFormaPagamento = class(TForm)
    Label1: TLabel;
    dat: TDBEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Novo: TButton;
    BtnExcluir_pagamento: TButton;
    procedure datKeyPress(Sender: TObject; var Key: Char);
    procedure NovoClick(Sender: TObject);
    procedure BtnExcluir_pagamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormaPagamento: TFrmFormaPagamento;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFrmFormaPagamento.NovoClick(Sender: TObject);
begin
  DataModule1.FDTableFormaDePagamento.Insert;
  dat.SetFocus;
end;

procedure TFrmFormaPagamento.BtnExcluir_pagamentoClick(Sender: TObject);
begin
  with DataModule1 do
      begin
        if FDTableFormaDePagamento.RecordCount > 0 then
        begin
          FDTableFormaDePagamento.Delete;
        end
        else
          begin
            ShowMessage('Não á forma de pagamentos para ser excluidas')
          end;
      end;
end;

procedure TFrmFormaPagamento.datKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = VK_RETURN then
  begin
      with DataModule1 do
      begin
        FDTableFormaDePagamento.Edit;
        FDTableFormaDePagamento.Post;
      end;
  end;
end;

end.
