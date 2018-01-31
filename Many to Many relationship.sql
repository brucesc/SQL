--used concat() to combine first and last name
--we used two joins because table schedule has 2 Foreign Keys that are primary keys of student and class
select concat(s.FirstName, ' ', s.LastName) as 'Name', c.Description as 'Class'
from student s
join Schedule sc
	on s.id = sc.studentid
join class c
	on c.id = sc.ClassId
where s.FirstName = 'Aaron' and s.LastName = 'Zell'