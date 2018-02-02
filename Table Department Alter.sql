/*
alter table department
	add NumberOfPeople int 
	check (NumberOfPeople >= 0)
	go

update department set NumberOfPeople = 0
go
alter table department 
	alter column NumberOfPeople int not null
	go
	*/

alter table department
	drop constraint CK__Departmen__CostC__37A5467C
alter table department
	drop column CostCenter
	select * from Department

