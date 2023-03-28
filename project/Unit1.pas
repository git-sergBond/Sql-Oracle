unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, DB, OracleData, StdCtrls, UnitClientEditor;

type
  TFormMain = class(TForm)
    OracleSession1: TOracleSession;
    OracleDataSet1: TOracleDataSet;
    OracleQuery1: TOracleQuery;
    ButtonBuyTour: TButton;
    ButtonTourEditor: TButton;
    ButtonSales: TButton;
    ButtonClientEditor: TButton;
    ButtonEmployeeEditor: TButton;
    ButtonRefundTour: TButton;
    ButtonRefundsEditor: TButton;
    DataSource1: TDataSource;
    procedure ButtonClientEditorClick(Sender: TObject);
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

end.
 