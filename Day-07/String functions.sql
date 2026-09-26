--              String Function
-- ===========================================
-- 1. char_length(str) or character_length(str)
select char_length('Hello');
select char_length('😊');

-- 2. concat(str1, str2,......)
select concat('My','SQL');
select concat('Python', ' ', 'programming',' ', 'lang');

-- 3. concat_ws(separator, str1, str2,...)
select concat_ws('-', '2025', '09', '23');
select concat_ws(', ', 'python', 'java' , 'dsa','html');

-- 4. Upper(str)
select upper('hello');

-- 5. Lower(str)
select lower('HELLO');

-- 6. left(str, len)
select left('Database', 5);

-- 7. right(str, len)
select right('Database',2);

-- 8. substring(str, start, length)
select substring('Database', 5);
select substring('python programming lang', 10,7);

-- 9. locate(substr, str)
select locate('a', 'Database');

-- 10. replace(str, from_str, to_str)
select replace('xxxxxxxxxxxxxxxHexxxxxlloxxx', 'x', '');

-- 11. Trim([leading | trailing | both]remstr from str)
select trim('Hello     world         ');

-- 12. ltrim(str)
select ltrim('Hello');

-- 13. rtrim(str)
select rtrim('Hello');

-- 14. Reverse(str)
select reverse('MySQL');

-- 15. Lpad(str, len, padstr)
select lpad('1238', 10, '-');

-- 16. Rpad(str, len, padstr)
select rpad('123', 8, '*');

-- 17. repeat(str, count)
select repeat('MySQL-', 3);