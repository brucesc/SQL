select Name, Date, Amount
from [order] o
join customer c
on c.id = o.customerid
order by name, date, amount desc