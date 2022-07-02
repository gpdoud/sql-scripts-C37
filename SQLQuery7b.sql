create or alter procedure ShowCustomerBySalesRange
	@lowsales int  = 0,
	@highsales decimal(9,2) = 999999
as
begin

	select * 
		from customers
		where sales between @lowsales and @highsales
		order by sales desc;

end
go
exec ShowCustomerBySalesRange @lowsales = 50000;