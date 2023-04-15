unit UnitRefundsEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFormRefunds = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRefunds: TFormRefunds;

implementation

{$R *.dfm}

end.
