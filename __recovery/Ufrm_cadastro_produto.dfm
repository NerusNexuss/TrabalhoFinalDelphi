object UfmProduto: TUfmProduto
  Left = 0
  Top = 0
  Caption = 'cadastro produto'
  ClientHeight = 570
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbProdutos: TLabel
    Left = 24
    Top = 48
    Width = 248
    Height = 32
    Caption = 'Cadastro de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNomeProduto: TEdit
    Left = 24
    Top = 104
    Width = 177
    Height = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'Nome Produto'
    TextHint = 'Nome Produto'
  end
  object edtPrecoProduto: TEdit
    Left = 241
    Top = 104
    Width = 121
    Height = 40
    Hint = 'Pre'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = 'Pre'#231'o'
    TextHint = 'Pre'#231'o'
  end
  object Edit3: TEdit
    Left = 400
    Top = 104
    Width = 193
    Height = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = 'descri'#231#227'o'
    TextHint = 'descri'#231#227'o'
  end
  object edtQuantidadeProduto: TEdit
    Left = 24
    Top = 160
    Width = 241
    Height = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = 'Quantidade produto'
    TextHint = 'Quantidade produto'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 294
    Width = 793
    Height = 153
    DataSource = DataModule1.DSCadastroProduto
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 24
    Top = 240
    Width = 793
    Height = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = 'Buscar Produtos'
  end
end
