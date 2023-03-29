unit UnitClientEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, OracleData, StdCtrls,
  Mask, ComCtrls;

type
  TFormClientEditor = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    DBRichEdit1: TDBRichEdit;
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
