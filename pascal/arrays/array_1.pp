
Program array_1;

Const 
  ArraySize = 10;
  EndOfIP = '.';

Var 
  // This version removes the unused variables.
  Numbers: array[1..Arraysize] Of Integer;
  i, j: Integer;
  nEntries: Integer;
Begin
  WriteLn('Enter numbers, terminate with negative:');
  i := 1;
  Repeat
    Begin
      ReadLn(Numbers[i]);
      i := i + 1;
    End;
  Until (Numbers[i-1] < 0) Or (i > ArraySize);

  // We added this in class, to compute the number of
  // valid (non-negative) entries.
  If Numbers[i - 1] < 0 Then
    nEntries := i - 2
  Else
    nEntries := ArraySize;

  // Write them back out.  This version also prints
  // the index (j) before the actual number at that
  // index in the array.
  WriteLn('You entered:');
  For j := 1 To nEntries Do
    WriteLn(j, ' : ', Numbers[j]);
End.
