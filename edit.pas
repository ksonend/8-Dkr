unit Edit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ExtCtrls;

type

  { TfEdit }

    TfEdit = class(TForm)
    bCancel: TBitBtn;
    bSave: TBitBtn;
    CBNote: TComboBox;
    CBSmotr: TComboBox;
    eCountry: TEdit;
    eGod: TEdit;
    LSmotr1: TLabel;
    Panel1: TPanel;
    Regh: TEdit;
    eName: TEdit;
    Lname: TLabel;
    Lcountry: TLabel;
    LJanr: TLabel;
    YkGod: TLabel;
    LRegh: TLabel;
     procedure FormShow(Sender: TObject);
   procedure eGodKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  fEdit: TfEdit;

implementation

{$R *.lfm}

{ TfEdit }


procedure TfEdit.FormShow(Sender: TObject);
begin
  eName.SetFocus;
end;

procedure TfEdit.eGodKeyPress(Sender: TObject; var Key:char);
begin
     if not (Key in ['0'..'9', #8]) then Key := #0;
end;


end.

