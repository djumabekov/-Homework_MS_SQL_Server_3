--------------------------------------------------------------------
	--Дополнительно:
	--Самостоятельно (так как тема ещё не изучалась) попробуйте написать ЕДИНЫЙ SELECT, 
	--выводящий общую объединенную информацию по всем новым данным (из всех таблиц) 
	--по задаваемому известному GroupID новой группы.
	--------------------------------------------------------------------

	USE StudentsBaseSmall;
	SELECT Students.LastName, Students.FirstName, Students.IIN, Groups.GroupName, Exams.Grade, Courses.CourseName
	FROM  Students
	LEFT JOIN Groups ON Groups.GroupID = Students.GroupID
	LEFT JOIN Exams ON Exams.StudentID = Students.StudentID
	LEFT JOIN Courses ON Courses.CourseID = Exams.CourseID
	WHERE Groups.GroupID = 1002 AND (Courses.CourseName = 'ITSTEP' OR Courses.CourseID BETWEEN 1 AND 5);