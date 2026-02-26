
Program Q2_evens_odds;

Var
  // Individual numbers to add up:
  i: Integer;

  // Maximum number, provided by user:
  n: Integer;

  // Running totals of even and odd numbers;
  // at end of run, will be required totals.
  t_even: Integer;
  t_odd: Integer;
Begin
  WriteLn('Number N?');
  ReadLn(n);

  // Initial values of "running totals":
  t_even := 0;
  t_odd := 0;

  // First number to add into running total:
  i := 1;

  While i <= n Do
    Begin
      If i Mod 2 = 0 Then
        Begin
          t_even := t_even + i;
        End
      Else
        Begin
          t_odd := t_odd + i;
        End;

      i := i + 1;
    End;

  WriteLn('Odd sum  = ', t_odd);
  WriteLn('Even sum = ', t_even);
End.
