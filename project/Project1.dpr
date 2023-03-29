program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormMain},
  UnitClientEditor in 'UnitClientEditor.pas' {FormClientEditor},
  UnitEmployee in 'UnitEmployee.pas' {FormEmployee};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormClientEditor, FormClientEditor);
  Application.CreateForm(TFormEmployee, FormEmployee);
  Application.Run;
end.
