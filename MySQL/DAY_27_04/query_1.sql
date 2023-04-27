-- creating data base with rgm name
-- create database rgm;student

-- create table student(
-- student_id int primary key not null,
-- student_name varchar(30) not null,
-- student_contact int not null,
-- student_dept varchar(25) not null
-- );
-- SELECT * FROM rgm.student;

-- INSERT INTO student(student_id,student_name,student_contact,student_dept)
-- VALUES(100,"vinay",891948,"CSE");

-- SELECT * FROM rgm.student;
-- INSERT INTO student VALUES(100,"vinay",891948,"CSE"); --it gives error duplicate entry "100" for key
-- INSERT INTO student VALUES(101,"vinay",891948,"CSE"); -- another way to insert values
-- INSERT INTO student VALUES(102,"kumar",8918,"CSE");
INSERT INTO student VALUES(103,"sudhrsan",97877,"CSE");
INSERT INTO student VALUES(104,"dileep",87888,"CSE");
SELECT * FROM rgm.student;

INSERT INTO student VALUES(105,"suresh",97447,"CSE");
INSERT INTO student VALUES(106,"yaswanth",87888,"CSE");

INSERT INTO student VALUES(107,"shanthan",9547,"MECH"),(108,"charan",853458,"EEE");