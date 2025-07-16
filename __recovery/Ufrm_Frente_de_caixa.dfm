object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 842
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object LbProduto: TLabel
    Left = 0
    Top = 48
    Width = 94
    Height = 32
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 472
    Width = 133
    Height = 32
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbQuantidade: TLabel
    Left = 192
    Top = 472
    Width = 165
    Height = 32
    Caption = 'Pre'#231'o Unit'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 189
    Width = 881
    Height = 195
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'preco'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Segoe UI'
        Font.Style = []
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_produto'
        Width = 105
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 881
    Height = 42
    ButtonHeight = 33
    ButtonWidth = 46
    Caption = 'ToolBar1'
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
    end
    object ToolButton3: TToolButton
      Left = 92
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
  end
  object EdtNomeProdutoCaixa: TDBEdit
    Left = 0
    Top = 96
    Width = 873
    Height = 40
    DataField = 'nome_produto'
    DataSource = DataModule1.DSCadastroProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TextHint = 'Digite o nome do Produto'
  end
  object EdtQuantidadeFrente: TDBEdit
    Left = 8
    Top = 510
    Width = 121
    Height = 40
    DataField = 'quantidade'
    DataSource = DataModule1.DSVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 192
    Top = 510
    Width = 121
    Height = 40
    DataField = 'preco_unitario'
    DataSource = DataModule1.DSVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object BtnAdicionarProduto: TButton
    Left = 46
    Top = 575
    Width = 217
    Height = 41
    Caption = 'Adicionar Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BtnAdicionarProdutoClick
  end
  object BtnExcluirProduto: TButton
    Left = 46
    Top = 634
    Width = 217
    Height = 33
    Caption = 'Excluir Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BtnExcluirProdutoClick
  end
  object btnPesquisar: TButton
    Left = 46
    Top = 142
    Width = 747
    Height = 25
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnPesquisarClick
  end
  object StringGridCarrinho: TStringGrid
    Left = 424
    Top = 472
    Width = 425
    Height = 177
    ColCount = 3
    TabOrder = 8
  end
  object FDQueryProduto: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM produto WHERE nome_produto LIKE :pesquisa;'
      '')
    Left = 24
    Top = 408
    ParamData = <
      item
        Name = 'PESQUISA'
        ParamType = ptInput
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQueryProduto
    Left = 120
    Top = 408
  end
end
