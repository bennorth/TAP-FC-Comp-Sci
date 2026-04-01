program ParameterPassing;

var
  a, i , j : integer;       // Global variables
  ch : char;                // Apply to all the code

  procedure TestProcedure(x:integer; var y: integer);
                            // x passed by vaule
                            // y passed variable parameter
  var
    a : integer;            // Local variable 
  begin
    x := x+1;
    y := y+1;
    a := 999;               // The local a not the global one
    writeln('In TestProcedure x is ',  x, ' y is ', y, ' a is ', a);
    readln(ch);             // Global ch
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