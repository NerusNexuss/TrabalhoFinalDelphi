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
    Top = 24
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
  object Label1: TLabel
    Left = 24
    Top = 81
    Width = 207
    Height = 32
    Caption = 'Nome do produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 148
    Width = 65
    Height = 32
    Caption = 'Pre'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 280
    Top = 81
    Width = 105
    Height = 32
    Caption = 'Discri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TLabel
    Left = 280
    Top = 148
    Width = 91
    Height = 32
    Caption = 'Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 277
    Width = 793
    Height = 153
    DataSource = DataModule1.DSCadastroProduto
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_produto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco'
        Title.Caption = 'pre'#231'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'descri'#231#227'o'
        Width = 100
        Visible = True
      end>
  end
  object EdtNomeProduto: TDBEdit
    Left = 24
    Top = 119
    Width = 121
    Height = 23
    DataField = 'nome_produto'
    DataSource = DataModule1.DSCadastroProduto
    TabOrder = 1
  end
  object EdtPreco: TDBEdit
    Left = 24
    Top = 183
    Width = 121
    Height = 23
    DataField = 'preco'
    DataSource = DataModule1.DSCadastroProduto
    TabOrder = 2
  end
  object EdtDiscricao: TDBEdit
    Left = 280
    Top = 119
    Width = 121
    Height = 23
    DataField = 'descricao'
    DataSource = DataModule1.DSCadastroProduto
    TabOrder = 3
  end
  object EdtEstoque: TDBEdit
    Left = 280
    Top = 183
    Width = 121
    Height = 23
    DataField = 'estoque'
    DataSource = DataModule1.DSCadastroProduto
    TabOrder = 4
  end
  object btnCadastrarProdutos: TButton
    Left = 456
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = btnCadastrarProdutosClick
  end
  object btnExcluirProdutos: TButton
    Left = 592
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = btnExcluirProdutosClick
  end
end
