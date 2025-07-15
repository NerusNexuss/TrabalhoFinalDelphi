object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\Nerus-PC\Documents\GitHub\TrabalhoFinalDelphi\' +
        'frente_de_caixa.sqlite'
      'LockingMode=Normal'
      'JournalMode=WAL'
      'Synchronous=Normal')
    Connected = True
    Left = 24
    Top = 16
  end
  object FDTableCadastroProduto: TFDTable
    Active = True
    Filtered = True
    IndexFieldNames = 'id_produto'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'produto'
    Left = 184
    Top = 16
  end
  object DSCadastroProduto: TDataSource
    DataSet = FDTableCadastroProduto
    Left = 368
    Top = 16
  end
  object FDTableFormaDePagamento: TFDTable
    Active = True
    IndexFieldNames = 'descricao;id_forma_pagamento;nome_forma_pagamento'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'forma_pagamento'
    Left = 184
    Top = 96
  end
  object DSFormaDePagamento: TDataSource
    DataSet = FDTableFormaDePagamento
    Left = 368
    Top = 88
  end
  object FDTableCadastrarFuncionario: TFDTable
    Active = True
    IndexFieldNames = 'id_funcionario'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'funcionario'
    Left = 184
    Top = 168
  end
  object DSCadastrarFuncionario: TDataSource
    DataSet = FDTableCadastrarFuncionario
    Left = 368
    Top = 168
  end
  object FDTableVenda: TFDTable
    Active = True
    IndexFieldNames = 'id_item_venda'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'item_venda'
    Left = 184
    Top = 240
  end
  object DSVenda: TDataSource
    DataSet = FDTableVenda
    Left = 368
    Top = 248
  end
end
