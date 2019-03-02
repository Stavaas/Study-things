program Lab2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  MatrixUnit in 'MatrixUnit.pas';

  var x,y,z:matr;
      i,j:integer;
      a:real;

begin
  Writeln('Input matrix x');
  for i:=1 to 3 do
        for j := 1 to 3 do
          read(x.arr[i,j]);
  outputmas(x);

  Writeln('Input matrix y');
  for i:=1 to 3 do
        for j := 1 to 3 do
          read(y.arr[i,j]);
  outputmas(y);

  Writeln('x+y');
  z:=Add(x,y);
  outputmas(z);

  Writeln('x*y');
  z:=Multiply(x,y);
  outputmas(z);

  Writeln('Enter a');
  Readln(a);
  Writeln('x*a');
  z:=ScalarMultiply(x,a);
  outputmas(z);

  Writeln('Press <Enter> to quit.');
  readln;
end.
