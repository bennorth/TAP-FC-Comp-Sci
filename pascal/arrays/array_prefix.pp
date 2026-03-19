
Program array_prefix;

Const
  ArraySize = 50;
  EndOfIP = '.';

Var
  LongStr: array[1..ArraySize] Of char;
  nLongEntries: Integer;
  ShortStr: array[1..ArraySize] Of char;
  nShortEntries: Integer;
  idx: Integer;
  isPrefix: Boolean;
Begin
  WriteLn('LONG: Enter characters, terminate with ''.'':');
  idx := 1;
  Repeat
    Begin
      ReadLn(LongStr[idx]);
      idx := idx + 1;
    End
  Until (LongStr[idx - 1] = EndOfIP) Or (idx > ArraySize);

  If LongStr[idx - 1] = EndOfIP Then
    nLongEntries := idx - 2
  Else
    nLongEntries := ArraySize;

  WriteLn('SHORT: Enter characters, terminate with ''.'':');
  idx := 1;
  Repeat
    Begin
      ReadLn(ShortStr[idx]);
      idx := idx + 1;
    End;
  Until (ShortStr[idx - 1] = EndOfIP) Or (idx > ArraySize);

  If ShortStr[idx - 1] = EndOfIP Then
    nShortEntries := idx - 2
  Else
    nShortEntries := ArraySize;

  If nShortEntries <= nLongEntries Then
    Begin
      isPrefix := True;
      idx := 1;
      While idx <= nShortEntries Do
        Begin
          If ShortStr[idx] <> LongStr[idx] Then
            Begin
              isPrefix := False;
            End;
          idx := idx + 1;
        End;
    End
  Else
    isPrefix := False;

  WriteLn('Is prefix? ', isPrefix);
End.
