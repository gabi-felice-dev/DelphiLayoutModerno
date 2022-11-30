unit uBancoCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaCadastro, Data.DB, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmBancoCadastro = class(TFrmHerancaCadastro)
    sql_cadastro_CodBanco: TWideStringField;
    sql_cadastro_DescBanco: TWideStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    sql_cadastro_BancoId: TIntegerField;
    sql_cadastro_WebSite2: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBancoCadastro: TFrmBancoCadastro;

implementation

{$R *.dfm}

uses uDtmConexao;

end.
