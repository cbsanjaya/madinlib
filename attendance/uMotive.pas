unit uMotive;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormMotive = class(TForm)
    ListMotive: TListBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Motive: string;
    { Public declarations }
  end;

var
  FormMotive: TFormMotive;

implementation

{$R *.dfm}

procedure TFormMotive.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Motive := ListMotive.Items[ListMotive.ItemIndex];
    ModalResult := mrOk;
  end;
end;

procedure TFormMotive.FormShow(Sender: TObject);
begin
  ListMotive.Items.LoadFromFile('motive.txt');
  ListMotive.ItemIndex := 0;
end;

end.
