unit uHerancaListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaBase, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.DBCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFrmHerancaListagem = class(TFrmHerancaBase)
    pnlFormPrincipal: TPanel;
    pnlFormPrincipalTopo: TPanel;
    pnlFormPrincipalBotton: TPanel;
    grdListagem: TDBGrid;
    mskPesquisar: TMaskEdit;
    Label1: TLabel;
    btnPesquisar: TButton;
    btnNovo: TButton;
    btnEditar: TButton;
    btnApagar: TButton;
    DBNavigator1: TDBNavigator;
    btnFechar: TButton;
    QrListagem: TZQuery;
    DtsListagem: TDataSource;
    procedure btnNovoMouseEnter(Sender: TObject);
    procedure btnNovoMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnApagarMouseEnter(Sender: TObject);
    procedure btnApagarMouseLeave(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHerancaListagem: TFrmHerancaListagem;

implementation

uses uPrincipal, uFuncoes, uDtmConexao;

{$R *.dfm}

procedure TFrmHerancaListagem.btnApagarMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 3);
end;

procedure TFrmHerancaListagem.btnApagarMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 6);
end;

procedure TFrmHerancaListagem.btnEditarMouseEnter(Sender: TObject);
begin
  inherited;
   ButtonMouseEnter(Sender, 15);
end;

procedure TFrmHerancaListagem.btnEditarMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 18);
end;

procedure TFrmHerancaListagem.btnFecharMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 9);
end;

procedure TFrmHerancaListagem.btnFecharMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 12);
end;

procedure TFrmHerancaListagem.btnNovoMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 18);
end;

procedure TFrmHerancaListagem.btnNovoMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 21);
end;

procedure TFrmHerancaListagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

procedure TFrmHerancaListagem.FormShow(Sender: TObject);
begin

  if (QrListagem.SQL.Text = EmptyStr) then begin
     MessageDlg('Não existe instrução SQL no componente QrListagem.', mtWarning, [mbOK], 0);
     abort;   //cancela chamada e para execução
  end;

  inherited; //executa metodo da herança

  QrListagem.Open; //exec query
end;

procedure TFrmHerancaListagem.grdListagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //bloqueio o ctrl + del apaga linha
  if (Shift = [ssCtrl]) and (key = 46) then
      Key := 0;

end;

procedure TFrmHerancaListagem.Image1Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
