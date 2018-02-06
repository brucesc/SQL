use master
	go
drop database if exists FamilyTree
	go
create database FamilyTree
	go
use FamilyTree
	go

drop table if exists Individual

/*
create table Individual(
Id int primary key identity(1,1),
FirstName nvarchar(30) not null,
LastName nvarchar(30) not null,
[D.O.B] date not null,
Is_GreatGrandParent bit not null default 0,
GreatGrandParentId int foreign key references Individual(Id),
Is_GrandParent bit not null default 0,
GrandParentId int foreign key references Individual(Id),
Is_Parent bit not null default 0,
ParentId int foreign key references Individual(Id),
[Is_Aunt/Uncle] bit not null default 0,
[Aunt/Uncle] int foreign key references Individual(Id),
[Is_Son/Daughter] bit not null default 0,
[Son/DaughterId] int foreign key references Individual(Id),
[Is_Nephew/Niece] bit not null default 0,
[Nephew/NieceId] int foreign key references Individual(Id),
Is_Sibling bit not null default 0,
SiblingId int foreign key references Individual(Id),
Is_Cousin bit not null default 0,
CousinId int foreign key references Individual(Id),
[Is_Grandson/daughter] bit not null default 0,
[Grandson/daughterId] int foreign key references Individual(Id),
[Is_GreatGrandson/daughter] bit not null default 0,
[GreatGrandson/daughterId] int foreign key references Individual(Id),
)
	go

insert into Individual (FirstName, LastName, [D.O.B],
*/

create table Individual (
Id int primary key identity(1,1),
FirstName nvarchar(30) not null,
LastName nvarchar(30) not null,
DOB date, --yyyy/mm/dd
)
go
insert into Individual (FirstName, LastName, DOB)
	values ('Steven', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Charlie', 'Bruce', '2016-10-15')
insert into Individual (FirstName, LastName, DOB)
	values ('Nicole', 'Bruce', '1984-7-28')
insert into Individual (FirstName, LastName, DOB)
	values ('Cassie', 'Bruce', '1986-8-6')
insert into Individual (FirstName, LastName, DOB)
	values ('Pat', 'Hughes', '1963-7-6')
insert into Individual (FirstName, LastName, DOB)
	values ('Jeff', 'Bruce', '1958-7-4')
insert into Individual (FirstName, LastName, DOB)
	values ('Terry', 'Campbell', '1960-5-21')
insert into Individual (FirstName, LastName, DOB)
	values ('Charles', 'Campbell', '1924-9-8')
insert into Individual (FirstName, LastName, DOB)
	values ('Lou', 'Campbell', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Don', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Nancy', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Bonnie', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Doug', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Rob', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Stephanie', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Catlyn', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Jessica', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Sammy', 'Bruce', '1988-7-26')
insert into Individual (FirstName, LastName, DOB)
	values ('Jon', 'Bruce', '1988-7-26')

select * from Individual

create table Parent (
Id int primary key identity(1,1),
IndividualId int foreign key references Individual(Id),
FatherId int foreign key references Individual(Id),
MotherId int foreign key references Individual(Id)
)

Insert into Parent (IndividualId, FatherId, MotherId)
	values (1, 6, 5)
Insert into Parent (IndividualId, FatherId)
	values (2, 1)
Insert into Parent (IndividualId, FatherId, MotherId)
	values (3, 6, 5)
Insert into Parent (IndividualId, FatherId, MotherId)
	values (4, 6, 5)
Insert into Parent (IndividualId, FatherId, MotherId)
	values (5, 8, 9)
Insert into Parent (IndividualId, FatherId, MotherId)
	values (6, 10, 11)
Insert into Parent (IndividualId, FatherId, MotherId)
	values (7, 8, 9)
Insert into Parent (IndividualId, FatherId, MotherId)
	values (12, 10, 11)
Insert into Parent (IndividualId, FatherId, MotherId)
	values (13, 10, 11)
Insert into Parent (IndividualId, FatherId, MotherId)
	values (14, 10, 11)
Insert into Parent (IndividualId, FatherId)
	values (15, 13)
Insert into Parent (IndividualId, FatherId)
	values (16, 13)
Insert into Parent (IndividualId, FatherId)
	values (17, 13)
Insert into Parent (IndividualId, FatherId)
	values (18, 14)
Insert into Parent (IndividualId, MotherId)
	values (19, 12)
select * from Parent

--Ok I want to see who everyones parents are
select 
concat(i.FirstName, ' ', i.Lastname) as 'Name'
--, p.FatherId as 'Father'
--, p.MotherId as 'Mother'
, concat(dad.FirstName, ' ', dad.lastname) as 'Dad'
, concat(mom.FirstName, ' ', mom.lastname) as 'Mom'
from Parent p
	join Individual i
		on i.id = p.Id
	join Individual Dad
		on Dad.id=p.FatherId
	join Individual Mom
		on mom.id=p.MotherId

where FirstName = 'Steven'
