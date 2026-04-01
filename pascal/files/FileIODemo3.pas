program FileIODemo3;
var
  inputFile : Text;
  num1, num2 : Integer;

begin
  { Assign file names to file variables }
  Assign(inputFile, 'input.txt');

  { Open the input file for reading. It has 2 intergers per line. 
    24 567
    89 123  }
  Reset(inputFile);

  while not EOF(inputFile) do
  begin
    Read(inputFile, num1);  { Read first integer on the line }
    ReadLn(inputFile, num2);  { Read second integer and move to next line }
    WriteLn(num1, ' ', num2); 
  end;

  { Close the files }
  Close(inputFile);
  
end.