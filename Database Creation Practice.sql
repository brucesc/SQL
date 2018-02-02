use master -- This is best practice for starting a database
go
drop database if  exists Corporate
go
Create database Corporate
go
use Corporate
go

drop table if exists Employee
drop table if exists Manager
drop table if exists Department
go

Create Table Department (
Id int primary key identity(1,1),
Name nvarchar(50) not null,
CostCenter int not null check (CostCenter >= 100000 and CostCenter <=999999),
Active bit not null default 1
)
go

Insert into Department (Name, CostCenter) 
	Values ('Sales', '500000')
Insert into Department (Name, CostCenter) 
	Values ('Research', '350000')
Insert into Department (Name, CostCenter) 
	Values ('Marketing', '400000')
Insert into Department (Name, CostCenter) 
	Values ('Human Resources', '100000')
Insert into Department (Name, CostCenter) 
	Values ('IT', '999999')
go

Create Table Manager (
Id int primary key identity(1,1),
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
DepartmentId int not null foreign key references Department(Id)
)
go

Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Greg', 'Doud', '5')
Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Nate', 'Fucher', '1')
Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Bob', 'Evans', '2')
Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Andrew', 'Mozjer', '4')
Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Chris', 'Brown', '5')
Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Kat', 'Stevens', '3')
Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Steven', 'Bruce', '5')
Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Kara', 'Bruce', '4')
Insert into Manager (FirstName, LastName, DepartmentId)
	Values ('Charlie', 'Bruce', '3')
go

Create Table Employee (
Id int primary key identity(1,1),
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
Birthday datetime not null,
Job nvarchar(50),
ManagerId int not null foreign key references Manager(Id)
)
go

--There are (as of right now) 9 Manager Id's

Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('John', 'Smith', '1989-1-1', 'Essential', '1')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Jane', 'Doe', '1976-1-2', 'Essential', '2')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Frank', 'Smith', '1989-1-1', 'Essential', '3')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Bill', 'Smith', '1989-1-1', 'Essential', '4')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Ted', 'Smith', '1989-1-1', 'Essential', '5')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Lisa', 'Adams', '1989-1-1', 'Essential', '6')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Adam', 'Smith', '1989-1-1', 'Essential', '6')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Joy', 'Faust', '1989-1-1', 'Essential', '7')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Ann', 'Taylor', '1989-1-1', 'Essential', '8')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Calvin', 'Chipmunk', '1989-1-1', 'Essential', '9')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Oscar', 'Martinez', '1989-1-1', 'Essential', '1')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Jack', 'Smith', '1989-1-1', 'Essential', '2')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Katie', 'Harp', '1989-1-1', 'Essential', '3')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Brian', 'Adams', '1989-1-1', 'Essential', '4')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Phillip', 'Smith', '1989-1-1', 'Essential', '5')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('John', 'Wayne', '1989-1-1', 'Essential', '6')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Bruce', 'Hornsby', '1989-1-1', 'Essential', '7')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Ben', 'Franklin', '1989-1-1', 'Essential', '8')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Jerry', 'Curl', '1989-1-1', 'Essential', '9')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Donald', 'Trump', '1989-1-1', 'Essential', '1')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Leslie', 'Kokotech', '1989-1-1', 'Essential', '2')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Pat', 'Hughes', '1989-1-1', 'Essential', '3')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Rick', 'Scott', '1989-1-1', 'Essential', '4')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Emma', 'Jean', '1989-1-1', 'Essential', '5')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('Nathan', 'McCue', '1989-1-1', 'Essential', '6')
Insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	Values ('David', 'Haines', '1989-1-1', 'Essential', '7')

select * from Employee
order by Employee.LastName