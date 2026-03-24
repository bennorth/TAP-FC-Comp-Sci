
Program array_bubble_sort_chars;

Const
  ArraySize = 50;
  EndOfIP = '.';

Type CharArr = array[1..ArraySize] Of char;

////////////////////////////////////////////////////////////////////////

Procedure ReadUserString(prompt: String; Var outStr: CharArr; Var outLen:
                         Integer);

Var
  idx: Integer;

Begin
  WriteLn(prompt);
  idx := 1;
  Repeat
    Begin
      ReadLn(outStr[idx]);
      idx := idx + 1;
    End
  Until (outStr[idx - 1] = EndOfIP) Or (idx > ArraySize);

  If outStr[idx - 1] = EndOfIP Then
    outLen := idx - 2
  Else
    outLen := ArraySize;

End;

////////////////////////////////////////////////////////////////////////

Var
  userStr: CharArr;
  userLen: Integer;
  tmpChar: Char;
  idx: Integer;
  idx1: Integer;
  idx2: Integer;
  nSwaps: Integer;
Begin
  ReadUserString('Enter chars', userStr, userLen);

  WriteLn('You entered:');
  For idx := 1 To userLen Do
    WriteLn(idx, ' : ', userStr[idx]);

  Repeat
    nSwaps := 0;
    For idx1 := 1 To userLen - 1 Do
      Begin
        idx2 := 1 + idx1;
        If userStr[idx1] > userStr[idx2] Then
          Begin
            tmpChar := userStr[idx1];
            userStr[idx1] := userStr[idx2];
            userStr[idx2] := tmpChar;
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
  For idx := 1 To userLen Do
    WriteLn(idx, ' : ', userStr[idx]);
End.
