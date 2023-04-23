unit UnitCreateRefund;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, ExtCtrls;

type
  TFormCreateRefund = class(TForm)
    GroupBox1: TGroupBox;
    LabelUserID: TLabel;
    LabeledEditPasportNo: TLabeledEdit;
    LabeledEditPasportSer: TLabeledEdit;
    ButtonSelectUser: TButton;
    ButtonFindUser: TButton;
    ListBoxUsers: TListBox;
    GroupBox2: TGroupBox;
    LabeledEditCount: TLabeledEdit;
    ButtonCreate: TButton;
    LabeledEditEmployeeId: TLabeledEdit;
    GroupBox3: TGroupBox;
    LabelTourID: TLabel;
    ListBoxSales: TListBox;
    Button4: TButton;
    OracleDataSetInsert: TOracleDataSet;
    OracleDataSetViewUser: TOracleDataSet;
    OracleDataSetViewSale: TOracleDataSet;
    LabeledEditReason: TLabeledEdit;
    procedure ButtonFindUserClick(Sender: TObject);
    procedure ButtonSelectUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCreateRefund: TFormCreateRefund;
  userIdArray : array[0..100] of integer;
  saleIdArray : array[0..100] of integer;
  selectedUserId : integer;
  selectedSaleId : integer;

implementation

{$R *.dfm}

procedure TFormCreateRefund.ButtonFindUserClick(Sender: TObject);
var pasportSer, pasportNo, userInfo: string;
i : integer;
begin
  //READ FIELDS
  pasportSer := LabeledEditPasportSer.Text;
  pasportNo := LabeledEditPasportNo.Text;

  //SELECT USER FROM DB
  with OracleDataSetViewUser do
  begin
    OracleDataSetViewUser.Active:=false;
    OracleDataSetViewUser.SQL.Clear;
    OracleDataSetViewUser.SQL.Add('select t.* from TRVL_CLIENT t ');
    OracleDataSetViewUser.SQL.Add('where t. passport LIKE ');
    OracleDataSetViewUser.SQL.Add('''%'+pasportSer+'%'+pasportNo+'%''');
    OracleDataSetViewUser.Active:=true;

    ListBoxUsers.Clear;
    i := 0;
    OracleDataSetViewUser.First;
    while not OracleDataSetViewUser.Eof do
    begin
      userInfo :=
      IntToStr(OracleDataSetViewUser.FieldValues['id']) + '# ' +
      OracleDataSetViewUser.FieldValues['name'] + ',' +
      OracleDataSetViewUser.FieldValues['surname'] + ',' +
      OracleDataSetViewUser.FieldValues['patronymic'] + ',' +
      OracleDataSetViewUser.FieldValues['phone'];
      //
      ListBoxUsers.Items.Add(userInfo);
      userIdArray[i] := OracleDataSetViewUser.FieldValues['id'];
      i := i + 1;
      //
      OracleDataSetViewUser.Next;
    end;
 end;
end;

procedure TFormCreateRefund.ButtonSelectUserClick(Sender: TObject);
var index : integer;
saleInfo: string;
i : integer;
begin
index := ListBoxUsers.ItemIndex;
selectedUserId := userIdArray[index];
LabelUserID.Caption := 'Client ID: ' + IntToStr(selectedUserId);


//SELECT SALE FROM DB
  with OracleDataSetViewSale do
  begin
    OracleDataSetViewSale.Active:=false;
    OracleDataSetViewSale.SQL.Clear;
    OracleDataSetViewSale.SQL.Add('select t.* from TRVL_SALES t ');
    OracleDataSetViewSale.SQL.Add('where t.id_client = ');
    OracleDataSetViewSale.SQL.Add(IntToStr(selectedUserId));
    OracleDataSetViewSale.Active:=true;

    ListBoxSales.Clear;
    i := 0;
    OracleDataSetViewSale.First;
    while not OracleDataSetViewSale.Eof do
    begin
      saleInfo :=
      IntToStr(OracleDataSetViewSale.FieldValues['id']) + '# ' +
      DateTimeToStr(OracleDataSetViewSale.FieldValues['date']) + ', ' +
      '�������: ' + IntToStr(OracleDataSetViewSale.FieldValues['count']) + ', ' +
      'ID ����: ' + IntToStr(OracleDataSetViewSale.FieldValues['id_tour']);
      //
      ListBoxSales.Items.Add(saleInfo);
      saleIdArray[i] := OracleDataSetViewSale.FieldValues['id'];
      i := i + 1;
      //
      OracleDataSetViewSale.Next;
    end;
 end;
end;

end.
