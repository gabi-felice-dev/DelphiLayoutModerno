object DtmConexao: TDtmConexao
  OldCreateOrder = False
  Height = 279
  Width = 344
  object SQLConexao: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = 'dbLayoutModerno'
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=True')
    TransactIsolationLevel = tiReadCommitted
    HostName = 'DESKTOP-LQVQMLG'
    Port = 0
    Database = 'dbLayoutModerno'
    User = 'sa'
    Password = '425879'
    Protocol = 'mssql'
    LibraryLocation = 'C:\Git\Delphi\DelphiLayoutModerno\ScriptBancoDados\ntwdblib.dll'
    Left = 80
    Top = 40
  end
  object QryMenu: TZQuery
    Connection = SQLConexao
    Params = <>
    Left = 240
    Top = 176
  end
end
