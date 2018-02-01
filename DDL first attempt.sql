create table contact (
ContactId int primary key identity(10,10),
Name varchar(50) not null, Email varchar(80), Phone varchar(12) not null
)
go
insert...