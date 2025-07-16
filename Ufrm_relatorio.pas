unit Ufrm_relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,


type
  TForm5 = class(TForm)

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

Uses Ufrm_cadastro_produto,Ufrm_cadastro_pagamento, UDataModule, Ufrm_Frente_de_caixa;

procedure TForm5.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel5.Caption := Ufrm_Frente_de_caixa.EdtQuantidadeFrente.Text;
end;

end.
