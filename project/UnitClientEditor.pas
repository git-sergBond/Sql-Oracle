unit UnitClientEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, OracleData;

type
  TFormClientEditor = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientEditor: TFormClientEditor;

implementation

uses Unit1;

{$R *.dfm}

end.
