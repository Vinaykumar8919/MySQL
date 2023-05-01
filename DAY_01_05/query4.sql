--- bulitin functions

SELECT * FROM herovired.student;
select min(marks) from student;
select max(marks) from student;
select sum(marks) from student;
select count(marks) from student;

-- chnaging out put table column name
select sum(marks) as total from student;