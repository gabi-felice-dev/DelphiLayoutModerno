object FrmHerancaBase: TFrmHerancaBase
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight]
  BorderStyle = bsNone
  Caption = 'FrmHerancaBase'
  ClientHeight = 338
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeaderLineTop: TPanel
    Left = 0
    Top = 41
    Width = 710
    Height = 1
    Align = alTop
    BevelOuter = bvNone
    Color = clDefault
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 651
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 1
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    OnMouseDown = pnlHeaderMouseDown
    ExplicitLeft = -7
    ExplicitTop = -5
    DesignSize = (
      710
      41)
    object Image1: TImage
      Left = 688
      Top = 11
      Width = 16
      Height = 16
      Cursor = crHandPoint
      Hint = 'Clique para fechar'
      HelpType = htKeyword
      HelpKeyword = 'Clique para fechar'
      Anchors = [akTop, akRight]
      AutoSize = True
      DragCursor = crDefault
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        00100804000000B5FA37EA0000000467414D410000B18F0BFC61050000000262
        4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
        000774494D4507E30C14172A35663E53BB000000914944415478DA95913B0EC2
        301044DF9E85B305508A04E8E0045024CA87EFE1B8077458B623AF6111C295BD
        F3648F6784863B67EC55321356B4D48C865C7063276E632373AE6C39883F2C39
        396CCCE40B1B7A903858381F6B867739011A51B20626E499DD950150D179D343
        1AFD0584271EDA8106D2574D93795831A4047C66E963661F003BEA8884B22A8E
        DFCBFA51F70BBFDE381B45DC79610000002574455874646174653A6372656174
        6500323031392D31322D32305432333A34323A35332B30303A3030807DAF5A00
        00002574455874646174653A6D6F6469667900323031392D31322D3230543233
        3A34323A35332B30303A3030F12017E60000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE4260
        82}
      ShowHint = True
      OnClick = Image1Click
      ExplicitLeft = 629
    end
    object lblTitulo: TLabel
      Left = 8
      Top = 14
      Width = 154
      Height = 19
      Caption = 'Digite o titulo da tela..'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Corbel'
      Font.Style = [fsBold]
      ParentFont = False
      OnMouseDown = pnlHeaderMouseDown
    end
    object Panel1: TPanel
      Left = 1
      Top = 39
      Width = 708
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = clDefault
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 651
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1
      Height = 38
      Align = alLeft
      Caption = 'Panel2'
      Color = clDefault
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 42
      ExplicitHeight = 296
    end
    object Panel6: TPanel
      Left = 708
      Top = 1
      Width = 1
      Height = 38
      Align = alRight
      Caption = 'Panel2'
      Color = clDefault
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = 1
      ExplicitHeight = 294
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 1
    Height = 295
    Align = alLeft
    Caption = 'Panel2'
    Color = clDefault
    ParentBackground = False
    TabOrder = 2
    ExplicitHeight = 296
  end
  object Panel3: TPanel
    Left = 709
    Top = 42
    Width = 1
    Height = 295
    Align = alRight
    Caption = 'Panel2'
    Color = clDefault
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitHeight = 294
  end
  object Panel4: TPanel
    Left = 0
    Top = 337
    Width = 710
    Height = 1
    Align = alBottom
    Caption = 'Panel2'
    Color = clDefault
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = 1
    ExplicitTop = 42
    ExplicitWidth = 296
  end
end
