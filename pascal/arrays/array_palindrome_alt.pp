
Program array_palindrome_alt;

Const
  ArraySize = 50;
  EndOfIP = '.';

Var
  Letters: array[1..ArraySize] Of char;
  idx: Integer;
  revIdx: Integer;
  nEntries: Integer;
  isPalindrome: Boolean;
Begin
  WriteLn('Enter characters, terminate with ''.'':');
  idx := 1;
  Repeat
    Begin
      ReadLn(Letters[idx]);
      idx := idx + 1;
    End;
  Until (Letters[idx - 1] = EndOfIP) Or (idx > ArraySize);

  If Letters[idx - 1] = EndOfIP Then
    nEntries := idx - 2
  Else
    nEntries := ArraySize;

  isPalindrome := True;

  idx := 1;
  revIdx := nEntries;
  While idx <= nEntries Do
    Begin
      // WriteLn('checking ', idx, ' against ', revIdx);
      If Letters[idx] <> Letters[revIdx] Then
        Begin
          isPalindrome := False;
        End;
      idx := idx + 1;
      revIdx := revIdx - 1;
    End;

  WriteLn('Is palindrome? ', isPalindrome);
End.
