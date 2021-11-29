unit Fibonacci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrValor = class(TForm)
    Label1: TLabel;
    EdValor: TEdit;
    Button1: TButton;
    EdResult: TEdit;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrValor: TFrValor;

implementation

{$R *.dfm}



function CalcFibonacci(N: integer): integer;
var
  N1, N2, I : integer;
begin
    N1 := 0;
    Result := 1;
    for I := 2 to N do
    begin
      N2 := N1 + Result;
      N1 := Result;
      Result := N2;
    end;
end;

procedure TFrValor.Button1Click(Sender: TObject);
var Val, N, Res : integer;
begin
  Val := StrToInt(EdValor.Text);
  if (Val < 1) or (Val > 20) then
    begin
      EdValor.SetFocus;
      raise Exception.Create('Error !! El valor ingresado debe estar entre 1 y 20');
    end;

    if Val = 1 then
      EdResult.Text := '1'
    else
      if Val = 2 then
        EdResult.Text := ('1,1')
      else
      begin
        EdResult.Text := ('1,1,');
        for N := 3 to Val do
        begin
          Res := (CalcFibonacci(N - 1) + CalcFibonacci(N - 2));
          if N = Val then
            begin
              EdResult.Text := concat(EdResult.Text,inttoStr(Res));
            end
          else
            begin
              EdResult.Text := concat(EdResult.Text,inttoStr(Res),',');
            end;
        end;
    end;
end;

end.
