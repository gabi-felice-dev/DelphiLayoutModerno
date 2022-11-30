inherited FrmBancoCadastro: TFrmBancoCadastro
  Caption = 'Cadastro de Bancos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeader: TPanel
    inherited lblTitulo: TLabel
      Width = 135
      Caption = 'Cadastro de Bancos'
      ExplicitWidth = 135
    end
  end
  inherited Panel9: TPanel
    ExplicitLeft = -5
    ExplicitTop = 19
    ExplicitHeight = 311
    object Label2: TLabel [0]
      Left = 8
      Top = 64
      Width = 55
      Height = 13
      Caption = 'C'#243'd. Banco'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [1]
      Left = 8
      Top = 104
      Width = 78
      Height = 13
      Caption = 'Descri'#231#227'o Banco'
      FocusControl = DBEdit3
    end
    object Label1: TLabel [2]
      Left = 8
      Top = 150
      Width = 40
      Height = 13
      Caption = 'WebSite'
      FocusControl = DBEdit1
    end
    object Label4: TLabel [3]
      Left = 8
      Top = 24
      Width = 39
      Height = 13
      Caption = 'BancoId'
      FocusControl = DBEdit4
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 80
      Width = 100
      Height = 21
      DataField = 'CodBanco'
      DataSource = ds_cadastro
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 120
      Width = 654
      Height = 21
      DataField = 'DescBanco'
      DataSource = ds_cadastro
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 164
      Width = 654
      Height = 21
      DataField = 'WebSite'
      DataSource = ds_cadastro
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 37
      Width = 134
      Height = 21
      DataField = 'BancoId'
      DataSource = ds_cadastro
      TabOrder = 4
    end
  end
  inherited sql_cadastro_: TZQuery
    Connection = DtmConexao.SQLConexao
    SQL.Strings = (
      'SELECT BancoId'
      '      ,CodBanco'
      '      ,DescBanco'
      '      ,WebSite'
      '  FROM Banco'
      '  WHERE BancoId = :BancoId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'BancoId'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BancoId'
        ParamType = ptUnknown
      end>
    object sql_cadastro_CodBanco: TWideStringField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'CodBanco'
      Required = True
      Size = 3
    end
    object sql_cadastro_DescBanco: TWideStringField
      DisplayLabel = 'Descri'#231#227'o Banco'
      FieldName = 'DescBanco'
      Required = True
      Size = 50
    end
    object sql_cadastro_BancoId: TIntegerField
      FieldName = 'BancoId'
      ReadOnly = True
    end
    object sql_cadastro_WebSite2: TWideStringField
      FieldName = 'WebSite'
      Size = 100
    end
  end
  inherited upd_cadastro: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Banco'
      'WHERE'
      
        '  ((Banco.BancoId IS NULL AND :OLD_BancoId IS NULL) OR (Banco.Ba' +
        'ncoId = :OLD_BancoId))')
    InsertSQL.Strings = (
      'INSERT INTO Banco'
      '  (CodBanco, DescBanco, WebSite)'
      'VALUES'
      '  (:CodBanco, :DescBanco, :WebSite)')
    ModifySQL.Strings = (
      'UPDATE Banco SET'
      '  CodBanco = :CodBanco,'
      '  DescBanco = :DescBanco,'
      '  WebSite = :WebSite'
      'WHERE'
      
        '  ((Banco.BancoId IS NULL AND :OLD_BancoId IS NULL) OR (Banco.Ba' +
        'ncoId = :OLD_BancoId))')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CodBanco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DescBanco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WebSite'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_BancoId'
        ParamType = ptUnknown
      end>
  end
end
