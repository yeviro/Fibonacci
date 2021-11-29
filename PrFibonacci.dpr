program PrFibonacci;

uses
  Forms,
  Fibonacci in 'Fibonacci.pas' {FrValor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrValor, FrValor);
  Application.Run;
end.
