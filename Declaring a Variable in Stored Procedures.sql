alter procedure AddThree -- Create procedure first
@nbr int
as
begin
declare @cnt int;
set @cnt = @nbr

	while @cnt < 10
	Begin
		-- do these as long as @cnt is less than 10
	End

	if @cnt > 0
		Begin
			-- if true,do these statements. if false, skip these statements
		End
	Else
		Begin
			-- do these if false
		End

Print concat('the number is ', @cnt)
	set @cnt = @cnt + 1
Print concat('the number is ', @cnt)
	set @cnt = @cnt + 1
Print concat('the number is ', @cnt)
	set @cnt = @cnt + 1
Print concat('the number is ', @cnt)
	set @cnt = @cnt + 1


end
go
exec addthree @nbr=5;