-- deleting european history class: find the class, find the schedule for that class, delete it
delete from Schedule -- change select * to delete and the results is what gets deleted
where ClassId in(
	select id from class
	where description = 'English 101')
select * from Class
where id = 1
delete from Major where id = 3