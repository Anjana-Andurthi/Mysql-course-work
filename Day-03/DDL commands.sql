create database instagram;
use instagram;
show databases;
create table users(
userID int primary key,
username varchar(50) unique not null,
fullname varchar(50) not null,
email varchar(100) unique not null,
password varchar(20) not null,
bio text,
isverified bool default False,
createdAt datetime default current_timestamp
);

desc users;

-- adding column
alter table users
add column phonenumber varchar(15);
-- modify 
alter table users
modify column fullname varchar(150);
-- changing column name
alter table users
change column bio biography text;
-- drop column
alter table users
drop column phonenumber;

alter table users
rename to userInfo;
desc userInfo;

truncate table userInfo; -- delete all the data
drop table userInfo;
drop table posts;
