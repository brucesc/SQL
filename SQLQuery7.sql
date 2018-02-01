--inserts
--insert into student values ('Greg', 'Doud', 3.5, 1250, 3)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('mike', 'smith', 3.4, 1370, 2)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('nate', 'smith', 3.5, 1400, 4)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('chris', 'smith', 2.4, 1600, 1)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('steve', 'bruce', 3.6, 1500, 3)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('bob', 'evans', 3.3, 1600, 2)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('christina','doe', 3.4, 1500, 1)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('michael', 'smith', 3.8, 1300, 4)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('jennifer', 'doe', 3.6, 1300, 5)
--insert into student (FirstName, LastName, GPA, SAT, MajorId) values ('cong', 'smith', 3.8, 1480, 3)

select * from student

select * from class
insert into class (Description) values ('Physics 301')
insert into class (Description) values ('Calculus 201')
insert into class ( Description) values ('Psychology 500')

--sign Greg up for one of the three new classes
insert into schedule (StudentId, ClassId, Grade)
values (5, 16, 'A+')
select * from schedule


