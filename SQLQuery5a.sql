Select statecode State, count(*)  Students
	from Student
	group by StateCode
	having count(*) >= 10
	order by count(*) desc