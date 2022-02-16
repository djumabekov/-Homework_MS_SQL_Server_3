--------------------------------------------------------------------
--Напишите скрипт demo.sql, выводящий новые записи с помощью отдельных команд SELECT.
--------------------------------------------------------------------
	USE StudentsBaseSmall;
	SELECT * FROM Groups WHERE GroupName = 'XXX-123';
	
	SELECT * FROM Courses WHERE CourseName = 'ITSTEP';

	SELECT * FROM Students WHERE GroupID = 1002;

	SELECT * FROM Exams WHERE CourseID = 52;

	SELECT * FROM Exams WHERE CourseID BETWEEN 1 AND 5;