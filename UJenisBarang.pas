unit UJenisBarang;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  UInduk,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList,
  Vcl.StdCtrls,
  Vcl.Mask;

type
  TfJenisBarang = class(TfInduk)
    nama: TLabeledEdit;
    username: TLabeledEdit;
    Button2: TButton;
    Button3: TButton;
    password: TLabeledEdit;
    procedure TampilDataExecute(Sender: TObject);
    procedure InsertExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure UpdateExecute(Sender: TObject);
  private
    { Private declarations }
    fStsUpdate: Boolean;
  public
    { Public declarations }
  end;

var
  fJenisBarang: TfJenisBarang;

implementation

{$R *.dfm}

uses UDM;

procedure TfJenisBarang.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  { Flag Insert or Update }
  fStsUpdate := True;
  with UniStoredProc1 do
  begin
    nama.Text := FieldByName('nama').AsString;
    username.Text := FieldByName('username').AsString;
    password.Text := FieldByName('password').AsString;
  end;
end;

procedure TfJenisBarang.DeleteExecute(Sender: TObject);
begin
  inherited;
  /// Delete Data
  with UniStoredProc1 do
  begin

    case MessageDlg('Apakah Anda Yakin Ingin Menghapus? ', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) of
      mrYes:
        Delete;
      mrNo:
        ;
    end;

  end;
end;

procedure TfJenisBarang.InsertExecute(Sender: TObject);
begin
  inherited;

  if fStsUpdate = True then
  begin
    // Update Data
    with dm.UniStoredProc1 do
    begin
      sql.Clear;
      CreateProcCall('datamahasiswa1_update');
      ParamByName('pnama').AsString := nama.Text;
      ParamByName('pusername').AsString := username.Text;
       ParamByName('ppassword').AsString := password.Text;
      Execute;

      TampilDataExecute(Sender);
    end;

    nama.Clear;
    username.Clear;
    password.Clear;
    fStsUpdate := False;
  end
  else
  begin
    // Insert Data To Database.
    with dm.UniStoredProc1 do
    begin
      sql.Clear;
      CreateProcCall('datamahasiswa1_insert');
      ParamByName('Pnama').AsString := nama.Text;
      ParamByName('pusername').AsString := username.Text;
      ParamByName('ppassword').AsString := password.Text;
      Execute;
      { message }
      MessageDlg('Data Berhasil disimpan', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes], 0);
      { Refresh }
      TampilDataExecute(Sender);
    end;
  end;
end;

procedure TfJenisBarang.TampilDataExecute(Sender: TObject);
begin
  inherited;
  with UniStoredProc1 do
  begin
    sql.Clear;
    CreateProcCall('datamahasiswa1_view');
    ExecProc;
  end;
  { FitGrid }
  dm.FitGrid(DBGrid1);

end;

procedure TfJenisBarang.UpdateExecute(Sender: TObject);
begin
  inherited;
  { Flag Insert or Update }
  fStsUpdate := True;
  with UniStoredProc1 do
  begin
    nama.Text := FieldByName('nama').AsString;
    username.Text := FieldByName('username').AsString;
    password.Text := FieldByName('password').AsString;

    Nama.SetFocus;
  end;
end;

end.
