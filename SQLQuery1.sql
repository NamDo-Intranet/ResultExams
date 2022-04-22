create Database Results
use Results
Create table Exams(
ExamCode char(10) Primary key Not Null,
ExamName char(20),
ExamDate datetime,
)
Create table Student(
Studentcode int Primary key Not Null,
Names char(40), 
)
Create table Result(
StudentCode int Foreign key references Student(StudentCode) on delete cascade on update cascade, 
ExamCode char(10)Foreign key references Exams(ExamCode) on delete cascade on update cascade,
Score int ,
)
Insert into Exams(ExamCode, ExamName, ExamDate)
Values('JAVA01', 'JavaBasics', 2018-02-17-07-20);
Insert into Exams(ExamCode, ExamName, ExamDate)
Values('C#', 'LapTrinh C#', 2016-12-03-09-00);
Insert into Exams(ExamCode, ExamName, ExamDate)
Values('JAVA02', 'JavaNangcao', 2018-04-20-09-30);
Insert into Exams(ExamCode, ExamName, ExamDate)
Values('SQL01', 'SQLBasics', 2020-08-24-13-30);
Insert into Exams(ExamCode, ExamName, ExamDate)
Values('SQL02', 'SQLNangcao', 2017-07-14-15-00);

Insert into Student(Studentcode, Names)
Values('04', 'Pham Ngoc Nhi')
Insert into Student(Studentcode, Names)
Values('07', 'Tran Thai An')
Insert into Student(Studentcode, Names)
Values('03', 'Nguyen Minh Tri')
Insert into Student(Studentcode, Names)
Values('05', 'Le Bao Binh')
Insert into Student(Studentcode, Names)
Values('06', 'Tran Ngoc Yen Linh')

Insert into Result(StudentCode, ExamCode, Score)
Values('03', 'C#', 6)
Insert into Result(StudentCode, ExamCode, Score)
Values('06', 'SQL01', 8)
Insert into Result(StudentCode, ExamCode, Score)
Values('05', 'SQL02', 7)
Insert into Result(StudentCode, ExamCode, Score)
Values('04', 'JAVA02', 7)
Insert into Result(StudentCode, ExamCode, Score)
Values('07', 'JAVA01', 9)