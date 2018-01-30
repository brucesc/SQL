select c.id, Name as 'Customer Name', Date, Amount 
from [order] o
join customer c
	on o.customerid = c.id
order by c.name, o.amount desc