declare @sat int;
set @sat = 1495;

select * 
	from student
	where sat >= @sat
	order by sat desc;