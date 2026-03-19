
Program is_prime_to_function;

////////////////////////////////////////////////////////////////////////

Function IsPrime(n: Integer): boolean;

Var
  i: Integer;
Begin
  If n < 2 Then
    Begin
      IsPrime := False;
      // Skip rest of function and return to main program:
      Exit;
    End;

  IsPrime := True;
  For i := 2 To n Div 2 Do
    Begin
      If n Mod i = 0 Then
        Begin
          IsPrime := False;
        End;
    End;
End;

////////////////////////////////////////////////////////////////////////

Var
  n: Integer;

Begin
  WriteLn('input n:');
  ReadLn(n);
  WriteLn(n, ' prime?  ', IsPrime(n));
End.
