--                                 Transaction
--                            =========================
-- Group of sql operations / queries
-- ACID properties : A- atomicity: Either all operations happen or none happen.
--                   C-The database must remain in a valid state before and after a transaction.
--                   I-Multiple transactions can run at the same time without interfering with each other
--                   D-Once a transaction is COMMITTED, the changes are permanently saved.
-- Step:1 Create databse
create database if not exists BankDB;
use BankDB;
-- step 2: create Table
create table Accounts(
Acc_no int primary key,
Name varchar(50),
Balance decimal(10,2)
);
-- step 3: Insert Sample data
insert into Accounts values
(101,'Arjun',15000.00),
(102,'Priya',10000.00);
-- check initial data
select  * from Accounts;
select @@autocommit;
set autocommit = 0;
-- Example 1 : successful transaction (commit)
start transaction;
-- deduct 5000 from Arjun
update Accounts
set Balance = Balance - 5000
where Acc_no = 101;
-- Add 5000 to priya
update Accounts
set Balance = Balance + 5000
where Acc_no = 102;
-- check before commit
select * from Accounts;
-- save changes permently
commit;
-- Rollback
start transaction;
-- deduct 2000 from arjun
update Accounts
set Balance = Balance- 2000
where Acc_no = 101;
-- check Before Rollback 
select * from Accounts;
-- cancel Transaction
rollback;
-- check after rollback(balance should be changed)

-- save point
Start transaction;
-- step 1: Deduct 1000
update Accounts
set Balance = Balance - 1000
where Acc_no = 101;
select * from  Accounts;
-- create savepoint 
savepoint after_deduction;
-- step 2: Add 1000
update Accounts
set Balance = Balance +1000
where Acc_no = 102;
select * from accounts;
-- suppose something goes wrong
-- rollback only to savepoint
rollback to after_deduction;
-- final commit
commit;
-- final data heck
select * from Accounts;



  
