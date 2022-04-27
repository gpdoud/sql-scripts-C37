-- group by
select c.name as 'Customers', count(*) as 'Orders'
	from customers c
	join orders o
		on o.CustomerId = c.Id
	group by c.Name
	having count(*) > 1
	order by Orders desc;


-- This is a comment
select c.name, o.Id, o.Date, o.Description
	from Orders o
	join Customers c
		on o.CustomerId = c.Id
	order by c.Name