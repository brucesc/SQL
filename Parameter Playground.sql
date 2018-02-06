/*
alter procedure HelloWorldSproc
	@Name nvarchar(15) = 'everyone',
	@nbr int = 0
AS
BEGIN
	PRINT concat('Hello, world to ', @Name, ' whose favorite number is ', @nbr); --CAST(@nbr as varchar)
END
go
EXEC HelloWorldSproc @Name='Steven', @nbr=9;
--make a procedure takes int number and doubles it

alter procedure Doubler
	@nbr int = 0
AS
BEGIN
	--Print CAST(@nbr as varchar) + '* 2 = ' + Cast(@nbr*2 as varchar);
	Print concat(@nbr, ' * 2 = ', @nbr*2);
END
go
EXEC Doubler @nbr = 5;
*/
alter procedure addthese
	@nbr1 int = 0,
	@nbr2 int = 0
AS
BEGIN
	Print concat(@nbr1, ' + ', @nbr2, ' = ', @nbr1+@nbr2);
END
go
EXEC addthese @nbr1 = 9959, @nbr2 = 1297;

alter procedure getallstudents
	@GpaGreaterThanOrEqualTo decimal(4,1) = 0.0,
	@SatGTE int = 400,
	@LastName nvarchar(30)
AS
BEGIN
	Select concat(LastName, ', ', FirstName) as 'Name', gpa, sat
	from Student 
	where gpa >= @GpaGreaterThanOrEqualTo
		and sat >= @SatGTE
		and LastName = @LastName
	order by LastName
	
	;

END
go
exec getallstudents @LastName='Xe';
select count(*), max(gpa), min(sat) from student

select dateadd(mm, 14, getdate())

declare @studentid int;
select @studentid = id from student where lastname = 'Xell';
Print N'The ID for student is ' + cast(@studentid as varchar);

