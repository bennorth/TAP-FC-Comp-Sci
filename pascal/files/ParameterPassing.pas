program ParameterPassing;

var
  a, i , j : integer;
  ch : char;

  procedure TestProcedure(x:integer; var y: integer);
  var
    a : integer;
  begin
    x := x+1;
    y := y+1;
    a := 999;
    writeln('In TestProcedure x is ',  x, ' y is ', y, ' a is ', a);
    readln(ch);
  end;

begin
  a := 1;
  i := 10;
  j := 20;
  writeln('Before  TestProcedre  i is ', i, ' j is ', j, ' a is ', a);
  readln(ch);
  TestProcedure(i, j);
  writeln('After TestProcedre  i is ', i, ' j is ', j, ' a is ', a);

end.