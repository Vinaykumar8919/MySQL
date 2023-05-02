create table car(
car_no int,
car_name varchar(40),
car_price int,
car_quantity int);

insert into car values(110, "tesla x", 9000000, 2);
insert into car values(111, "fortuner", 450000, 10);
insert into car values(112, "bugati", 9999999, 1);
insert into car values(113, "porsche",9999999,2);
select count(car_name), car_price from car group by car_price;

select count(car_name) as name, car_price from car group by car_price;

select count(car_name) from car group by car_price having car_price >800000;



create table visit(
entry_date date, price int, duration int);

insert into visit values('2023-5-1',1000,20),('2023-5-1',2000,21),('2023-5-2', 3000, 23);
select * from visit;


-- extract keyword examples

select extract(year from entry_date) as year, 
extract(month from entry_date) as month,
round(avg(price),2) from visit group by extract(year from entry_date),extract(month from entry_date);


SELECT EXTRACT(YEAR FROM ENTRY_DATE) AS YAER,EXTRACT(MONTH FROM ENTRY_DATE)
AS MONTH,EXTRACT(DAY FROM ENTRY_DATE) AS DAY1,ROUND(AVG(PRICE),2) FROM VISIT GROUP BY
EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE),EXTRACT(DAY FROM ENTRY_DATE) ORDER BY EXTRACT(YEAR FROM ENTRY_DATE),
EXTRACT(MONTH FROM ENTRY_DATE);

select extract(year from entry_date) as year, 
extract(month from entry_date) as month,
round(avg(price),2) from visit group by extract(year from entry_date),extract(month from entry_date) order by extract(year from entry_date),extract(month from entry_date);


 select entry_date, round(avg(price), 3) as avg_price from visit where duration > 10
 group by entry_date having count(*) > 1 order by entry_date;
 
 -- ---------------------------------------------------------------------------


select * from customer;
select city,count(*) as city from customer group by city; 


create table employee(
emp_id int, name varchar(30), age int, country varchar(30) );

insert into employee values(100, "vinay", 35, "america"),(101, "dileep", 40, "russia"),
(102, "sudharsan", 34, "england"),(103, "suresh", 39, "russia");
insert into employee values(104, "yaswanth", 64, "india");

select count(country), country from employee group by country having count(country)>=2;

select country, count(country) from employee group by country  having max(age) <= 30;


create table manager1(
id int, 
name varchar(30),
age int,
gender varchar(10),
salary int );

insert into manager1 values(101, "vinay", 25,"male", 50000), (102, "dileep", 25,"male", 450000),
(103, "sudharsan", 25, "male", 48000), (104, "yaswanth", 30, "male", 58000),
(105, "suresh", 30, "male", 80000), (105, "charan", 26, "male", 64000);
insert into manager1 values(106, "vinay", 25,"male", 50500);
select * from manager1;
select name, sum(salary) as total_salary from manager1 group by name having sum(salary) > 100000 order by name;

select count(age), age from manager1 group by age having count(age)>1;
select gender, max(salary) as max_salary from manager1 group by gender having max(salary) >10000;


-- ----------------PROCEDURE------------------------

DELIMITER //
create procedure GetManagerInfo()
BEGIN
	select * from manager1;
END //
call GetManagerInfo();

DELIMITER //
create procedure GetManagerAge()
BEGIN
	select * from manager1 where age=25;
END //
call GetManagerAge();

select name from manager1 order by rand() limit 2;