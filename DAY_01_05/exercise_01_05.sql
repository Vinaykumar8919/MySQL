create database exercise;
create table customer(id int primary key,name varchar(30), city varchar(30), grade int, salesman_id int);
insert into customer values(101, "vinay", "delhi", 29,201);
insert into customer values(102, "suresh", "kolkatha", 45,202);
insert into customer values(103, "charan", "hyderbad", 81,203);
insert into customer values(104, "shanthan", "mumbai", 65,204);
insert into customer values(105, "yaswanth", "gadwal", 34,205);
insert into customer values(106, "sudhrsan", "bangolre", 85,206);
insert into customer values(107, "dileep", "kurnool", 32,207);
insert into customer values(108, "siva", "chennai", 101,208);


-- write a sql query to find out the details of the customer whose grade are above 100;

select * from customer where grade>50 order by grade;
desc customer;

-- - write a sql query to find out names of the customer whose grade are above 100 or city is hyderbad;
select name from customer where city="hyderbad" or grade>100;
select * from customer where city="hyderbad" or grade>100;

-- write a sql query to find customer details who are either from kerala city or who do not have grade more than 100
select * from customer where city="kerala" or grade<100;
select * from customer where city="kerala" or not grade>100;

CREATE TABLE  ORDERS(order_num int,purchase_amount int ,order_date date,customer_id int,salesman_id int);
insert into ORDERS values(201,1000,'2023-01-20',100,200),
(202,1500,'2023-04-01',101,201),(203,1000,'2023-04-23',103,203),
(204,2000,'2023-01-01',104,204),(205,1700,'2023-03-01',104,204);



select * from ORDERS;

create table salesman(
salesman_id int primary key,
name varchar(30),
city varchar(30),
commission float);

insert into salesman values(200,"suresh", "kurnool",0.45),(201,"vinay","nandyal",0.65),(202,"charan","hyd",0.83);

-- to find salesman details whose commissiom are within the range 0.23 to 0.43

select * from salesman where commission between 0.23 and 0.43;

-- find out the salesman name whose name starts with s letter
select * from salesman where name like "k%";

-- ceate new column address insert some data in that address and display all those address in descending order
alter table salesman add address varchar(30);
update salesman set address = "new delhi" where salesman_id=200;
update salesman set address = "kolkatha" where salesman_id=201;
update salesman set address = "mumbai" where salesman_id=202;
select * from salesman;
select * from salesman order by address desc;

select address from salesman order by address desc;

select address as salesman_address from salesman order by address desc;
