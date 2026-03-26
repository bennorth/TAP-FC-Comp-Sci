
Program arrays_merge_alt;


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

  // Keep going while BOTH indexes are still pointing properly
  // inside their strings:
  While (topIdx <= topLen) And (bottomIdx <= bottomLen) Do
    Begin
      // Print from whichever string has the earlier pointed-to
      // character.  If the two characters are the same, it doesn't
      // matter which we print.  We print from the "bottom" string.
      If (topStr[topIdx] < bottomStr[bottomIdx]) Then
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

  // After the loop, we have printed out all the characters of at
  // least one of the two strings.  (In fact, unless both strings
  // are empty, we have printed out all the characters of EXACTLY
  // one string.)

  // Print out whatever's left from the top string.  If the above
  // loop already printed out everything from the top string, we
  // will have topIdx > topLen, and the body of the "while" loop
  // will not run at all, which is correct.
  While (topIdx <= topLen) Do
    Begin
      WriteLn(topStr[topIdx]);
      topIdx := topIdx + 1;
    End;

  // Print out whatever's left from the bottom string, if anything.
  // See notes above.
  While (bottomIdx <= bottomLen) Do
    Begin
      WriteLn(bottomStr[bottomIdx]);
      bottomIdx := bottomIdx + 1;
    End;
End;

////////////////////////////////////////////////////////////////////////

// We are using "top" and "bottom" in the variable names because in class
// we had a piece of paper with an example on it, with the two strings
// one above the other.

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
