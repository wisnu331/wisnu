object DM: TDM
  OldCreateOrder = True
  Height = 201
  Width = 389
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'tugas'
    Username = 'root'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 16
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 304
    Top = 8
  end
  object UniStoredProc1: TUniStoredProc
    Connection = UniConnection1
    Left = 296
    Top = 72
  end
end
