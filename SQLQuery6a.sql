Select *
	from Student
	where gpa = (select max(gpa) from student);