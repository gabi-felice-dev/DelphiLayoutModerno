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
    LblPesquisa: TLabel;
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
    procedure MudarCorGridIndex;
    procedure SetaCor(index : string);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure mskPesquisarChange(Sender: TObject);
  private
    { Private declarations }
    sIndexFieldNames   : String;
    sNomeColunaDisplay : String;
    iColunaIndexada    : integer;
  public
    { Public declarations }
     procedure RefreshQuery(aQuery : TZQuery);
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
  ButtonMouseLeave(Sender, 4);
end;

procedure TFrmHerancaListagem.btnEditarMouseEnter(Sender: TObject);
begin
  inherited;
   ButtonMouseEnter(Sender, 15);
end;

procedure TFrmHerancaListagem.btnEditarMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 16);
end;

procedure TFrmHerancaListagem.btnFecharMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 9);
end;

procedure TFrmHerancaListagem.btnFecharMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 10);
end;

procedure TFrmHerancaListagem.btnNovoMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 18);
end;

procedure TFrmHerancaListagem.btnNovoMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 19);
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
     MessageDlg('N�o existe instru��o SQL no componente QrListagem.', mtWarning, [mbOK], 0);
     abort;   //cancela chamada e para execu��o
  end;

  inherited; //executa metodo da heran�a

  sIndexFieldNames := QrListagem.IndexFieldNames;

  QrListagem.Open; //exec query

  MudarCorGridIndex;
end;

procedure TFrmHerancaListagem.grdListagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //bloqueio o ctrl + del apaga linha
  if (Shift = [ssCtrl]) and (key = 46) then
      Key := 0;

end;

procedure TFrmHerancaListagem.grdListagemTitleClick(Column: TColumn);
var  i : Integer;
begin
  inherited;

  iColunaIndexada            := Column.Index;
  QrListagem.IndexFieldNames := Column.FieldName;

  LblPesquisa.Caption := 'Pesquisar por '  +  Column.Title.Caption;
  sNomeColunaDisplay  := Column.FieldName;

  SetaCor(Column.FieldName);

end;

procedure TFrmHerancaListagem.Image1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmHerancaListagem.mskPesquisarChange(Sender: TObject);
begin
  inherited;

  if not QrListagem.IsEmpty then
    QrListagem.Locate(sNomeColunaDisplay, TMaskEdit(Sender).Text, [loCaseInsensitive,loPartialKey]);  //pesquisa no banco

end;

procedure TFrmHerancaListagem.MudarCorGridIndex;
var
    index : string;
begin
    if QrListagem.IndexFieldNames = EmptyStr then
      QrListagem.IndexFieldNames := sIndexFieldNames;

    index := QrListagem.IndexFieldNames;
    index := StringReplace(index, ' Asc', '', [rfReplaceAll]);
    index := StringReplace(index, ' Desc', '', [rfReplaceAll]);

    SetaCor(index);
end;

procedure TFrmHerancaListagem.RefreshQuery(aQuery: TZQuery);
var aBookMark:TBookmark;
begin
  try
    aQuery.DisableControls;       //desliga controle/eventos
    aBookMark := aQuery.Bookmark;  //salva ponteiro
    aQuery.Refresh;
  finally
    aQuery.GotoBookmark(aBookMark);   //vai no ponteiro
    aQuery.EnableControls;
    aQuery.FreeBookmark(aBookMark);
  end;
end;

procedure TFrmHerancaListagem.SetaCor(index : string);
var     i : Integer;
begin
    for i := 0 to grdListagem.Columns.Count -1 do
    begin
       if UpperCase(grdListagem.Columns[i].FieldName) = UpperCase(trim(index)) then
       begin
          grdListagem.Columns[i].Color            := clBtnFace;
          grdListagem.Columns[i].Title.Font.Color := clBlack;
          grdListagem.Columns[i].Title.Color      := clInfoBk;

          LblPesquisa.Caption := 'Pesquisar por '  +  grdListagem.Columns[i].Title.Caption;
          sNomeColunaDisplay  := grdListagem.Columns[i].FieldName;

          iColunaIndexada     := i;
       end
       else
       begin
          grdListagem.Columns[i].Color            := clWhite;
          grdListagem.Columns[i].Title.Font.Color := clBlack;
          grdListagem.Columns[i].Title.Color      := clBtnFace;
       end;
    end;
end;


end.
