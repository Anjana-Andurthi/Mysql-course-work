-- DQL
-- create database
create database flipkart;
use flipkart;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    CreatedAt DATE,
    IsAvailable BOOLEAN
);

-- =========================================
-- 2. INSERT 20 PRODUCTS
-- =========================================y

INSERT INTO Products VALUES
(1, 'iPhone 15', 'Electronics', 80000, 10, '2024-01-10', TRUE),
(2, 'Samsung S24', 'Electronics', 75000, 15, '2024-02-15', TRUE),
(3, 'Dell Laptop', 'Electronics', 65000, 5, '2023-12-01', TRUE),
(4, 'HP Laptop', 'Electronics', 60000, 7, '2023-11-20', TRUE),
(5, 'Office Chair', 'Furniture', 7000, 20, '2024-03-05', TRUE),
(6, 'Study Table', 'Furniture', 12000, 8, '2024-03-12', TRUE),
(7, 'Water Bottle', 'Accessories', 500, 50, '2024-01-01', TRUE),
(8, 'Backpack', 'Accessories', 1500, 30, '2024-02-01', TRUE),
(9, 'Smart Watch', 'Electronics', 15000, 12, '2024-04-01', TRUE),
(10, 'Bluetooth Speaker', 'Electronics', 3000, 25, '2024-04-10', TRUE),
(11, 'Notebook', 'Stationery', 50, 100, '2024-01-05', TRUE),
(12, 'Pen Pack', 'Stationery', 100, 200, '2024-01-08', TRUE),
(13, 'Gaming Mouse', 'Electronics', 2000, 18, '2023-10-10', TRUE),
(14, 'Keyboard', 'Electronics', 2500, 22, '2023-09-15', TRUE),
(15, 'Monitor', 'Electronics', 18000, 6, '2023-08-20', TRUE),
(16, 'Sofa', 'Furniture', 35000, 3, '2023-07-01', TRUE),
(17, 'Dining Table', 'Furniture', 40000, 2, '2023-06-10', FALSE),
(18, 'Headphones', 'Electronics', 5000, 14, '2024-05-01', TRUE),
(19, 'Coffee Mug', 'Accessories', 300, 60, '2024-05-05', TRUE),
(20, 'Tablet', 'Electronics', 30000, 9, '2024-06-01', TRUE);

select * from Products;
select productname from products;
select price from products;
select stock from products;
select category,price,stock from products;
select productid,productname from products;
select productname, createdat, isavailable from products;

-- using where clause
select * from products;
select * from products where category = 'Electronics';
select * from products where stock > 100;
select * from products where price < 5000;
select price as MRP,productname from products;
-- using where , between , and 
select * from products where price between 5000 and 10000;
select * from products where stock between 10 and 40;
select * from products where price between 6000 and 7000;
-- using like
select * from products where productname like 'd%';
select * from products where productname like '%e';
select * from products where productname like '%i%';
-- using in and not in
select * from products where category in('Accessories', 'Furniture');
select * from products where category not in('Accessories', 'Furniture');
-- using orderby 
select * from products order by price asc;
select * from products order by stock;
select * from products order by price  desc;
-- using distinct and limit
select distinct category from products;
select distinct price from products;
select * from products limit 5;

-- ======================================================
--           aggregation functions
-- ======================================================
select sum(price) as totalvalue from products;
select avg(price) as Avgprice from products;
select max(price) as maximum_price from products;
select min(price) as minimum_price from products;
select count(category) from products where category = 'Electronics';
select count(*) as total_rows from products;

select category, count(*) as productcount
from products
group by category;

select category, Max(price) as maximumprice
from products
group by category;

select category, Min(price) as minimumprice
from products
group by category;

select category, sum(price) as Totalprice, sum(stock) as Totalstock
from products
group by category;

select category, avg(stock) as Avgstock
from products
group by category having Avgstock>50;

select category, count(*) as productcount
from products
group by category having productcount<5;

select category ,sum(price) as Total_category_price
from products
group by category having Total_category_price > 5000;

select category, max(stock) as max_stock
from products
group by category having max_stock>50;
-- ===========================================================
--                        Operators
-- ===========================================================
--   Arithmetic Operators
-- =======================
-- Addition
select productname, price, price + (price*0.1) as increasedprice
from products;

-- Substarction
select productname, price, price - (price*0.5) as discountedprice
from products;

-- multiplication
select productname,price, (price*2) as doubleprice
from products;

-- Division 
select productname, price, price/2 as halfprice
from products;

-- Modulus (remainder)
select productname, stock, stock % 2 as stockRemainder
from products;

--      Comparision
-- ========================
-- Equal
select * from products
where category  = 'Furniture';

-- Not Equal
select * from products
where category <> 'Electronics';

-- Greaterthan 
select * from products
where category > '20000';

-- Lessthan 
select * from products
where price < 5000;

-- Greater than or Equal
select * from products
where stock >= 20;

-- Less than or Equal
select * from products
where stock <=10;

-- Is null 
select * from products
where category is null;

-- is not null
select * from products
where category is not null;

--        Logical Operator
-- ====================================
-- AND
select * from products
where price > 10000 and stock > 5;

-- OR
select * from products
where category = 'Furniture' or category = 'Stationary';

-- Not
select * from products
where not category = 'Electronics';

--               BitWise Operators
-- ================================================
-- bitwise And
select 10 & 6 as bitwiseAnd;

-- bitwise or
select 10 | 6 as bitwiseOr;

-- bitwise XOR
select 10 ^ 6 as bitwiseXor;

-- Butwise Not
select ~ 10 as bitwisenot;

-- Leftshift
select 5 << 1 as Leftshift;

-- Rightshift
select 20 >> 2 as Rightshift;

--          Assignment operator
-- ======================================
set @total := 100;
select @total;
select @total as assignedValue;


 

