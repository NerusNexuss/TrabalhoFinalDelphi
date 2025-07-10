object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LbCadastroFuncionario: TLabel
    Left = 24
    Top = 24
    Width = 241
    Height = 32
    Caption = 'Cadastro funcionario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 86
    Width = 76
    Height = 32
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 274
    Top = 86
    Width = 79
    Height = 32
    Caption = 'E-mail:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 27
    Top = 132
    Width = 73
    Height = 32
    Caption = 'senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 106
    Top = 97
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 378
    Top = 97
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 106
    Top = 143
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 184
    Width = 577
    Height = 241
    DataSource = DataModule1.DSCadastrarFuncionario
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
