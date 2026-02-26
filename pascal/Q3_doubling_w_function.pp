
Program Q3_doubling_w_function;

// Define the function "twice".
//
// Terminology:
//
// k is the "input" or "parameter".
// The answer is the "output" or the "return value"
// or the "returned value".
Function twice(k: Integer): Integer;
Begin
  // "Assign to the function name" to set return value:
  twice := k * 2;
End;

// Main program now starts.

Var
  // Count of iterations we have performed:
  count: Integer;

  // Number supplied by user:
  n: Integer;
Begin
  count := 0;
  n := 1; // Pretend user value; just has to be non-zero.

  While (count < 10) And (n <> 0) Do
    Begin
      WriteLn('Number N?');
      ReadLn(n);

      // The function call to "twice" makes it clear what's
      // going on, so we leave out the "doubled" variable.
      WriteLn('Double of ', n, ' is ', twice(n));

      count := count + 1;
    End;
End.

{ TEST: Does it double correctly? Yes. }
{ TEST: Does it stop when you enter 0? Yes. }
{ TEST: Can it handle non-integers? Out of scope. }
{ TEST: Does it stop after doing 10 doublings? Yes. }
