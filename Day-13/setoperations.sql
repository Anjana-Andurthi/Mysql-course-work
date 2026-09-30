-- set operations
create database details12;
use details12;
create table customers (
 id int auto_increment primary key,
 name varchar(50),
 city varchar(50)
);
create table online_customers(
id int,
name varchar(50)
);
create table store_customers(
id int,
name varchar(50)
);
-- insert values
insert into online_customers values
(1,'Rahul'),
(2,'Priya'),
(3,'Arjun'),
(4,'Sneha'),
(5,'Anil'),
(6,'Abdul'),
(7,'Amani');
insert into store_customers values
(1,'Rahul'),
(2,'Priya'),
(3,'Kiran'),
(4,'Anil'),
(5,'Reena'),
(6,'Divya'),
(7,'Abdul'),
(8,'Meena');
-- display both tables
-- union
select name from online_customers
union
select name from store_customers;
-- unionall
select name from online_customers
union all
select name from store_customers;
-- for common elements
select name from online_customers
where name in (select name from store_customers);
-- differnece
select name from online_customers
where name not in (select name from store_customers);