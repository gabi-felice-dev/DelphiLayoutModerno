inherited FrmBancoListagem: TFrmBancoListagem
  Caption = 'Bancos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeader: TPanel
    inherited lblTitulo: TLabel
      Width = 108
      Caption = 'Cadastro Banco'
      ExplicitWidth = 108
    end
  end
  inherited pnlFormPrincipal: TPanel
    inherited pnlFormPrincipalBotton: TPanel
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited QrListagem: TZQuery
    SQL.Strings = (
      'SELECT BancoId'
      '      ,CodBanco'
      '      ,DescBanco'
      '      ,WebSite'
      '  FROM Banco')
    object QrListagemBancoId: TIntegerField
      DisplayLabel = '#Id'
      FieldName = 'BancoId'
      ReadOnly = True
    end
    object QrListagemCodBanco: TWideStringField
      DisplayLabel = 'C'#243'digo Banco'
      FieldName = 'CodBanco'
      Required = True
      Size = 3
    end
    object QrListagemDescBanco: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DescBanco'
      Required = True
      Size = 50
    end
    object QrListagemWebSite: TWideStringField
      DisplayLabel = 'Site'
      FieldName = 'WebSite'
      Size = 100
    end
  end
end