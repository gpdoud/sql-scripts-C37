insert class (code, subject, section) values ('ENG401', 'English', 401);

insert StudentClass (StudentId, ClassId) values
  (
	(select id from Student where firstname = 'Eric' and Lastname = 'Ephram'),
	(select id from class where Code = 'ENG401')
  )

select *
	from Student s
	join StudentClass sc
		on s.Id = sc.StudentId
	join Class c
		on c.Id = sc.ClassId
	where s.Lastname = 'Ephram';