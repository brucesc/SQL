--given a class tell me all the students that are taking that class
alter view StudentsInClass as
select c.Description as 'Class',
	concat(s.FirstName, ' ', s.LastName) as 'Student'
from class c
join Schedule sc
	on c.id = sc.classID
join student s
	on sc.StudentId = s.id
join Major m
	on s.MajorId = m.Id
/*
alter view ClassesForStudent as 
select concat(s.firstname, ' ', s.LastName) as 'Name',
	s.gpa, s.sat, 
	m.Description as 'Major',
	c.Description as 'Class'
from student s
join major m
	on m.id = s.MajorId
join schedule sc
	on sc.StudentId = s.Id
join class c
	on c.id = sc.ClassId
--order by s.FirstName, c.Description

select * from ClassesForStudent
	Where name = 'Greg Doud'
*/