SELECT *
	from Student s right join Major m
		on s.MajorId = m.Id;