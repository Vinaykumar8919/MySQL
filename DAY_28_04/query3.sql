select * from rgm;
-- finding all the rows where session is python
--   where

select * from rgm where session="Python";
select name from rgm where college="rgm";
select name,id from rgm where session="java";


-- like 

select * from rgm where name like "s%"; -- finding rows which name starts with "s"
select * from rgm where name like "%y"; --  -- finding rows which name ends with "y"
select * from rgm where name like "%i%";
select * from rgm where name like "___e%";  -- finding rows which has "e" as third  letter in name 
select * from rgm where name not like "%i%"; -- rows which doesn't contain i letter


-- inserting 6 new rows -- 

INSERT INTO rgm VALUES(129,"shanthan","prec","java",654554,"kadapa");
INSERT INTO rgm VALUES(130,"siva","srec","fullstack",78626,"nandyal");
INSERT INTO rgm VALUES(131,"venu","rgm","python",93654,"kurnool");
INSERT INTO rgm VALUES(132,"uday","rgm","python",87955,"nandyal");
INSERT INTO rgm VALUES(133,"vamsi","rgm","cpp",74652,"hyd");
INSERT INTO rgm VALUES(134,"vinay","prec","java",958123,"kurnool");


--    in, where 

select * from rgm where college IN("rgm", "srec");
select * from rgm where address in ("nandyal", "kurnool");
select * from rgm where address not in ("nandyal", "kurnool");

-- AND

select * from rgm where college="rgm" AND session="python";
select * from rgm where college="rgm" AND session="java";



-- new table "student" is created 

create table student(id int primary key, name varchar(20) not null, marks int);

INSERT INTO student VALUES(123, "vinay", 69);
INSERT INTO student VALUES(124, "yaswanth", 32);
INSERT INTO student VALUES(125, "sudharsan", 94);
INSERT INTO student VALUES(126, "dileep", 84);
INSERT INTO student VALUES(127, "suresh", 73);
INSERT INTO student VALUES(128, "charan", 70);

-- =,<>,<=,=> !=

select * from student where marks=94;
select * from student where marks<50;

select * from student where marks>50;
select * from student where marks!=50;
-- order by , between
select * from student where marks BETWEEN 40 AND 90;
select * from student where marks BETWEEN 40 AND 90 order by marks asc;

select * from student where marks BETWEEN 40 AND 90 order by marks desc;

-- distinct

select distinct address from rgm;

select * from rgm where address="kurnool" limit 3;

select count(address), address from rgm group by address;

select count(distinct address) from rgm; -- 6
select count(address) from rgm; -- 12





