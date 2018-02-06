declare @GPAin decimal(4,1) = 2.5;
declare @GPAupper decimal(4,1);
	set @GPAupper = @GPAin + 0.3;
	declare @GPAlower decimal(4,1);
	set @GPAlower = @GPAin - 0.4;
Select * from student
where @GPAin <= @GPAupper and @GPAin >= @GPAlower;