unit uBancoListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uEnum;

type
  TFrmBancoListagem = class(TFrmHerancaListagem)
    QrListagemBancoId: TIntegerField;
    QrListagemCodBanco: TWideStringField;
    QrListagemDescBanco: TWideStringField;
    QrListagemWebSite: TWideStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
  private
    procedure AbrirCadastro(estadoCadastro: TEstadoCadastro);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBancoListagem: TFrmBancoListagem;

implementation

{$R *.dfm}

uses uBancoCadastro;

procedure TfrmBancoListagem.AbrirCadastro(estadoCadastro:TEstadoCadastro);
begin
  try
    FrmBancoCadastro := TFrmBancoCadastro.Create(Self);
    frmBancoCadastro.EstadoCadastro:=estadoCadastro;
    case estadoCadastro of
      ecNovo: begin
        frmBancoCadastro.sql_cadastro_.ParamByName('BancoId').AsInteger := -1;
        frmBancoCadastro.sql_cadastro_.Open;
        frmBancoCadastro.sql_cadastro_.Append;
      end;
      ecModificar: begin
        frmBancoCadastro.sql_cadastro_.ParamByName('BancoId').AsInteger := QrListagemBancoId.AsInteger;
        frmBancoCadastro.sql_cadastro_.Open;
        frmBancoCadastro.sql_cadastro_.Edit;
      end;
      ecApagar: begin
        frmBancoCadastro.sql_cadastro_.ParamByName('BancoId').AsInteger := QrListagemBancoId.AsInteger;
        frmBancoCadastro.sql_cadastro_.Open;
        frmBancoCadastro.HabilitaDesabilitaTela(false);
      end;
    end;

    frmBancoCadastro.ShowModal;
  finally
    frmBancoCadastro.Release;
    Self.RefreshQuery(QrListagem);
  end;
end;



procedure TFrmBancoListagem.btnApagarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecApagar);
end;

procedure TFrmBancoListagem.btnEditarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecModificar);
end;

procedure TFrmBancoListagem.btnNovoClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecNovo);
end;

end.

