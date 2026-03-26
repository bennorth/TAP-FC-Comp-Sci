
Program arrays_merge;


Const
  ArraySize = 50;
  EndOfIP = '.';

Type CharArr = array[1..ArraySize] Of char;

////////////////////////////////////////////////////////////////////////

Procedure ReadUserString(prompt: String; Var userStr: CharArr; Var userLen:
                         Integer);

Var
  idx: Integer;
Begin
  WriteLn(prompt);
  idx := 1;
  Repeat
    Begin
      // Use first character on the line the user types; ignore rest.
      ReadLn(userStr[idx]);
      idx := idx + 1;
    End
  Until (userStr[idx - 1] = EndOfIP) Or (idx > ArraySize);

  If userStr[idx - 1] = EndOfIP Then
    userLen := idx - 2
  Else
    userLen := ArraySize;
End;

////////////////////////////////////////////////////////////////////////

Procedure MergeStrings(topStr: CharArr; topLen: Integer; bottomStr: CharArr;
                       bottomLen: Integer);

Var
  // Index into topStr:
  topIdx: Integer;

  // Index into bottomStr:
  bottomIdx: Integer;
Begin
  // Point both indexes at the start of their strings:
  topIdx := 1;
  bottomIdx := 1;

  // Keep going while at least one index is still pointing
  // properly inside its string:
  While (topIdx <= topLen) Or (bottomIdx <= bottomLen) Do
    Begin
      // When should we print from the top string?  When either of the
      // following is true:
      //
      // We have printed all of the bottom string (bottomIdx > bottomLen)
      //
      // or else
      //
      // We still have some of the top string left to print (topIdx <= topLen)
      // AND the pointed-to character of the top string is earlier in the
      // alphabet than the pointed-to character of the bottom string
      // (topStr[topIdx] < bottomStr[bottomIdx]).
      //
      If ((bottomIdx > bottomLen)
         Or ((topIdx <= topLen) And (topStr[topIdx] < bottomStr[bottomIdx])))
        Then
        Begin
          WriteLn(topStr[topIdx]);
          topIdx := topIdx + 1;
        End
      Else
        Begin
          WriteLn(bottomStr[bottomIdx]);
          bottomIdx := bottomIdx + 1;
        End;
    End;
End;

////////////////////////////////////////////////////////////////////////

Var
  topStr: CharArr;
  topLen: Integer;
  bottomStr: CharArr;
  bottomLen: Integer;
Begin
  ReadUserString('Enter chars, terminate with "."', topStr, topLen);
  ReadUserString('Enter chars, terminate with "."', bottomStr, bottomLen);
  MergeStrings(topStr, topLen, bottomStr, bottomLen);
End.
