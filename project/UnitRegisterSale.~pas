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
    GroupBox2: TGroupBox;
    LabeledEditCount: TLabeledEdit;
    LabeledEditEmployeeId: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    LabeledEditCountry: TLabeledEdit;
    Button3: TButton;
    ListBoxTours: TListBox;
    Button4: TButton;
    LabelUserID: TLabel;
    LabelTourID: TLabel;
    Button5: TButton;
    procedure ButtonFindUserClick(Sender: TObject);
    procedure ButtonSelectUserClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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

procedure TFormRegisterSale.Button3Click(Sender: TObject);
var counntry, rowStr: string;
i : integer;
begin
  //READ FIELDS
  counntry := LabeledEditCountry.Text;

  //SELECT FROM DB
  with OracleDataSet1 do
  begin
    OracleDataSet1.Active:=false;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('select t.id, t.name as T_NAME, t.price, c."name" as C_NAME from TRVL_TOURS t ');
    OracleDataSet1.SQL.Add('left join TRVL_COUNTRY c ');
    OracleDataSet1.SQL.Add('on t.id_country = c.id ');
    OracleDataSet1.SQL.Add('where upper(c."name") like upper(');
    OracleDataSet1.SQL.Add('''%'+counntry+'%''');
    OracleDataSet1.SQL.Add(')');
    OracleDataSet1.Active:=true;

    ListBoxTours.Clear;
    i := 0;
    OracleDataSet1.First;
    while not OracleDataSet1.Eof do
    begin
      rowStr :=
      IntToStr(OracleDataSet1.FieldValues['id']) + '# ' +
      OracleDataSet1.FieldValues['T_NAME'] + ',' +
      IntToStr(OracleDataSet1.FieldValues['price']) + ' руб.,' +
      OracleDataSet1.FieldValues['C_NAME'];
      //
      ListBoxTours.Items.Add(rowStr);
      tourIdArray[i] := OracleDataSet1.FieldValues['id'];
      i := i + 1;
      //
      OracleDataSet1.Next;
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
  with OracleDataSet1 do
  begin
    OracleDataSet1.Active:=false;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('INSERT INTO TRVL_SALES ("date", "count", id_tour, id_client, id_employee)');
    OracleDataSet1.SQL.Add('VALUES (');
    OracleDataSet1.SQL.Add('CURRENT_TIMESTAMP');
    OracleDataSet1.SQL.Add(',');
    OracleDataSet1.SQL.Add(LabeledEditCount.Text);
    OracleDataSet1.SQL.Add(',');
    OracleDataSet1.SQL.Add(IntToStr(selectedTourId));
    OracleDataSet1.SQL.Add(',');
    OracleDataSet1.SQL.Add(IntToStr(selectedUserId));
    OracleDataSet1.SQL.Add(',');
    OracleDataSet1.SQL.Add(LabeledEditEmployeeId.Text);
    OracleDataSet1.SQL.Add(')');
    OracleDataSet1.ExecSQL;
    OracleDataSet1.Session.Commit;
    OracleDataSet1.Active:=true;
 end;
end;

procedure TFormRegisterSale.Button5Click(Sender: TObject);
begin
  with OracleDataSet1 do
  begin
    OracleDataSet1.Active:=false;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('INSERT INTO TRVL_SALES ("date", "count", id_tour, id_client, id_employee)');
    OracleDataSet1.SQL.Add('VALUES (');
    OracleDataSet1.SQL.Add('CURRENT_TIMESTAMP');
    OracleDataSet1.SQL.Add(',');
    OracleDataSet1.SQL.Add(LabeledEditCount.Text);
    OracleDataSet1.SQL.Add(',');
    OracleDataSet1.SQL.Add(IntToStr(selectedTourId));
    OracleDataSet1.SQL.Add(',');
    OracleDataSet1.SQL.Add(IntToStr(selectedUserId));
    OracleDataSet1.SQL.Add(',');
    OracleDataSet1.SQL.Add(LabeledEditEmployeeId.Text);
    OracleDataSet1.SQL.Add(')');
    OracleDataSet1.ExecSQL;
    OracleDataSet1.Session.Commit;
    OracleDataSet1.Active:=true;
 end;
end;

end.
