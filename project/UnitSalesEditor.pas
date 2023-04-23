unit UnitSalesEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, Grids, DBGrids, ExtCtrls, DBCtrls, UnitRegisterSale;

type
  TFormSales = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    ButtonBuyTour: TButton;
    ButtonDelete: TButton;
    GroupBoxUpdate: TGroupBox;
    LabeledEditCount: TLabeledEdit;
    ButtonUpdate: TButton;
    GroupBox1: TGroupBox;
    DBTextId: TDBText;
    Label1: TLabel;
    procedure ButtonBuyTourClick(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSales: TFormSales;

implementation

{$R *.dfm}

procedure TFormSales.ButtonBuyTourClick(Sender: TObject);
begin
FormRegisterSale.Show;
end;

procedure TFormSales.ButtonDeleteClick(Sender: TObject);
var id : string;
begin
    id :=  DBTextId.Caption;
    OracleDataSet1.Active:=false;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('DELETE FROM TRVL_SALES t WHERE t.id = ');
    OracleDataSet1.SQL.Add(id);
    OracleDataSet1.ExecSQL;
    OracleDataSet1.Session.Commit;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('select t.*, t.rowid from TRVL_SALES t');
    OracleDataSet1.Active:=true;
end;

end.
