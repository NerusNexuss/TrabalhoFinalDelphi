object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 598
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 88
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DataModule1.DSVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 107
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 312
        Top = 16
        Width = 48
        Height = 16
        Caption = 'Vendas'
      end
      object RLLabel2: TRLLabel
        Left = 56
        Top = 56
        Width = 149
        Height = 16
        Caption = 'Quantidade venda cliente'
      end
      object RLLabel3: TRLLabel
        Left = 312
        Top = 56
        Width = 76
        Height = 16
        Caption = 'valor unit'#225'rio'
      end
      object RLLabel4: TRLLabel
        Left = 568
        Top = 56
        Width = 50
        Height = 16
        Caption = 'subtotal'
      end
      object RLLabel5: TRLLabel
        Left = 99
        Top = 88
        Width = 58
        Height = 16
      end
      object RLLabel6: TRLLabel
        Left = 312
        Top = 88
        Width = 58
        Height = 16
      end
      object RLLabel7: TRLLabel
        Left = 568
        Top = 88
        Width = 58
        Height = 16
      end
    end
  end
end
