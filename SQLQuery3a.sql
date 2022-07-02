declare @lowgpa decimal(7,2) = 2.25;
declare @highgpa decimal(7,2) = 3.59;

select *
	from Student
	where gpa between @lowgpa and @highgpa;