-- last insert id
create database flipkart;
use flipkart;
-- 1. system functions
select version();
select database();
select user();
-- 2. 
create table customers(
     id int auto_increment primary key,
     name varchar(50),
	 city varchar(50)
);
insert into customers(name,city)
values('Rahul', 'Hyderabad');
select last_insert_id();

insert into customers(name,city)
values('Priya', 'Chennai');
select last_insert_id();


