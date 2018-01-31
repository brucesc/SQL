-- Aaron didnt get a 1250 on SAT he got a 1450 so we need to update that
update student set
SAT = 1450
where id = 1

-- Cory's last name was wrong, change it to Xey
update student set
	LastName = 'Xey'
	where id = 3
	select * from student

--Bill is going to change majors to be in the same major as Aaron (Math)
update student set
	MajorId = 3
	where id = 2

-- All student GPA's had a bug. GPA's need to be increased by .1
update student set
GPA = GPA + 0.1

-- Devin doesn't like his major, unsure what to change to. Set to undecided
update student set
	MajorId = NULL
	where id = 4
select * from student

-- change description on Micro and Macro Economics to have 301
update class set
Description = Description + ' 301'
where id in (7, 8)

-- select * from class
-- where id in (select id from class where

select * from Class