unit uDm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS;

type
  TConnection = class
  private
    FUser: string;
    FPassword: string;
    FHost: string;
    FDatabase: string;
    FPort: string;
    function Secure(const s: string; Crypt: Boolean = True): string;
  public
    constructor Create(AUser, APassword, AHost, ADatabase, APort: string); overload;
    constructor Create(AFile: string); overload;
    function AsConnectionString: string;
    procedure SaveToFile;
  end;

  Tdm = class(TDataModule)
    Conn: TMyConnection;
    QSearch: TMyQuery;
  private
    { Private declarations }
  public
    function Open(ASql: string):TMyQuery;
    function GetConnectionString(AUser: string; APassword: string;
      AHost: string; ADatabase: string; APort: Integer): string;
    function CheckConnectionFile: Boolean;
    function CheckConnection(AConnection: TConnection): Boolean;
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

const
  CONNECTION_FILE = 'mydb.Conn';

function Tdm.CheckConnection(AConnection: TConnection): Boolean;
begin
  Result := False;
  try
    Conn.Connected := False;
    Conn.ConnectString := AConnection.AsConnectionString;
    Conn.Connected := true;
    Result := True;
  except
    on E: Exception do
    begin
      Conn.Connected := False;
    end;
  end;
end;

function Tdm.CheckConnectionFile: Boolean;
var
  LConnection: TConnection;
begin
  if not(FileExists(CONNECTION_FILE)) then Exit(False);

  LConnection := TConnection.Create(CONNECTION_FILE);
  try
    Result := CheckConnection(LConnection)
  finally
    LConnection.Free;
  end;
end;

function Tdm.GetConnectionString(AUser, APassword, AHost, ADatabase: string;
  APort: Integer): string;
begin
  Result := Format('User ID=%s;Password=%s;Data Source=%s;Database=%s;Port=%d;Login Prompt=False',
    [AUser, APassword, AHost, ADatabase, APort]);
end;

function Tdm.Open(ASql: string): TMyQuery;
begin
  QSearch.SQL.Text := ASql;
  QSearch.Open;
  Result := QSearch;
end;

{ TConnection }

constructor TConnection.Create(AUser, APassword, AHost, ADatabase, APort: string);
begin
  FUser := AUser;
  FPassword := APassword;
  FHost := AHost;
  FDatabase := ADatabase;
  FPort := APort;
end;

constructor TConnection.Create(AFile: string);
var
  LFile: TextFile;
  LUser, LPassword, LHost, LDatabase, LPort: string;
begin
  AssignFile(LFile, AFile);
  Reset(LFile);
  Readln(LFile, LUser);
  Readln(LFile, LPassword);
  Readln(LFile, LHost);
  Readln(LFile, LDatabase);
  Readln(LFile, LPort);
  CloseFile(LFile);

  FUser := Secure(LUser, False);
  FPassword := Secure(LPassword, False);
  FHost := Secure(LHost, False);
  FDatabase := Secure(LDatabase, False);
  FPort := Secure(LPort, False);
end;

procedure TConnection.SaveToFile;
var
  LFile: TextFile;
  LUser, LPassword, LHost, LDatabase, LPort: string;
begin
  LUser := Secure(FUser);
  LPassword := Secure(FPassword);
  LHost := Secure(FHost);
  LDatabase := Secure(FDatabase);
  LPort := Secure(FPort);

  AssignFile(LFile, CONNECTION_FILE);
  Rewrite(LFile);
  Writeln(LFile, LUser);
  Writeln(LFile, LPassword);
  Writeln(LFile, LHost);
  Writeln(LFile, LDatabase);
  Writeln(LFile, LPort);
  closefile(LFile);
end;

function TConnection.Secure(const s: string; Crypt: Boolean): string;
var
  i: integer;
  s2: string;
begin
  if not (Length(s) = 0) then
    for i := 1 to Length(s) do
      begin
        if Crypt then
          s2 := s2 + Chr(Ord(s[i]) + 9) else
          s2 := s2 + Chr(Ord(s[i]) - 9);
      end;
  Result := s2;
end;

function TConnection.AsConnectionString: string;
begin
  Result := Format('User ID=%s;Password=%s;Data Source=%s;Database=%s;Port=%s;Login Prompt=False',
    [FUser, FPassword, FHost, FDatabase, FPort]);
end;

end.
