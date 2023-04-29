create table sales_man(
	id int primary key not null,
    name varchar(20) not null,
    city varchar(20),
    comission float
    );
insert into sales_man values(5001,"nani","india",0.15),(5002,"dileep","America",0.14),(5003,"vinay","canada",0.13);
select * from sales_man;
select id , name,city,comission from sales_man;