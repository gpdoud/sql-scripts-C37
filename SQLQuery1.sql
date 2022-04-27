select *
	from customers
	order by city, sales desc

Select *
	from Customers
	Where (City = 'Cincinnati' and sales > 30000)
		 OR (city = 'Columbus' and sales > 35000)
		 or (city = 'Cleveland' and sales < 10000)

Select *
	from customers	
	where city != 'Cleveland'


Select *
	from customers	
	where not (city = 'Cleveland');

Select *
	from customers	
	where NOT (city = 'Cleveland' OR city = 'Columbus');

Select *
	from customers	
	where NOT city in ('Cleveland','Columbus');