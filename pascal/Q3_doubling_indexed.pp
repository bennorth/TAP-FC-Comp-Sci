
Program Q3_doubling_indexed;

Var
  // One-based index into iterations:
  idx: Integer;

  // Number supplied by user:
  n: Integer;

  // Result of doubling that number:
  doubled: Integer;
Begin
  idx := 1;
  n := 1; // Pretend user value; just has to be non-zero.

  While (idx <= 10) And (n <> 0) Do
    Begin
      WriteLn('Number N?');
      ReadLn(n);

      doubled := n * 2;
      WriteLn('Double of ', n, ' is ', doubled);

      idx := idx + 1;
    End;
End.

{ TEST: Does it double correctly? Yes. }
{ TEST: Does it stop when you enter 0? Yes. }
{ TEST: Can it handle non-integers? Out of scope. }
{ TEST: Does it stop after doing 10 doublings? Yes. }
