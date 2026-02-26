
Program X3_function_many_params;

// Return TRUE or FALSE according to whether the first number is the
// biggest of the two.  (Or if the two are equal.)
Function first_is_max(k1: Integer;
                      k2: Integer): Boolean;
Begin
  first_is_max := k1 >= k2;
End;

// Return how many out of k2 and k3 are equal to k1
Function count_equal_to_first(k1: Integer;
                              k2: Integer;
                              k3: Integer): Integer;
Var
  n_equal: Integer;
Begin
  n_equal := 0;
  If k2 = k1 Then n_equal := n_equal + 1;
  If k3 = k1 Then n_equal := n_equal + 1;
  count_equal_to_first := n_equal;
End;

Var
  n1, n2, n3: Integer;
Begin
  ////////////////////////////////////////////////////////////////
  // Ask for two numbers, and say whether each is the maximum.

  WriteLn('n1?');
  ReadLn(n1);
  WriteLn('n2?');
  ReadLn(n2);

  // Pay attention to the order we are passing the arguments here:
  WriteLn('n1 max? ', first_is_max(n1, n2));
  WriteLn('n2 max? ', first_is_max(n2, n1));

  ////////////////////////////////////////////////////////////////
  // Now ask for a third number and do three "count equal" calculations.

  WriteLn('n3?');
  ReadLn(n3);

  // Pay attention to the order we are passing the arguments here:
  WriteLn('How many others equal n1? ', count_equal_to_first(n1, n2, n3));
  WriteLn('How many others equal n2? ', count_equal_to_first(n2, n3, n1));
  WriteLn('How many others equal n3? ', count_equal_to_first(n3, n1, n2));
End.
