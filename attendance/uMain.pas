unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    EditId: TEdit;
    LabelName: TLabel;
    LabelAddress1: TLabel;
    LabelAddress2: TLabel;
    LabelId: TLabel;
    LabelSelamat: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EditIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure Start;
    procedure CreateData(var GuestId: string);
    procedure SetConnection;
    function SearchGuest(var GuestId: string): Boolean;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  mgs: TMsg;

implementation

{$R *.dfm}

uses uDm, uKoneksi, uGuest;

const
  GUEST_PREFIX = 'TMD';

{ TMainForm }

procedure TMainForm.CreateData(var GuestId: string);
begin
  Application.CreateForm(TFormGuest, FormGuest);
  FormGuest.EditId.Text := GuestId;
  FormGuest.ShowModal;
end;

procedure TMainForm.EditIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  GuestId: string;
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);

    GuestId := EditId.Text;

    Start;

    if GuestId = '' then Exit;

    if not SearchGuest(GuestId) then
    begin
      if GuestId.StartsWith(GUEST_PREFIX, True) then
        CreateData(GuestId) else
        ShowMessage('ID yang Anda Masukkan Tidak ditemukan...');
    end;

  end;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  Start;
  if not(dm.CheckConnectionFile) then
    SetConnection;
end;

function TMainForm.SearchGuest(var GuestId: string): Boolean;
var
  LSql: string;
begin
  Result:= False;

  LSql := Format('SELECT id, name, address1, address2 FROM cb_guest ' +
    'WHERE id="%s" UNION ALL SELECT member_id, member_name, member_address, ' +
    'inst_name FROM member WHERE member_id="%s"', [GuestId, GuestId]);
  dm.Open( LSql );

  if dm.QSearch.RecordCount <> 0 then
  begin
    LabelId.Caption := dm.QSearch.FieldByName('id').AsString;
    LabelName.Caption := dm.QSearch.FieldByName('name').AsString;
    LabelAddress1.Caption := dm.QSearch.FieldByName('address1').AsString;
    LabelAddress2.Caption := dm.QSearch.FieldByName('address2').AsString;
    LabelSelamat.Visible := True;
    Result:= True;
  end;
end;

procedure TMainForm.SetConnection;
begin
  Application.CreateForm(TFormKoneksi, FormKoneksi);
  FormKoneksi.Show;
end;

procedure TMainForm.Start;
begin
  EditId.Clear;
  LabelId.Caption := '';
  LabelName.Caption := '';
  LabelAddress1.Caption := '';
  LabelAddress2.Caption := '';
  LabelSelamat.Visible := False;
end;

end.
