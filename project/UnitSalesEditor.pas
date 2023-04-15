unit UnitSalesEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFormSales = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    ButtonBuyTour: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSales: TFormSales;

implementation

{$R *.dfm}

end.
