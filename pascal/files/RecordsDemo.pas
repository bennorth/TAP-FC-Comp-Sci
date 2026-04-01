program RecordsDemo;

const
  MAX_STUDENTS = 4 ;

type                      // Define a record type to hold student information
  StudentRecord = record
    ID: integer;
    Grade: char;
  end;

  ClassListType = array[1..MAX_STUDENTS] of StudentRecord;
                         // Define an array type to hold a list of student records

var
  ClassList: ClassListType;
  i : integer;
begin
  
  writeln('Enter Grades for 4 students:');
  for i := 1 to MAX_STUDENTS do
  begin
   ClassList[i].ID := i; // Assigning ID based on index
   readln(ClassList[i].Grade)   // Reading Grade from user input
  end;

 // Displaying the student records
   writeln('Student Records:');
  for i := 1 to MAX_STUDENTS do
      writeln('Student ID: ', ClassList[i].ID, ' Grade: ', ClassList[i].Grade)   

end.