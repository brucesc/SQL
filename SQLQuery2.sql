select c.id, Name as 'Customer Name', Date, Amount 
from [order] o -- the order table with alias o
join customer c -- joining customer table with alias c
	on o.customerid = c.id -- setting the join to match like columns in o and c tables
order by c.name, o.amount desc -- the order columns will display the rows in asc/desc