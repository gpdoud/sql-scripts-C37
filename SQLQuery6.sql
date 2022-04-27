select * 
	from Student
	where gpa >= (select avg(gpa) from Student);















/*

select *
	from class c 
	right join Instructor i
		on i.Id = c.InstructorId
	where c.InstructorId is null;

		














select m.Description as 'Major', c.Subject, c.Code
	from Major m
	join MajorClass mc
		on m.Id = mc.MajorId
	join Class c
		on c.Id = mc.ClassId
	where m.Description like 'General%';













select s.Lastname, c.Code
	from Class c
	join StudentClass sc
		on c.Id = sc.ClassId
	join Student s
		on s.Id = sc.StudentId
	where c.Code like 'ENG%';















select s.Lastname as 'Name', c.Subject, c.Code
	from Student s
	join StudentClass sc
		on s.Id = sc.StudentId
	join Class c
		on c.Id = sc.ClassId
	where s.Lastname = 'Ant';













select *
	from major
	where MinSAT >= 1000
	order by MinSAT desc;

	select * 
		from Student
		where sat < 1000
		order by sat;

select Firstname, Lastname, YearsExperience
	from Instructor
	order by Lastname;


*/