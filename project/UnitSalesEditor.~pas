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
    DBTextCount: TDBText;
    OracleDataSetDelete: TOracleDataSet;
    OracleDataSetUpdate: TOracleDataSet;
    procedure ButtonBuyTourClick(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure ButtonUpdateClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
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
    id := DBTextId.Caption;
    OracleDataSetDelete.Active:=false;
    OracleDataSetDelete.SQL.Clear;
    OracleDataSetDelete.SetVariable('V_ID', StrToInt(id));
    OracleDataSetDelete.SQL.Add('DELETE FROM TRVL_SALES t WHERE t.id = :V_ID');
    OracleDataSetDelete.ExecSQL;
    OracleDataSetDelete.Session.Commit;
    OracleDataSetDelete.Active:=true;

    OracleDataSet1.Active:=false;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('select t.*, t.rowid from TRVL_SALES t');
    OracleDataSet1.Active:=true;
end;

procedure TFormSales.ButtonUpdateClick(Sender: TObject);
var id : string;
begin
    id :=  DBTextId.Caption;
    OracleDataSetUpdate.Active:=false;
    OracleDataSetUpdate.SQL.Clear;
    OracleDataSetUpdate.SetVariable('V_ID', StrToInt(id));
    OracleDataSetUpdate.SetVariable('V_COUNT', StrToInt(LabeledEditCount.Text));
    OracleDataSetUpdate.SQL.Add('UPDATE TRVL_SALES t');
    OracleDataSetUpdate.SQL.Add(' SET t."count" = :V_COUNT');
    OracleDataSetUpdate.SQL.Add(' WHERE t.id = :V_ID');
    OracleDataSetUpdate.ExecSQL;
    OracleDataSetUpdate.Session.Commit;
    OracleDataSetUpdate.Active:=true;

    OracleDataSet1.Active:=false;
    OracleDataSet1.SQL.Clear;
    OracleDataSet1.SQL.Add('select t.*, t.rowid from TRVL_SALES t');
    OracleDataSet1.Active:=true;
end;

procedure TFormSales.DataSource1DataChange(Sender: TObject; Field: TField);
begin
LabeledEditCount.Text := DBTextCount.Caption;
end;

end.
