
Program X1_is_even_function;

Function is_even(k: Integer): Boolean;
Begin
  If k Mod 2 = 0 Then
    is_even := True
  Else
    is_even := False;
End;

Var
  n: Integer;
Begin
  WriteLn('Number N?');
  ReadLn(n);

  WriteLn('Even? ', is_even(n));
End.
