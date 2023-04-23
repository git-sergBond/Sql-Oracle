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
    OracleDataSetEdit: TOracleDataSet;
    GroupBox2: TGroupBox;
    LabeledEditCount: TLabeledEdit;
    LabeledEditEmployeeId: TLabeledEdit;
    Button1: TButton;
    GroupBox3: TGroupBox;
    LabeledEditCountry: TLabeledEdit;
    Button3: TButton;
    ListBoxTours: TListBox;
    Button4: TButton;
    LabelUserID: TLabel;
    LabelTourID: TLabel;
    OracleDataSetView: TOracleDataSet;
    procedure ButtonFindUserClick(Sender: TObject);
    procedure ButtonSelectUserClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegisterSale: TFormRegisterSale;
  userIdArray : array[0..100] of integer;
  tourIdArray : array[0..100] of integer;
  selectedUserId : integer;
  selectedTourId : integer;

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
  with OracleDataSetView do
  begin
    OracleDataSetView.Active:=false;
    OracleDataSetView.SQL.Clear;
    OracleDataSetView.SQL.Add('select t.* from TRVL_CLIENT t ');
    OracleDataSetView.SQL.Add('where t. passport LIKE ');
    OracleDataSetView.SQL.Add('''%'+pasportSer+'%'+pasportNo+'%''');
    OracleDataSetView.Active:=true;

    ListBoxUsers.Clear;
    i := 0;
    OracleDataSetView.First;
    while not OracleDataSetView.Eof do
    begin
      userInfo :=
      IntToStr(OracleDataSetView.FieldValues['id']) + '# ' +
      OracleDataSetView.FieldValues['name'] + ',' +
      OracleDataSetView.FieldValues['surname'] + ',' +
      OracleDataSetView.FieldValues['patronymic'] + ',' +
      OracleDataSetView.FieldValues['phone'];
      //
      ListBoxUsers.Items.Add(userInfo);
      userIdArray[i] := OracleDataSetView.FieldValues['id'];
      i := i + 1;
      //
      OracleDataSetView.Next;
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

procedure TFormRegisterSale.Button3Click(Sender: TObject);
var counntry, rowStr: string;
i : integer;
begin
  //READ FIELDS
  counntry := LabeledEditCountry.Text;

  //SELECT FROM DB
  with OracleDataSetView do
  begin
    OracleDataSetView.Active:=false;
    OracleDataSetView.SQL.Clear;
    OracleDataSetView.SQL.Add('select t.id, t.name as T_NAME, t.price, c."name" as C_NAME from TRVL_TOURS t ');
    OracleDataSetView.SQL.Add('left join TRVL_COUNTRY c ');
    OracleDataSetView.SQL.Add('on t.id_country = c.id ');
    OracleDataSetView.SQL.Add('where upper(c."name") like upper(');
    OracleDataSetView.SQL.Add('''%'+counntry+'%''');
    OracleDataSetView.SQL.Add(')');
    OracleDataSetView.Active:=true;

    ListBoxTours.Clear;
    i := 0;
    OracleDataSetView.First;
    while not OracleDataSetView.Eof do
    begin
      rowStr :=
      IntToStr(OracleDataSetView.FieldValues['id']) + '# ' +
      OracleDataSetView.FieldValues['T_NAME'] + ',' +
      IntToStr(OracleDataSetView.FieldValues['price']) + ' руб.,' +
      OracleDataSetView.FieldValues['C_NAME'];
      //
      ListBoxTours.Items.Add(rowStr);
      tourIdArray[i] := OracleDataSetView.FieldValues['id'];
      i := i + 1;
      //
      OracleDataSetView.Next;
    end;
 end;
end;

procedure TFormRegisterSale.Button4Click(Sender: TObject);
var index : integer;
begin
index := ListBoxTours.ItemIndex;
selectedTourId := tourIdArray[index];
LabelTourID.Caption := 'Tour ID: ' + IntToStr(selectedTourId);
end;

procedure TFormRegisterSale.Button1Click(Sender: TObject);
begin
  with OracleDataSetEdit do
  begin
    OracleDataSetEdit.Active:=false;
    OracleDataSetEdit.SQL.Clear;
    OracleDataSetEdit.SetVariable('V_COUNT', StrToInt(LabeledEditCount.Text));
    OracleDataSetEdit.SetVariable('V_ID_TOUR', selectedTourId);
    OracleDataSetEdit.SetVariable('V_ID_CLIENT', selectedUserId);
    OracleDataSetEdit.SetVariable('V_ID_EMPLOYEE', StrToInt(LabeledEditEmployeeId.Text));
    OracleDataSetEdit.SQL.Add('INSERT INTO TRVL_SALES ("date", "count", id_tour, id_client, id_employee)');
    OracleDataSetEdit.SQL.Add('VALUES (CURRENT_TIMESTAMP, :V_COUNT, :V_ID_TOUR, :V_ID_CLIENT, :V_ID_EMPLOYEE)');
    OracleDataSetEdit.Session.Commit;
    OracleDataSetEdit.Active:=true;
 end;
end;

end.

