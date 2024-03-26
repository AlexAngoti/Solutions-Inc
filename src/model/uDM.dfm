object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 441
  Width = 608
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
        Position = 1
        Name = 'login'
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'senha'
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
end
