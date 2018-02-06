/*
declare @nbr int = 1;

While @nbr <=10
begin

		if @nbr%2 = 0 begin
			Print concat('the number ', @nbr, ' is EVEN');
		end else begin
			Print concat('the number ', @nbr, ' is ODD');
			end
		
	set @nbr = @nbr + 1;

end
*/
--given a positive single int calculate the factorial
/*
alter procedure Factorial
@fact int = null
as
begin
	if @fact = null begin
		Print 'No data entered';
		Return
		end
declare @nbr int = @fact;
	declare @factorial int = 1;
	While @nbr > 0 BEGIN
		set @factorial = @factorial * @nbr;
		set @nbr = @nbr - 1;
	end
	Print concat('The factorial of ', @fact,' is ', @factorial);
end
go
exec Factorial @fact=5;
*/
alter procedure GPArange
@GPAin decimal(4,1) = null
as
	begin
		if @GPAin is null
		begin
		Print 'No Data entered';
		Return
		end
	print 'GPAin is ' + cast(@gpain as varchar);
	declare @GPAupper decimal(4,1)
	set @GPAupper = @GPAin + 0.3;
	declare @GPAlower decimal(4,1)
	set @GPAlower = @GPAin - 0.4;
Select * from student
where gpa >= @GPAlower and gpa <= @GPAupper;
end
go
exec GPArange @GPAin = 2.7;

--select * from student