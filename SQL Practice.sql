select * from customer
select * from [order]
-- list customers where creditlimit between 200000 and 500000 inclusive
select name, CreditLimit
from customer
where CreditLimit >= 200000 and CreditLimit <= 500000

-- list customer where IsCorpAcct is 1 and sort by City
select c.name, City, IsCorpAcct
from customer c
where IsCorpAcct = 1
order by city
-- list orders for customers from OH
select name, state, amount
from customer c
join [order] o
on c.id = o.CustomerId
where state = 'OH'

--Total of all sales by state
select state, sum(o.amount) as 'Total Amount'
from customer c
join [order] o
on c.id = o.customerid
group by c.state
-- display all orders with amount > the average of all amounts
select customerid, date, amount
from [order]
where amount > (
	select avg(amount) from [order]
	)
--display all orders with amounts < max order amount in OH
select * 
from [order] o
where amount < (select max(amount)
from [order] o
join customer c
on c.id = o.CustomerId
where c.state = 'OH')
