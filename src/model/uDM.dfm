object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 441
  Width = 617
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=SoluctionsInc'
      'User_Name=postgres'
      'Password=123'
      'Server=localhost'
      'DriverID=PG')
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 72
    Top = 16
  end
  object qryLogin: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from login'
      'where senha =:senha'
      '  and acesso =:login')
    Left = 24
    Top = 80
    ParamData = <
      item
        Name = 'SENHA'
        ParamType = ptInput
      end
      item
        Name = 'LOGIN'
        ParamType = ptInput
      end>
  end
  object dspLogin: TDataSetProvider
    DataSet = qryLogin
    Left = 56
    Top = 80
  end
  object cdsLogin: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'senha'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspLogin'
    Left = 88
    Top = 80
    object cdsLoginid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoginacesso: TWideStringField
      FieldName = 'acesso'
      Origin = 'acesso'
      Size = 255
    end
    object cdsLoginsenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 255
    end
    object cdsLoginmaster: TWideStringField
      FieldName = 'master'
      Origin = 'master'
      Size = 1
    end
    object cdsLoginativo: TIntegerField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
  end
  object dsLogin: TDataSource
    DataSet = cdsLogin
    Left = 120
    Top = 80
  end
  object qryPessoa: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from pessoa p ')
    Left = 24
    Top = 136
  end
  object qryBackup: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'Select * from backup'
      'where databackup = :DATAINCLU')
    Left = 176
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'DATAINCLU'
        ParamType = ptInput
      end>
  end
  object dspBackup: TDataSetProvider
    DataSet = qryBackup
    Left = 208
    Top = 80
  end
  object cdsBackup: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'DATAINCLU'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspBackup'
    Left = 240
    Top = 80
  end
  object dsBackup: TDataSource
    DataSet = cdsBackup
    Left = 272
    Top = 80
  end
  object qryValidaLogin: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select a.idtelas, a.idlogin, t.nometela from acessos a'
      'inner join telas t ON t.id = a.idtelas '
      'where t.nometela =:nometela'
      '  and a.idlogin =:idlogin'
      '  and a.liberado = 0')
    Left = 328
    Top = 80
    ParamData = <
      item
        Name = 'NOMETELA'
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'idlogin'
        ParamType = ptInput
      end>
  end
  object dspValidaLogin: TDataSetProvider
    DataSet = qryValidaLogin
    Left = 360
    Top = 80
  end
  object cdsValidaAcesso: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'idlogin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nometela'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspValidaLogin'
    Left = 392
    Top = 80
  end
  object dsValidaAcesso: TDataSource
    DataSet = cdsValidaAcesso
    Left = 424
    Top = 80
  end
  object qryFormaPgto: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from formapgto f')
    Left = 56
    Top = 136
  end
  object qryReceber: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM contasreceber a'
      'where ((:id = 0) or (a.id = :id))'
      '  and a.databaixa is null')
    Left = 88
    Top = 136
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
        Value = Null
      end>
    object qryReceberid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryReceberdataemissao: TDateField
      FieldName = 'dataemissao'
      Origin = 'dataemissao'
    end
    object qryReceberdatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
    object qryRecebervalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 15
      Size = 2
    end
    object qryReceberformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object qryReceberidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object qryReceberdatabaixa: TDateField
      FieldName = 'databaixa'
      Origin = 'databaixa'
    end
    object qryReceberdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object qryRecebernumerodoc: TWideStringField
      FieldName = 'numerodoc'
      Origin = 'numerodoc'
      Size = 60
    end
    object qryReceberobservaobaixa: TWideStringField
      FieldName = 'observaobaixa'
      Size = 255
    end
  end
  object qryPagar: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM contaspagar a'
      'where ((:id = 0) or (a.id = :id))'
      '  and a.databaixa is null')
    Left = 120
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qryPagarid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryPagardataemissao: TDateField
      FieldName = 'dataemissao'
      Origin = 'dataemissao'
    end
    object qryPagardatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
    object qryPagarvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 15
      Size = 2
    end
    object qryPagarformapgto: TIntegerField
      FieldName = 'formapgto'
      Origin = 'formapgto'
    end
    object qryPagaridfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
    object qryPagardatabaixa: TDateField
      FieldName = 'databaixa'
      Origin = 'databaixa'
    end
    object qryPagardescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object qryPagarnumerodoc: TWideStringField
      FieldName = 'numerodoc'
      Origin = 'numerodoc'
      Size = 60
    end
    object qryPagarobservaobaixa: TWideStringField
      FieldName = 'observaobaixa'
      Origin = 'observaobaixa'
      Size = 255
    end
    object qryPagarnumeroorigem: TIntegerField
      FieldName = 'numeroorigem'
      Origin = 'numeroorigem'
    end
  end
  object qryProduto: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM produto')
    Left = 152
    Top = 136
  end
end
