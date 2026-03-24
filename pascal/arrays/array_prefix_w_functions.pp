
Program array_prefix_w_functions;

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

Function IsPrefix(s1: CharArr; n1: Integer; s2: CharArr; n2:
                  Integer): Boolean;

Var
  idx: Integer;
Begin
  If n1 <= n2 Then
    Begin
      IsPrefix := True;
      idx := 1;
      While idx <= n1 Do
        Begin
          If s1[idx] <> s2[idx] Then
            Begin
              IsPrefix := False;
            End;
          idx := idx + 1;
        End;
    End
  Else
    IsPrefix := False;

End;

////////////////////////////////////////////////////////////////////////

Var
  LongStr: CharArr;
  nLongEntries: Integer;
  ShortStr: CharArr;
  nShortEntries: Integer;
Begin
  ReadUserString('LONG: Enter characters, terminate with ''.'':', LongStr,
                 nLongEntries);

  ReadUserString('SHORT: Enter characters, terminate with ''.'':', ShortStr,
                 nShortEntries);

  WriteLn('Prefix? ', IsPrefix(ShortStr, nShortEntries, LongStr, nLongEntries));
End.
