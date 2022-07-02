declare aCursor CURSOR for
	Select * from major;

declare @id int, @code varchar(4), @desc varchar(50), @minsat int;
declare @sum int = 0, @count int = 0;

open aCursor;

FETCH NEXT from aCursor into @id, @code, @desc, @minsat;

while @@FETCH_STATUS = 0 
begin
	print 'Major: ' + str(@id) + '|' + @code + '|' + @desc + '|' + str(@minsat);

	set @sum = @sum + @minsat;
	set @count = @count + 1;

	FETCH NEXT from aCursor into @id, @code, @desc, @minsat;
end

print 'Done ...';

close aCursor;

deallocate aCursor;

select 'Average of MinSat', @sum / @count;

select avg(minsat) 'Average MinSAT' from major;