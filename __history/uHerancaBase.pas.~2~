unit uHerancaBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFrmHerancaBase = class(TForm)
    pnlHeaderLineTop: TPanel;
    pnlHeader: TPanel;
    Panel1: TPanel;
    Image1: TImage;
    lblTitulo: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure pnlHeaderMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHerancaBase: TFrmHerancaBase;

implementation

{$R *.dfm}

procedure TFrmHerancaBase.Image1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmHerancaBase.pnlHeaderMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  const SC_DRAGMOVE = $F012;    //constantes em letra maiuscula
begin
   if Button = mbleft then begin
     ReleaseCapture;   //release tela
     self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);   //comando do windows, faz o movimento da tela
   end;

end;

end.
