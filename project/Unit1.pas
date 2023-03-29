unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, DB, OracleData, StdCtrls, UnitClientEditor, UnitEmployee;

type
  TFormMain = class(TForm)
    OracleSession1: TOracleSession;
    OracleQuery1: TOracleQuery;
    ButtonBuyTour: TButton;
    ButtonTourEditor: TButton;
    ButtonSales: TButton;
    ButtonClientEditor: TButton;
    ButtonEmployeeEditor: TButton;
    ButtonRefundTour: TButton;
    ButtonRefundsEditor: TButton;
    procedure ButtonClientEditorClick(Sender: TObject);
    procedure ButtonEmployeeEditorClick(Sender: TObject);
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

end.
 