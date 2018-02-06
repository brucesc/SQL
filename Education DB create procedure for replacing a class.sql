create procedure createscheduleclass;
@OutWithTheOld varchar(50) = null,
@InWithTheNew varchar(50) = null
as
begin
	-- check the parameters
	IF @OutWithTheOld = null or @InWithTheNew = null
	BEGIN
		Print N'OutWithTheOld or InWithTheNew was not supplied and is required';
		Return
	END
	-- if we get here, everything we need we have
	-- add the new class
	Insert into class (Description) values (@InWithTheNew);
	-- get the id for student taking the old class
	select * from schedule s
	join class c on c.id=s.ClassId
	where c.Description = @OutWithTheOld
end
go
exec createscheduleclass;