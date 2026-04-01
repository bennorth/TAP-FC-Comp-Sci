program FileIODemo2;
var
  inputFile, outputFile: Text;
  num: Integer;

begin
  { Assign file names to file variables }
  Assign(inputFile, 'input.txt');
  Assign(outputFile, 'output.txt');

  { Open the input file for reading }
  Reset(inputFile);

  { Create or overwrite the output file for writing }
  Rewrite(outputFile);

  { Read integers from the input file and write them to the output file }
  while not EOF(inputFile) do
  begin
    ReadLn(inputFile, num);  { Read an integer from the input file }
    WriteLn(outputFile, num); { Write the integer to the output file }
  end;

  { Close the files }
  Close(inputFile);
  Close(outputFile);

  { Notify the user }
  WriteLn('File I/O completed successfully.')
  
end.