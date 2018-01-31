-- Create a list of all Students and their Majors
select s.FirstName, s.LastName, m.Description
from Student s
join Major m
	on s.MajorId = m.Id
-- Display FirstName, LastName, from students taking Math 102
select s.FirstName, s.LastName
from Student s
join schedule sc
	on sc.StudentId = s.Id
join class c
	on sc.ClassId = c.Id
where c.Description = 'Math 102'
-- Display all classes for Students with a major of Math. Need to find who has a major of Math first. Then add all those classes
select concat(FirstName, ' ', LastName) as 'Math Majors', c.Description as 'Class'
from student s
join major m
	on s.MajorId = m.Id
join Schedule sc
	on sc.StudentId = s.Id
join Class c
	on sc.ClassId = c.Id
where m.Description = 'Math'
-- we had to join all 4 tables and use multiple PK and FK