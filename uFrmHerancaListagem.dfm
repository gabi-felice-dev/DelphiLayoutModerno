inherited FrmHerancaBase1: TFrmHerancaBase1
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFormPrincipal: TPanel
    Left = 1
    Top = 42
    Width = 708
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlFormPrincipal'
    TabOrder = 5
    ExplicitLeft = 8
    ExplicitTop = 45
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 708
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 6
      ExplicitTop = 3
      object Label1: TLabel
        Left = 7
        Top = 1
        Width = 105
        Height = 13
        Caption = 'Digite a sua pesquisa:'
      end
      object MaskEdit1: TMaskEdit
        Left = 6
        Top = 16
        Width = 291
        Height = 21
        Hint = 'Digite a sua pesquisa...'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = ''
        TextHint = 'Digite a sua pesquisa...'
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 41
      Width = 708
      Height = 219
      Align = alClient
      Caption = 'Panel8'
      TabOrder = 1
      ExplicitLeft = 16
      ExplicitTop = 47
      ExplicitWidth = 185
      ExplicitHeight = 41
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 706
        Height = 217
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 260
      Width = 708
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
end
