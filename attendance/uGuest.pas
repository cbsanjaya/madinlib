unit uGuest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormGuest = class(TForm)
    EditId: TLabeledEdit;
    EditName: TLabeledEdit;
    GroupGender: TRadioGroup;
    EditAddress1: TLabeledEdit;
    EditAddress2: TLabeledEdit;
    EditEmail: TLabeledEdit;
    EditTelephone: TLabeledEdit;
    Panel1: TPanel;
    ButtonSave: TButton;
    ButtonClose: TButton;
    procedure ButtonSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGuest: TFormGuest;

implementation

{$R *.dfm}

uses uDm;

procedure TFormGuest.ButtonSaveClick(Sender: TObject);
var
  LSql, LGender: string;
begin
  if GroupGender.ItemIndex = 0 then
    LGender := 'M' else LGender := 'F';

  LSql:= Format('INSERT INTO cb_guest (id, name, gender, address1, address2, email, phone) ' +
    'VALUES ("%s", "%s", "%s", "%s", "%s", "%s", "%s")', [EditId.Text, EditName.Text, LGender,
    EditAddress1.Text, EditAddress2.Text, EditEmail.Text, EditTelephone.Text]);
  try
    dm.Execute( LSql );
    ShowMessage('Penyimpanan Data Pengunjung Berhasil.');
  except
    on E: exception do
    begin
      messagedlg('proses penyimpanan gagal,ulangi lagi!!! '#10#13'' + e.Message,
        mterror, [mbOk], 0);
    end;
  end;
end;

procedure TFormGuest.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
end;

end.
