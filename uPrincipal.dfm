object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 505
  ClientWidth = 731
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object plnPrincipalLeft: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 505
    Align = alLeft
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 0
    object Button1: TButton
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object pnlPrincipalAllClient: TPanel
    Left = 185
    Top = 0
    Width = 546
    Height = 505
    Align = alClient
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 1
    object pnlPrincipalCenterLeft: TPanel
      Left = 1
      Top = 11
      Width = 10
      Height = 483
      Align = alLeft
      BevelOuter = bvNone
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 535
      Top = 11
      Width = 10
      Height = 483
      Align = alRight
      BevelOuter = bvNone
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 544
      Height = 10
      Align = alTop
      BevelOuter = bvNone
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 1
      Top = 494
      Width = 544
      Height = 10
      Align = alBottom
      BevelOuter = bvNone
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 3
    end
    object pgcPrincipal: TPageControl
      Left = 11
      Top = 11
      Width = 524
      Height = 483
      ActivePage = tsMenu
      Align = alClient
      TabOrder = 4
      object tsMenu: TTabSheet
        Caption = 'Menu'
      end
    end
  end
end
