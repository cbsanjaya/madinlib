unit uKoneksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormKoneksi = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edServer: TEdit;
    edDatabase: TEdit;
    edUserName: TEdit;
    edPassword: TEdit;
    btnTes: TButton;
    EdPort: TEdit;
    procedure btnTesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKoneksi: TFormKoneksi;

implementation

{$R *.dfm}

uses uDm;

procedure TFormKoneksi.btnTesClick(Sender: TObject);
var
  LCon : TConnection;
  LConnected: Boolean;
begin
  LCon := TConnection.Create(
    edUserName.Text,
    edPassword.Text,
    edServer.Text,
    edDatabase.Text,
    EdPort.Text
  );
  try
    if dm.CheckConnection(LCon) then
    begin
      LCon.SaveToFile;
      ShowMessage('Koneksi Berhasi dan Berhasil disimpan.');
      LConnected:= True;
    end else
    begin
      ShowMessage('Koneksi Tidak Berhasil, Ulangi Lagi.');
    end;
  finally
    LCon.Free;
  end;

  if LConnected then Close;
end;

end.
