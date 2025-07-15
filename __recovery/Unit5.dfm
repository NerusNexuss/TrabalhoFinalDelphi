object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 667
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object day: TRLReport
    Left = 80
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DataModule1.DSVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      object RLLabel1: TRLLabel
        Left = 313
        Top = 19
        Width = 92
        Height = 29
        Align = faCenter
        Alignment = taCenter
        Caption = 'Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 104
      object RLLabel2: TRLLabel
        Left = 27
        Top = 24
        Width = 82
        Height = 16
        Caption = 'Valor Unit'#225'rio'
      end
      object RLLabel3: TRLLabel
        Left = 313
        Top = 24
        Width = 70
        Height = 16
        Caption = 'Quantidade'
      end
      object RLLabel4: TRLLabel
        Left = 585
        Top = 24
        Width = 52
        Height = 16
        Caption = 'Subtotal'
      end
    end
  end
end
