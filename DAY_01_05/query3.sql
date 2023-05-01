to see all databasesstudent
show databases;
select * from student;

create table rgm(
id int primary key not null,
name varchar(30) not null,
college varchar(30) not null,
session varchar(30) ,
contact int not null,
address varchar(100) not null

);

INSERT INTO rgm VALUES(123,"vinay","rgm","python",8919,"nandyal");
INSERT INTO rgm VALUES(124,"yaswanth","srec","java",9581,"gadwal");
INSERT INTO rgm VALUES(125,"sudharsan","prec","fullstack",409048,"nellor");
INSERT INTO rgm VALUES(126,"dileep","jntua","cpp",78932,"kadapa");
INSERT INTO rgm VALUES(127,"suresh","rgm","machinelearning",10258,"kadapa");
INSERT INTO rgm VALUES(128,"charan","srec","python",93654,"kurnool");
INSERT INTO rgm VALUES(129,"shanthan","prec","java",654554,"kadapa");
INSERT INTO rgm VALUES(130,"siva","srec","fullstack",78626,"nandyal");
INSERT INTO rgm VALUES(131,"venu","rgm","python",93654,"kurnool");
INSERT INTO rgm VALUES(132,"uday","rgm","python",87955,"nandyal");
INSERT INTO rgm VALUES(133,"vamsi","rgm","cpp",74652,"hyd");
INSERT INTO rgm VALUES(134,"vinay","prec","java",958123,"kurnool");

select * from rgm

-- update rgm set session="ML", contact=85206 where id=127;



-- copeing data from one table to another table (student -- > test)
 create table test(
student_id int primary key not null,
student_name varchar(30) not null,
student_contact int not null,
student_dept varchar(25) not null
);

insert into test select * from student;
-- to copy data from one table to another schema of both table must be equal
select * from test;

-- to delete all data from tabel without deleting table we use TRUNCATE
truncate table test; -- all data is deleted

select * from test;

-- to delete tuple or row we use delete

delete from student where student_id=105;
select * from student;




-- to change column name we use alter

alter table student rename column student_name to name;

select * from student;
-- to change table name
alter table student rename to RGM_STUDENT;
 select * from RGM_STUDENT;
 
 alter table RGM_STUDENT rename to student;
 
 create database temp;

show databases;
drop database temp;  -- to delete the database
show databases;
-- to ADD column 
alter table student add address varchar(30);
-- address column is add to student table
select * from student;

update student set address = "kurnool";
select * from student;

-- drop the column
alter table student drop column address;

select * from student;



