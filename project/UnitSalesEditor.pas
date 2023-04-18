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
    procedure ButtonBuyTourClick(Sender: TObject);
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

end.
