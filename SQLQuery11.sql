update student set
	MajorId = (select id from major where Description = 'Education')
	where lastname = 'Doud'

select *
	from Student
	where firstname in ('Greg', 'fred', 'Fred1', 'Fred2', 'Fred3', 'Fred4')
			and lastname != 'Gould';