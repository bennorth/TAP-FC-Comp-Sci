
Program array_bubble_sort;

Const
  ArraySize = 50;

Var
  Numbers: array[1..Arraysize] Of Integer;
  tmpNumber: Integer;
  nEntries: Integer;
  idx: Integer;
  idx1: Integer;
  idx2: Integer;
  nSwaps: Integer;
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

  Repeat
    nSwaps := 0;
    For idx1 := 1 To nEntries - 1 Do
      Begin
        idx2 := 1 + idx1;
        If Numbers[idx1] > Numbers[idx2] Then
          Begin
            tmpNumber := Numbers[idx1];
            Numbers[idx1] := Numbers[idx2];
            Numbers[idx2] := tmpNumber;
            nSwaps := nSwaps + 1;
          End;
      End;
  Until nSwaps = 0;

  // Exercise: We don't actually care exactly how many swaps
  // were done.  We only need to be able to tell the difference
  // between two cases:
  //
  // There were no swaps.
  // There was at least one swap.
  //
  // Replace "nSwaps: Integer" with "anySwaps: Boolean" and
  // update the rest of the code to match.

  WriteLn('After sorting:');
  For idx := 1 To nEntries Do
    WriteLn(idx, ' : ', Numbers[idx]);
End.
