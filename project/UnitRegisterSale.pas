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
    procedure ButtonFindUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegisterSale: TFormRegisterSale;

implementation

{$R *.dfm}

procedure TFormRegisterSale.ButtonFindUserClick(Sender: TObject);
const SEARCH_USER_SQL = 'select * from TRVL_CLIENT t;';
var
name, surname, patronymic, phone, userInfo : string;
begin
  with OracleDataSet1 do
  begin
    OracleDataSet1.Active:=false;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('select t.* from TRVL_CLIENT t');
    OracleDataSet1.Active:=true;

    ListBoxUsers.Clear;
    OracleDataSet1.First;
    while not OracleDataSet1.Eof do
    begin
      name:=OracleDataSet1.FieldValues['name'];
      surname:=OracleDataSet1.FieldValues['surname'];
      patronymic:=OracleDataSet1.FieldValues['patronymic'];
      phone:=OracleDataSet1.FieldValues['phone'];
      //userInfo:= name + ',' + surname + ',' + patronymic + ',' +  phone;
      //ListBoxUsers.Items.Add(userInfo);
      OracleDataSet1.Next;
    end;
 end;
end;

end.
