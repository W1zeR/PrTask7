program PrTask7;

uses
  Forms,
  UnitT7 in 'UnitT7.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
