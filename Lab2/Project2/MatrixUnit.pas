unit MatrixUnit;

interface
  type
    matr=record arr:array[1..3, 1..3] of real;
  end;

  function outputmas(a:matr):matr;
  function Add(a,b:matr):matr;
  function Multiply(a,b:matr):matr;
  function ScalarMultiply(a:matr; x:real):matr;

implementation

  function outputmas(a:matr):matr;
    var i,j:integer;
    begin
      for i:=1 to 3 do begin
        for j := 1 to 3 do
          write(a.arr[i,j], ' ');
        writeln;    
      end;
    end;

  function Add(a,b:matr):matr;
    var i,j: integer;
    begin
      for i:=1 to 3 do
        for j:= 1 to 3 do
            result.arr[i,j]:=a.arr[i,j]+b.arr[i,j];
    end;

  function Multiply(a,b:matr):matr;
    var i,j: integer;
    begin
       for i:=1 to 3 do
        for j:= 1 to 3 do
            result.arr[i,j]:=a.arr[i,j]*b.arr[i,j];
    end;

  function ScalarMultiply(a:matr; x:real):matr;
    var i,j: integer;
    begin
       for i:=1 to 3 do
        for j:= 1 to 3 do
            result.arr[i,j]:=a.arr[i,j]*x;
    end;
end.
