 --Напишите единый скрипт addNew.sql, обеспечивающий:
 --В процессе отладки скрипта пользуйтесь BEGIN TRANSACTION ... ROLLBACK TRANSACTION!
 USE StudentsBaseSmall;
 -- добавление новой группы, 
 BEGIN TRANSACTION;
	INSERT INTO Groups (GroupName) VALUES ('XXX-123');
	SELECT * FROM Groups WHERE GroupName = 'XXX-123';
ROLLBACK TRANSACTION;

--добавления нового курса
 BEGIN TRANSACTION;
	INSERT INTO Courses(CourseName) VALUES ('ITSTEP');
	SELECT * FROM Courses WHERE CourseName = 'ITSTEP';
ROLLBACK TRANSACTION;

 --добавления 10 новых студентов в эту группу, добавления нового курса
  BEGIN TRANSACTION;
 	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('454545778787', 'LastName1', 'FirstName1', '2020-11-01', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('453453453453', 'LastName2', 'FirstName2', '2020-10-02', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('834534534534', 'LastName3', 'FirstName3', '2020-01-03', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('453878345343', 'LastName4', 'FirstName4', '2020-01-04', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('453453453454', 'LastName5', 'FirstName5', '2020-01-05', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('835313453433', 'LastName6', 'FirstName6', '2020-01-06', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('453835434534', 'LastName7', 'FirstName7', '2020-01-07', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('835345532113', 'LastName8', 'FirstName8', '2020-01-08', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('835435434534', 'LastName9', 'FirstName9', '2020-01-09', 1002);
	INSERT INTO Students (IIN, LastName, FirstName, Birthday, GroupID) VALUES ('458388734544', 'LastName10', 'FirstName10', '2020-01-10', 1002);
	SELECT * FROM Students WHERE GroupID = 1002;

 ROLLBACK TRANSACTION;

 -- сдачу 5-ю новыми студентами экзаменов по  новому курсу
  BEGIN TRANSACTION;
  	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10011, 52, 10, '2020-11-01', 1000);
	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10012, 52, 10, '2020-11-01', 1000);
	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10013, 52, 10, '2020-11-01', 1000);
	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10014, 52, 10, '2020-11-01', 1000);
	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10015, 52, 10, '2020-11-01', 1000);
	SELECT * FROM Exams WHERE CourseID = 52;
ROLLBACK TRANSACTION;


 -- сдачу оставшимися 5-ю новыми студентами 1, 2, 3, 4, 5-ти экзаменов по другим (старым) курсам.
  BEGIN TRANSACTION;
  	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10016, 1, 10, '2020-11-01', 1000);
	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10017, 2, 10, '2020-11-01', 1000);
	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10018, 3, 10, '2020-11-01', 1000);
	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10019, 4, 10, '2020-11-01', 1000);
	INSERT INTO Exams (StudentID, CourseID, Grade, ExamDate, ExamFee) VALUES (10020, 5, 10, '2020-11-01', 1000);
	SELECT * FROM Exams WHERE CourseID BETWEEN 1 AND 5;
ROLLBACK TRANSACTION;