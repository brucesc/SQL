use master;
drop database if exists SqlTutorial;
create database SqlTutorial;
use SqlTutorial;
create table [Customer] (
	Id int not null primary key identity(1,1),
	Name nvarchar(50) not null,
	City nvarchar(50) not null,
	State nvarchar(2) not null,
	IsCorpAcct bit not null default 0,
	CreditLimit int not null default 0,
	Active bit not null default 1
);
Insert into [Customer] (Name, City, State, IsCorpAcct, CreditLimit)
values ('Mercury LTD', 'Newport', 'KY', 0, 100000);
Insert into [Customer] (Name, City, State, IsCorpAcct, CreditLimit)
values ('Venus LLC', 'Dayton', 'OH', 0, 300000);
Insert into [Customer] (Name, City, State, IsCorpAcct, CreditLimit)
values ('Mars INC', 'Cincinnati', 'OH', 1, 1000000);
Insert into [Customer] (Name, City, State, IsCorpAcct, CreditLimit)
values ('Jupiter LPA', 'Covington', 'KY', 0, 250000);
Insert into [Customer] (Name, City, State, IsCorpAcct, CreditLimit)
values ('Saturn INC', 'Batesville', 'IN', 0, 300000);
Insert into [Customer] (Name, City, State, IsCorpAcct, CreditLimit)
values ('Uranus LPA', 'Indianapolis', 'IN', 1, 1000000);
Insert into [Customer] (Name, City, State, IsCorpAcct, CreditLimit)
values ('Neptune INC', 'Cleveland', 'OH', 1, 1000000);

create table [Order] (
	Id int not null primary key identity(1,1),
	Date datetime not null,
	Amount decimal(14,0) not null default 0,
	CustomerId int foreign key references Customer
);

Insert into [Order] (Date, Amount, CustomerId)
values ('2017-12-31', 778, 6);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-7-3', 156, 5);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-6-23', 491, 7);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-3-6', 230, 6);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-11-21', 844, 5);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-9-18', 849, 2);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-4-15', 371, 2);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-7-13', 451, 2);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-1-7', 510, 4);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-9-23', 612, 6);
Insert into [Order] (Date, Amount, CustomerId)
values ('2017-10-11', 736, 5);