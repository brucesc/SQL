drop table if exists Todo -- prevents multiple inserts and table creates
drop table if exists Category
go
Create Table Category (
Id int primary key identity(1,1),
Description nvarchar(30) not null
)

insert into Category (Description) values ('Personal')
insert into Category (Description) values ('Work')
go

Create table Todo (
	Id int primary key identity(1,1),
	Task nvarchar(80) not null,
	Priority int not null default 3
		check (Priority >=0 and Priority <=5), --Lower numbers are higher priority
	Completed bit not null default 0,
	DueDate datetime, --Date scheduled to complete the todo
	CategoryId int foreign key references Category(Id)
	)
	go
	
insert into Todo (Task, DueDate, CategoryId)
	values ('Review Lisa''s project', '2018-2-1 12:00.00', 2)
insert into todo (Task, DueDate, CategoryId)
	values ('Pizza for Lunch', '2018-2-1 12:00.00', 1)

select * from Todo

