program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormMain},
  UnitClientEditor in 'UnitClientEditor.pas' {FormClientEditor},
  UnitEmployee in 'UnitEmployee.pas' {FormEmployee},
  UnitToursEditor in 'UnitToursEditor.pas' {FormTours},
  UnitSalesEditor in 'UnitSalesEditor.pas' {FormSales},
  UnitRefundsEditor in 'UnitRefundsEditor.pas' {FormRefunds};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormClientEditor, FormClientEditor);
  Application.CreateForm(TFormEmployee, FormEmployee);
  Application.CreateForm(TFormTours, FormTours);
  Application.CreateForm(TFormSales, FormSales);
  Application.CreateForm(TFormRefunds, FormRefunds);
  Application.Run;
end.
