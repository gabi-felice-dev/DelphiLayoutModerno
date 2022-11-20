unit uFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaBase, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.DBCtrls, Vcl.ComCtrls;

  procedure CriarAba(aForm :TFormClass; aPageControl : TPageControl; aIndexImagem : Integer);
  function AbaExiste(aNomeAba : string; aPageControl : TPageControl): Boolean;
  procedure FecharAba(aNomeAba : string; aPageControl : TPageControl);

implementation

procedure CriarAba(aForm :TFormClass; aPageControl : TPageControl; aIndexImagem : Integer);
var TabSheet : TTabSheet;
    Form     : TForm;
begin
   Form := aForm.Create(nil);

   if AbaExiste(Form.Caption, aPageControl)  then begin
     if Assigned(Form) then   //existe na mem�ria
        FreeAndNil(Form); // destroi var criado na linha 20 pq ja existe
     exit; //sai do metodo
   end;

   //N�o existe ent�o cria :D
   TabSheet := TTabSheet.Create(nil);

   TabSheet.PageControl := aPageControl;
   TabSheet.Caption     := form.Caption;
   TabSheet.ImageIndex  := aIndexImagem;

   Form.Align       := alClient;
   Form.BorderStyle := bsNone;
   Form.Parent      := tabSheet;

   Form.Show;

   aPageControl.ActivePage := tabSheet;

end;

function AbaExiste(aNomeAba : string; aPageControl : TPageControl): Boolean;
var I : Integer;
begin
   Result := false;

   for I := 0 to aPageControl.PageCount -1 do
   begin
     if LowerCase(aPageControl.Pages[i].Caption) = LowerCase(aNomeAba) then
     begin
         aPageControl.ActivePage := aPageControl.Pages[i]; //exibe pagina q j� existe
         aPageControl.TabIndex := I;

         Result := true;
         Break;    //pausa pq achou aba
     end;
   end;

end;

procedure FecharAba(aNomeAba : string; aPageControl : TPageControl);
var I : Integer;
begin

   for I := 0 to aPageControl.PageCount -1 do
   begin
     if LowerCase(aPageControl.Pages[i].Caption) = LowerCase(aNomeAba) then
     begin
         aPageControl.Pages[I].Destroy;  //fecha aba
         aPageControl.ActivePageIndex := 0;  //volta menu
         Break;    //pausa pq achou aba
     end;
   end;

end;

end.