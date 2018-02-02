/*
You can comment 
no matter how many lines
with this
*/

alter table Employee
	add cellphone nvarchar(12)
go

update employee set
	cellphone = '513-555-1212'
go

alter table employee
	alter column Cellphone nvarchar(12) not null
go

alter table employee
	drop column Cellphone
go
select * from employee