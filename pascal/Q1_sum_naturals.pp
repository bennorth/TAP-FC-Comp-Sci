
Program Q1_sum_naturals;

Var
  // Individual numbers to add up:
  i: Integer;

  // Maximum number, provided by user:
  n: Integer;

  // Running total; total at end of run:
  t: Integer;
Begin
  WriteLn('Number N?');
  ReadLn(n);

  // Initial value of "running total":
  t := 0;

  // First number to add into running total:
  i := 1;

  While i <= n Do
    Begin
      t := t + i;
      i := i + 1;
    End;

  WriteLn('Sum = ', t);
End.
