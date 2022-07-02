select name, format(sales, 'C') as 'Sales'
	from Customers
	order by Customers.sales