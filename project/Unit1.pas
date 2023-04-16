unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, DB, OracleData, StdCtrls,
  UnitClientEditor, UnitEmployee, UnitToursEditor, UnitSalesEditor, UnitRefundsEditor,
  ComObj, frxChart, frxClass, frxDBSet;

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
    Button2: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    OracleDataSetTopTours1: TOracleDataSet;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    procedure ButtonClientEditorClick(Sender: TObject);
    procedure ButtonEmployeeEditorClick(Sender: TObject);
    procedure ButtonTourEditorClick(Sender: TObject);
    procedure ButtonSalesClick(Sender: TObject);
    procedure ButtonRefundsEditorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  XL:= createOLEobject('Excel.application'); //Создаем объект типа Excel
  XL.Visible:=true; //Говорим, что он будет виден пользователю
  XL.Workbooks.Add(-4167); //Добавляем новую раб. книгу
  XL.Workbooks[1].WorkSheets[1].Name:='Выгрузка по турам';
  //Называем рабочую книгу
  Cell:=XL.Workbooks[1].WorkSheets['Выгрузка по турам']; //Получаем привязку к ячейкам
  SH:= XL.WorkSheets['Выгрузка по турам']; //Привязываем к рабочейкниге

//А можем через ячейки Cells сначала указываем номер строки потом столбца
Cell.Cells[3,3]:='Дата выгрузки:';
Cell.Cells[3,4]:=DateToStr(date);
//Привязываемся к столбцам
Colum:=XL.Workbooks[1].WorkSheets['Выгрузка по турам'].Columns;
//Устанавливаем ширины
Colum.Columns[1].ColumnWidth:=5;
Colum.Columns[2].ColumnWidth:=5;
Colum.Columns[3].ColumnWidth:=70;
Colum.Columns[4].ColumnWidth:=15;
Colum.Columns[5].ColumnWidth:=20;
///Рисуем шапку
//1 столбец
SH.Range['A6'].Borders.LineStyle := 1;
SH.Range['A6'].Borders.Weight:= -4138;
SH.Range['A6'].VerticalAlignment:=-4108;
SH.Range['A6'].HorizontalAlignment:=-4108;
SH.Range['A6']:='No.';
SH.Range['A6'].Font.Size:=11;
SH.Range['A6'].Font.Color:=clBlue;
//2 столбец
SH.Range['B6'].Borders.LineStyle := 1;
SH.Range['B6'].Borders.Weight:= -4138;
SH.Range['B6'].VerticalAlignment:=-4108;
SH.Range['B6'].HorizontalAlignment:=-4108;
SH.Range['B6']:='ID';
SH.Range['B6'].Font.Size:=11.5;
SH.Range['B6'].Font.Color:=clRed;
//3 столбец
SH.Range['C6'].Borders.LineStyle := 1;
SH.Range['C6'].Borders.Weight:= -4138;
SH.Range['C6'].VerticalAlignment:=-4108;
SH.Range['C6'].HorizontalAlignment:=-4108;
SH.Range['C6']:='Название';
//4 столбец
SH.Range['D6'].Borders.LineStyle := 1;
SH.Range['D6'].Borders.Weight:= -4138;
SH.Range['D6'].VerticalAlignment:=-4108;
SH.Range['D6'].HorizontalAlignment:=-4108;
SH.Range['D6']:='Стоимость (Руб)';
//5 столбец
SH.Range['E6'].Borders.LineStyle := 1;
SH.Range['E6'].Borders.Weight:= -4138;
SH.Range['E6'].VerticalAlignment:=-4108;
SH.Range['E6'].HorizontalAlignment:=-4108;
SH.Range['E6']:='Дата отправки';
i:=6; //Грузим из базы с 5 строки
j:=0;//Просто счетчик
OracleDataSetTours1.First;
While not OracleDataSetTours1.Eof do
begin
  inc(i);
  inc(j);
  ///Рисуем рамки
  for k:=1 to 5 do
  begin
    Cell.Cells[i,1].Font.Bold:=true; //Жирный цвет
    Cell.Cells[i,k].Borders.LineStyle:= 1; //Рисуем тонкую рамку
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
procedure TFormMain.Button2Click(Sender: TObject);
begin
frxReport1.ShowReport;
end;

// Функция находит текстовую константу и подставляет на ее место нужный текст
function FindAndInsert(W : variant; FindText, ReplacementText : string) : boolean;
const wdReplaceAll=2;
begin
W.Selection.Find.Text:=FindText;
W.Selection.Find.Replacement.Text:=ReplacementText;
FindAndInsert:=W.Selection.Find.Execute(Replace:=wdReplaceAll);
End;

procedure TFormMain.Button3Click(Sender: TObject);
VAR
W:variant;
begin
W:=CreateOleObject('Word.Application');
W.Visible:=true;
W.documents.Add(ExtractFileDir(Application.ExeName)+'\Doc1.doc');
//открываем файл шаблона
FindAndInsert(W, '##Edit1', Edit1.Text); // Меняем слово ##Edit1 на шаблоне на нужную нам фразу
FindAndInsert(W, '##Edit2', Edit2.Text);
FindAndInsert(W, '##Edit3', Edit3.Text);
FindAndInsert(W, '##Edit4', Edit4.Text);
end;

end.
