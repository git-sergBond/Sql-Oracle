unit UnitRegisterSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, OracleData;

type
  TFormRegisterSale = class(TForm)
    GroupBox1: TGroupBox;
    ButtonFindUser: TButton;
    LabeledEditPasportNo: TLabeledEdit;
    LabeledEditPasportSer: TLabeledEdit;
    ListBoxUsers: TListBox;
    ButtonSelectUser: TButton;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    LabeledEdit4: TLabeledEdit;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    LabelUserID: TLabel;
    procedure ButtonFindUserClick(Sender: TObject);
    procedure ButtonSelectUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegisterSale: TFormRegisterSale;
  userIdArray : array[0..100] of integer;
  selectedUserId : integer;

implementation

{$R *.dfm}

procedure TFormRegisterSale.ButtonFindUserClick(Sender: TObject);
var pasportSer, pasportNo, userInfo: string;
i : integer;
begin
  //READ FIELDS
  pasportSer := LabeledEditPasportSer.Text;
  pasportNo := LabeledEditPasportNo.Text;

  //SELECT FROM DB
  with OracleDataSet1 do
  begin
    OracleDataSet1.Active:=false;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('select t.* from TRVL_CLIENT t ');
    OracleDataSet1.SQL.Add('where t. passport LIKE ');
    OracleDataSet1.SQL.Add('''%'+pasportSer+'%'+pasportNo+'%''');
    OracleDataSet1.Active:=true;

    ListBoxUsers.Clear;
    i := 0;
    OracleDataSet1.First;
    while not OracleDataSet1.Eof do
    begin
      userInfo :=
      IntToStr(OracleDataSet1.FieldValues['id']) + '# ' +
      OracleDataSet1.FieldValues['name'] + ',' +
      OracleDataSet1.FieldValues['surname'] + ',' +
      OracleDataSet1.FieldValues['patronymic'] + ',' +
      OracleDataSet1.FieldValues['phone'];
      //
      ListBoxUsers.Items.Add(userInfo);
      userIdArray[i] := OracleDataSet1.FieldValues['id'];
      i := i + 1;
      //
      OracleDataSet1.Next;
    end;
 end;
end;

procedure TFormRegisterSale.ButtonSelectUserClick(Sender: TObject);
var index : integer;
begin
index := ListBoxUsers.ItemIndex;
selectedUserId := userIdArray[index];
LabelUserID.Caption := 'Client ID: ' + IntToStr(selectedUserId);
end;

end.
