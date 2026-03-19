
Program array_bubble_sort;

Const
  ArraySize = 50;

Var
  Numbers: array[1..Arraysize] Of Integer;
  tmpNumber: Integer;
  nEntries: Integer;
  passLength: Integer;
  idx: Integer;
  idx1: Integer;
  idx2: Integer;
Begin
  WriteLn('Enter numbers, terminate with negative:');
  idx := 1;
  Repeat
    Begin
      ReadLn(Numbers[idx]);
      idx := idx + 1;
    End;
  Until (Numbers[idx - 1] < 0) Or (idx > ArraySize);

  If Numbers[idx - 1] < 0 Then
    nEntries := idx - 2
  Else
    nEntries := ArraySize;

  WriteLn('You entered:');
  For idx := 1 To nEntries Do
    WriteLn(idx, ' : ', Numbers[idx]);

  // Example array while we work out code:
  // index:   1  2  3  4  5  6  7
  // value:  10  8 32 18 20  5 13

  // After the first pass, the biggest number will be in the last
  // array position.  After the second pass, the second-biggest number
  // will be in the second-last array position.  We can therefore take
  // shorter and shorter passes through the array, until we only make
  // one comparison.

  For passLength := nEntries - 1 Downto 1 Do
    For idx1 := 1 To passLength Do
      Begin
        idx2 := 1 + idx1;
        If Numbers[idx1] > Numbers[idx2] Then
          Begin
            tmpNumber := Numbers[idx1];
            Numbers[idx1] := Numbers[idx2];
            Numbers[idx2] := tmpNumber;
          End;
      End;

  WriteLn('After sorting:');
  For idx := 1 To nEntries Do
    WriteLn(idx, ' : ', Numbers[idx]);
End.
