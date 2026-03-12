
Program array_palindrome_test;

Const 
  // Use a larger max array size to allow longer tests:
  ArraySize = 100;

  EndOfIP = '.';

Var 
  Letters: array[1..ArraySize] Of char;
  i, j, reverseJ: Integer;
  nEntries: Integer;
  ch1: char;
  isPalindrome: Boolean;
Begin
  WriteLn('Enter characters, terminate with ''.'':');
  i := 1;
  Repeat
    Begin
      ReadLn(ch1);
      Letters[i] := ch1;
      i := i + 1;
    End;
  Until (Letters[i - 1] = EndOfIP) Or (i > ArraySize);

  If Letters[i - 1] = EndOfIP Then
    nEntries := i - 2
  Else
    nEntries := ArraySize;

  // Start off by assuming the sequence is a palindrome:
  isPalindrome := True;

  // We could stop half-way along, but to keep the code
  // simpler we check every entry against its matching
  // "reversed" entry.
  For j := 1 To nEntries Do
    Begin
      // Look at a small example to convince yourself
      // why the "+ 1" is needed here.
      reverseJ := nEntries + 1 - j;

      If Letters[j] <> Letters[reverseJ] Then
        isPalindrome := False;
    End;

  If isPalindrome Then
    WriteLn('Sequence IS a palindrome')
  Else
    WriteLn('Sequence IS NOT a palindrom');
End.
