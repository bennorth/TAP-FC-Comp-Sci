
Program array_2;

Const 
  ArraySize = 10;
  EndOfIP = '.';

Var 
  Letters: array[1..ArraySize] Of char;
  i, j: Integer;
  nEntries: Integer;
  ch1: char;
Begin
  // To get an apostrophe character in a string,
  // write two apostrophes next to each other:
  WriteLn('Enter characters, terminate with ''.'':');
  i := 1;
  Repeat
    Begin
      // Read into a "char"-type variable and then
      // assign the array element from that variable.
      ReadLn(ch1);
      Letters[i] := ch1;
      i := i + 1;
    End;
  Until (Letters[i - 1] = EndOfIP) Or (i > ArraySize);

  If Letters[i - 1] = EndOfIP Then
    nEntries := i - 2
  Else
    nEntries := ArraySize;

  // Write the characters back out, but do not write
  // any space (' ') characters.
  WriteLn('You entered:');
  For j := 1 To nEntries Do
    If Letters[j] <> ' ' Then
      WriteLn(j, ' : ', Letters[j]);
End.
