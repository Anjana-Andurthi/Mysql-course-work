--              join
-- ================================
-- 1.inner join: to retrieve common records from two r more tables
-- 2.equi : equals to operator
-- 3.not equi: other than equals to 
-- 4. natural: commom columns names 
-- 5. self : join is gng to hpen in same table (same table dft representation)
-- 6.outer join: no common elements
--    left : entire data from left
--    right: entire data frm right data 
--    full: combine both the things
-- 7. cross: combine and combination of each and every table
-- ====================================================================================
CREATE DATABASE join_practice;
USE join_practice;

/*
inner join
equi join
non-equi join
natural join
self join
outer join
	left join
	right join
	full join
cross join
*/
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    caption VARCHAR(255),
    foreign key (user_id) references users(user_id)
);
INSERT INTO users (username, city) VALUES
('rahul', 'Hyderabad'),
('sneha', 'Bangalore'),
('arjun', 'Chennai'),
('meena', 'Mumbai'),
('kiran', 'Delhi'),
('anita', 'Pune'),
('vikram', 'Kolkata'),
('divya', 'Jaipur'),
('rohit', 'Ahmedabad'),
('pooja', 'Lucknow');

INSERT INTO posts (user_id, caption) VALUES
(1, 'Morning workout'),
(2, 'Learning SQL joins'),
(3, 'Data analytics journey'),
(1, 'Weekend trip'),
(4, 'Office presentation'),
(5, 'Startup ideas'),
(1, 'Test post without valid user'),
(3, 'Python practice'),
(7, 'Cloud computing basics'),
(2, 'Another invalid user post');

select * from posts;
select * from users;
-- inner join
select u.username, p.caption
from users u inner join posts p
on u.user_id = p.user_id;
-- equi join
select u.username, p.caption
from users u , posts p
where u.user_id = p.user_id; 
-- natural join
select *
from users
natural join posts;
-- left join
select u.username, p.caption from users u  -- after from it is left table
left join posts p 
on u.user_id = p.user_id;
-- right join
select u.username,p.caption
from users u right join posts p 
on u.user_id = p.user_id;
-- union 
select username as text_data from users
union
select caption from posts;
-- cross join
select u.username, p.caption
from users u
cross join posts p;


