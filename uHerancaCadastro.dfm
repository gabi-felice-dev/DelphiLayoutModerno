inherited FrmHerancaCadastro: TFrmHerancaCadastro
  Caption = 'Digite o caption aqui...'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeaderLineTop: TPanel
    Top = 25
  end
  inherited pnlHeader: TPanel
    Height = 25
    ExplicitHeight = 25
    inherited lblTitulo: TLabel
      Left = 7
      Top = 2
      ExplicitLeft = 7
      ExplicitTop = 2
    end
    inherited Panel1: TPanel
      Top = 23
    end
    inherited Panel5: TPanel
      Height = 21
      ExplicitTop = 2
      ExplicitHeight = 37
    end
    inherited Panel6: TPanel
      Height = 21
      ExplicitTop = 2
      ExplicitHeight = 37
    end
    inherited Panel7: TPanel
      ExplicitTop = 1
    end
  end
  inherited Panel2: TPanel
    Top = 26
    Height = 311
  end
  inherited Panel3: TPanel
    Top = 26
    Height = 311
  end
  object Panel9: TPanel [5]
    Left = 1
    Top = 26
    Width = 708
    Height = 311
    Align = alClient
    TabOrder = 5
    ExplicitTop = 42
    ExplicitHeight = 295
    object Panel8: TPanel
      Left = 1
      Top = 268
      Width = 706
      Height = 42
      Align = alBottom
      BevelOuter = bvNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      ExplicitTop = 252
      object btnApagar: TButton
        Left = 219
        Top = 4
        Width = 100
        Height = 36
        ImageAlignment = iaCenter
        ImageIndex = 4
        Images = imgBtns
        TabOrder = 0
        OnMouseEnter = btnApagarMouseEnter
        OnMouseLeave = btnApagarMouseLeave
      end
      object btnGravar: TButton
        Left = 113
        Top = 4
        Width = 100
        Height = 36
        ImageAlignment = iaCenter
        ImageIndex = 13
        Images = imgBtns
        TabOrder = 1
        OnMouseEnter = btnGravarMouseEnter
        OnMouseLeave = btnGravarMouseLeave
      end
      object btnCancelar: TButton
        Left = 7
        Top = 4
        Width = 100
        Height = 36
        ImageAlignment = iaCenter
        ImageIndex = 7
        Images = imgBtns
        TabOrder = 2
        OnMouseEnter = btnCancelarMouseEnter
        OnMouseLeave = btnCancelarMouseLeave
      end
    end
  end
  inherited imgBtns: TImageList
    Left = 632
    Top = 56
  end
  object sql_cadastro: TZQuery
    UpdateObject = upd_cadastro
    Params = <>
    Left = 369
    Top = 66
  end
  object upd_cadastro: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 449
    Top = 66
  end
  object ds_cadastro: TDataSource
    DataSet = sql_cadastro
    Left = 521
    Top = 66
  end
end
