declare @active bit = 0; -- meaning false or inactive

Select *
	from Customers
	where Active = @active;