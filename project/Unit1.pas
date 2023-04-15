unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, DB, OracleData, StdCtrls, UnitClientEditor, UnitEmployee, UnitToursEditor, UnitSalesEditor, UnitRefundsEditor;

type
  TFormMain = class(TForm)
    OracleSession1: TOracleSession;
    OracleQuery1: TOracleQuery;
    ButtonTourEditor: TButton;
    ButtonSales: TButton;
    ButtonClientEditor: TButton;
    ButtonEmployeeEditor: TButton;
    ButtonRefundsEditor: TButton;
    procedure ButtonClientEditorClick(Sender: TObject);
    procedure ButtonEmployeeEditorClick(Sender: TObject);
    procedure ButtonTourEditorClick(Sender: TObject);
    procedure ButtonSalesClick(Sender: TObject);
    procedure ButtonRefundsEditorClick(Sender: TObject);
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

end.
 