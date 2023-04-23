unit UnitRefundsEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFormRefunds = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    OracleDataSetView: TOracleDataSet;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    GroupBoxUpdate: TGroupBox;
    LabeledEditCount: TLabeledEdit;
    ButtonUpdate: TButton;
    ButtonCreateRefund: TButton;
    ButtonDelete: TButton;
    DBTextId: TDBText;
    Label1: TLabel;
    LabeledEditReason: TLabeledEdit;
    DBTextCount: TDBText;
    DBTextReason: TDBText;
    OracleDataSetUpdate: TOracleDataSet;
    OracleDataSetDelete: TOracleDataSet;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure ButtonUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRefunds: TFormRefunds;

implementation

{$R *.dfm}

procedure TFormRefunds.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  LabeledEditCount.Text := DBTextCount.Caption;
  LabeledEditReason.Text := DBTextReason.Caption;
end;

procedure TFormRefunds.ButtonDeleteClick(Sender: TObject);
var id : string;
begin
    id :=  DBTextId.Caption;
    OracleDataSetDelete.Active:=false;
    OracleDataSetDelete.SQL.Clear;
    OracleDataSetDelete.SQL.Add('DELETE FROM TRVL_REFUNDS t WHERE t.id = ');
    OracleDataSetDelete.SQL.Add(id);
    OracleDataSetDelete.ExecSQL;
    OracleDataSetDelete.Session.Commit;
    OracleDataSetDelete.Active:=true;

    OracleDataSetView.Active:=false;
    OracleDataSetView.SQL.Clear;
    OracleDataSetView.SQL.Add('select t.*, t.rowid from TRVL_REFUNDS t');
    OracleDataSetView.Active:=true;
end;

procedure TFormRefunds.ButtonUpdateClick(Sender: TObject);
var id : string;
begin
    id :=  DBTextId.Caption;
    OracleDataSetUpdate.Active:=false;
    OracleDataSetUpdate.SQL.Clear;
    OracleDataSetUpdate.SQL.Add('UPDATE TRVL_REFUNDS t SET');
    OracleDataSetUpdate.SQL.Add(' t."count" = ');
    OracleDataSetUpdate.SQL.Add(LabeledEditCount.Text);
    OracleDataSetUpdate.SQL.Add(',');
    OracleDataSetUpdate.SQL.Add(' reason = ');
    OracleDataSetUpdate.SQL.Add('''');
    OracleDataSetUpdate.SQL.Add(LabeledEditReason.Text);
    OracleDataSetUpdate.SQL.Add('''');
    OracleDataSetUpdate.SQL.Add(' WHERE t.id = ');
    OracleDataSetUpdate.SQL.Add(id);
    OracleDataSetUpdate.ExecSQL;
    OracleDataSetUpdate.Session.Commit;
    OracleDataSetUpdate.Active:=true;

    OracleDataSetView.Active:=false;
    OracleDataSetView.SQL.Clear;
    OracleDataSetView.SQL.Add('select t.*, t.rowid from TRVL_REFUNDS t');
    OracleDataSetView.Active:=true;
end;

end.
