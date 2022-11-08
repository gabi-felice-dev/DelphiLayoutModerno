unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uSplash;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
     FrmSplash := TFrmSplash.Create(Self);
     FrmSplash.Show;
     FrmSplash.Refresh;
     Sleep(3000);

     if Assigned(FrmSplash) then
        FrmSplash.Free;
end;

end.