
Program randoms;

// Enable access to functions within the "Math" unit.
Uses Math;

Begin
  // Ensure we get different numbers (almost) every time:
  Randomize;

  WriteLn('Random: ', RandomRange(0, 100))
End.
