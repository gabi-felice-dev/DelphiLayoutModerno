unit uDtmConexao;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  Data.Win.ADODB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDtmConexao = class(TDataModule)
    SQLConexao: TZConnection;
    QryMenu: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmConexao: TDtmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
