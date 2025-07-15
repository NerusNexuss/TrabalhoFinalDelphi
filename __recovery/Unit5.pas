unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TForm5 = class(TForm)
    day: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

Uses Ufrm_cadastro_produto,Ufrm_cadastro_pagamento, UDataModule;

procedure TForm5.FormCreate(Sender: TObject);
begin

end;


end.
