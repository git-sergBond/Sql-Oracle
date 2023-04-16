unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, DB, OracleData, StdCtrls,
  UnitClientEditor, UnitEmployee, UnitToursEditor, UnitSalesEditor, UnitRefundsEditor,
  ComObj;

type
  TFormMain = class(TForm)
    OracleSession1: TOracleSession;
    OracleQuery1: TOracleQuery;
    ButtonTourEditor: TButton;
    ButtonSales: TButton;
    ButtonClientEditor: TButton;
    ButtonEmployeeEditor: TButton;
    ButtonRefundsEditor: TButton;
    Button1: TButton;
    OracleDataSetTours1: TOracleDataSet;
    procedure ButtonClientEditorClick(Sender: TObject);
    procedure ButtonEmployeeEditorClick(Sender: TObject);
    procedure ButtonTourEditorClick(Sender: TObject);
    procedure ButtonSalesClick(Sender: TObject);
    procedure ButtonRefundsEditorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.ButtonClientEditorClick(Sender: TObject);
begin
  FormClientEditor.Show;
end;

procedure TFormMain.ButtonEmployeeEditorClick(Sender: TObject);
begin
  FormEmployee.Show;
end;

procedure TFormMain.ButtonTourEditorClick(Sender: TObject);
begin
  FormTours.Show;
end;

procedure TFormMain.ButtonSalesClick(Sender: TObject);
begin
 FormSales.Show;
end;

procedure TFormMain.ButtonRefundsEditorClick(Sender: TObject);
begin
  FormRefunds.Show;
end;

procedure TFormMain.Button1Click(Sender: TObject);
Var
XL, Colum: variant;
SH , Cell : olevariant;
i,j,k: integer;
begin
  XL:= createOLEobject('Excel.application'); //������� ������ ���� Excel
  XL.Visible:=true; //�������, ��� �� ����� ����� ������������
  XL.Workbooks.Add(-4167); //��������� ����� ���. �����
  XL.Workbooks[1].WorkSheets[1].Name:='�������� �� �����';
  //�������� ������� �����
  Cell:=XL.Workbooks[1].WorkSheets['�������� �� �����']; //�������� �������� � �������
  SH:= XL.WorkSheets['�������� �� �����']; //����������� � ������������

//� ����� ����� ������ Cells ������� ��������� ����� ������ ����� �������
Cell.Cells[3,3]:='���� ��������:';
Cell.Cells[3,4]:=DateToStr(date);
//������������� � ��������
Colum:=XL.Workbooks[1].WorkSheets['�������� �� �����'].Columns;
//������������� ������
Colum.Columns[1].ColumnWidth:=5;
Colum.Columns[2].ColumnWidth:=5;
Colum.Columns[3].ColumnWidth:=70;
Colum.Columns[4].ColumnWidth:=15;
Colum.Columns[5].ColumnWidth:=20;
///������ �����
//1 �������
SH.Range['A6'].Borders.LineStyle := 1;
SH.Range['A6'].Borders.Weight:= -4138;
SH.Range['A6'].VerticalAlignment:=-4108;
SH.Range['A6'].HorizontalAlignment:=-4108;
SH.Range['A6']:='No.';
SH.Range['A6'].Font.Size:=11;
SH.Range['A6'].Font.Color:=clBlue;
//2 �������
SH.Range['B6'].Borders.LineStyle := 1;
SH.Range['B6'].Borders.Weight:= -4138;
SH.Range['B6'].VerticalAlignment:=-4108;
SH.Range['B6'].HorizontalAlignment:=-4108;
SH.Range['B6']:='ID';
SH.Range['B6'].Font.Size:=11.5;
SH.Range['B6'].Font.Color:=clRed;
//3 �������
SH.Range['C6'].Borders.LineStyle := 1;
SH.Range['C6'].Borders.Weight:= -4138;
SH.Range['C6'].VerticalAlignment:=-4108;
SH.Range['C6'].HorizontalAlignment:=-4108;
SH.Range['C6']:='��������';
//4 �������
SH.Range['D6'].Borders.LineStyle := 1;
SH.Range['D6'].Borders.Weight:= -4138;
SH.Range['D6'].VerticalAlignment:=-4108;
SH.Range['D6'].HorizontalAlignment:=-4108;
SH.Range['D6']:='��������� (���)';
//5 �������
SH.Range['E6'].Borders.LineStyle := 1;
SH.Range['E6'].Borders.Weight:= -4138;
SH.Range['E6'].VerticalAlignment:=-4108;
SH.Range['E6'].HorizontalAlignment:=-4108;
SH.Range['E6']:='���� ��������';
i:=6; //������ �� ���� � 5 ������
j:=0;//������ �������
OracleDataSetTours1.First;
While not OracleDataSetTours1.Eof do
begin
  inc(i);
  inc(j);
  ///������ �����
  for k:=1 to 5 do
  begin
    Cell.Cells[i,1].Font.Bold:=true; //������ ����
    Cell.Cells[i,k].Borders.LineStyle:= 1; //������ ������ �����
    Cell.Cells[i,k].Borders[10].LineStyle:= 1;
    Cell.Cells[i,k].Borders[10].Weight:= -4138;
  end;
  ///////////////
  Cell.Cells[i,1]:=intToStr(j);
  Cell.Cells[i,2]:=OracleDataSetTours1.FieldValues['ID'];
  Cell.Cells[i,3]:= OracleDataSetTours1.FieldValues['NAME'];
  Cell.Cells[i,4]:= OracleDataSetTours1.FieldValues['PRICE'];
  Cell.Cells[i,5]:= OracleDataSetTours1.FieldValues['DEPARTURE_DATE'];
  OracleDataSetTours1.Next;
end;
end;
end.
