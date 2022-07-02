create or alter procedure AddStudent
	@firstname varchar(30) = null,
	@lastname varchar(30) = null,
	@statecode char(2) = 'OH',
	@sat int = null,
	@gpa decimal(4,2) = 0,
	@majorcode varchar(4) = null
as
begin
	if @firstname is null 
	begin
		print 'Firstname is required';
		return;
	end
	if @lastname is null
	begin
		print 'Lastname is required';
		return;
	end

	declare @majorid int = 0;
	select @majorid = id from major where code = @majorcode;

	if @majorid = 0
	begin
		print 'No major found';
		return;
	end

	insert student (Firstname, Lastname, StateCode, GPA, SAT, MajorId)
		values (@firstname, @lastname, @statecode, @gpa, @sat, @majorid);

	if @@rowcount != 1
	begin
		print 'Insert failed';
		return;
	end

	print 'Insert successful!';
end
go
exec AddStudent @firstname = 'Noah', @lastname = 'Phence jr', @statecode = 'IN',
				@sat = 1600, @gpa = 2.0, @majorcode = 'MATH';
go
Select * from student order by id desc;