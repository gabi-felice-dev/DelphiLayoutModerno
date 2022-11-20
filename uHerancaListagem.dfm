inherited FrmHerancaListagem: TFrmHerancaListagem
  Caption = ''
  ClientHeight = 600
  ClientWidth = 891
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 891
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeaderLineTop: TPanel
    Width = 891
    ExplicitWidth = 891
  end
  inherited pnlHeader: TPanel
    Width = 891
    ExplicitWidth = 891
    DesignSize = (
      891
      41)
    inherited Image1: TImage
      Left = 869
      ExplicitLeft = 869
    end
    inherited Panel1: TPanel
      Width = 889
      ExplicitWidth = 889
    end
    inherited Panel5: TPanel
      ExplicitTop = 2
      ExplicitHeight = 37
    end
    inherited Panel6: TPanel
      Left = 889
      ExplicitLeft = 889
      ExplicitTop = 2
      ExplicitHeight = 37
    end
    inherited Panel7: TPanel
      Width = 889
      ExplicitTop = 1
      ExplicitWidth = 889
    end
  end
  inherited Panel2: TPanel
    Height = 557
    ExplicitHeight = 557
  end
  inherited Panel3: TPanel
    Left = 890
    Height = 557
    ExplicitLeft = 890
    ExplicitHeight = 557
  end
  inherited Panel4: TPanel
    Top = 599
    Width = 891
    ExplicitTop = 599
    ExplicitWidth = 891
  end
  object pnlFormPrincipal: TPanel [5]
    Left = 1
    Top = 42
    Width = 889
    Height = 557
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object pnlFormPrincipalTopo: TPanel
      Left = 0
      Top = 0
      Width = 889
      Height = 65
      Align = alTop
      TabOrder = 0
      DesignSize = (
        889
        65)
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 69
        Height = 13
        Caption = 'Pesquisar por:'
      end
      object mskPesquisar: TMaskEdit
        Left = 6
        Top = 38
        Width = 331
        Height = 21
        TabOrder = 0
        Text = ''
        TextHint = 'Digite a sua pesquisa..'
      end
      object btnPesquisar: TButton
        Left = 343
        Top = 38
        Width = 75
        Height = 21
        Caption = 'Pesquisar'
        TabOrder = 1
      end
      object btnNovo: TButton
        Left = 568
        Top = 14
        Width = 100
        Height = 36
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Anchors = [akTop, akRight]
        ImageAlignment = iaCenter
        ImageIndex = 19
        Images = imgBtns
        TabOrder = 2
        OnMouseEnter = btnNovoMouseEnter
        OnMouseLeave = btnNovoMouseLeave
      end
      object btnEditar: TButton
        Left = 677
        Top = 14
        Width = 100
        Height = 36
        Anchors = [akTop, akRight]
        ImageAlignment = iaCenter
        ImageIndex = 16
        Images = imgBtns
        TabOrder = 3
        OnMouseEnter = btnEditarMouseEnter
        OnMouseLeave = btnEditarMouseLeave
      end
      object btnApagar: TButton
        Left = 783
        Top = 14
        Width = 100
        Height = 36
        Anchors = [akTop, akRight]
        ImageAlignment = iaCenter
        ImageIndex = 4
        Images = imgBtns
        TabOrder = 4
        OnMouseEnter = btnApagarMouseEnter
        OnMouseLeave = btnApagarMouseLeave
      end
    end
    object pnlFormPrincipalBotton: TPanel
      Left = 0
      Top = 515
      Width = 889
      Height = 42
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        889
        42)
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 6
        Width = 220
        Height = 32
        DataSource = DtsListagem
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 0
      end
      object btnFechar: TButton
        Left = 784
        Top = 4
        Width = 100
        Height = 36
        Anchors = [akTop, akRight]
        ImageAlignment = iaCenter
        ImageIndex = 10
        Images = imgBtns
        TabOrder = 1
        OnMouseEnter = btnFecharMouseEnter
        OnMouseLeave = btnFecharMouseLeave
      end
    end
    object grdListagem: TDBGrid
      Left = 0
      Top = 65
      Width = 889
      Height = 450
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = True
      DataSource = DtsListagem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = grdListagemKeyDown
    end
  end
  inherited imgBtns: TImageList
    Left = 728
    Top = 16
  end
  object QrListagem: TZQuery
    Connection = DtmConexao.SQLConexao
    Params = <>
    Left = 449
    Top = 50
  end
  object DtsListagem: TDataSource
    DataSet = QrListagem
    Left = 497
    Top = 50
  end
end
