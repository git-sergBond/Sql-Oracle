unit UnitEmployee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, OracleData;

type
  TFormEmployee = class(TForm)
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmployee: TFormEmployee;

implementation

{$R *.dfm}

end.
