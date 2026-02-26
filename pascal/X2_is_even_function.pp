
Program X2_is_even_function;

Function is_even(k: Integer): Boolean;
Begin
  // The expression on the right-hand side is a calculation like "3 + 7"
  // except its value is of type Boolean not Integer.  The value is exactly
  // what the function should return, so we can just "assign it to the
  // function name", as if assigning to a variable.
  is_even := (k Mod 2 = 0);
End;

Var
  n: Integer;
Begin
  WriteLn('Number N?');
  ReadLn(n);

  WriteLn('Even? ', is_even(n));
End.
