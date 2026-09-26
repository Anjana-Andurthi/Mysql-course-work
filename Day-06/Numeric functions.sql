--     Numeric Functions
-- ===============================
-- 1. Absolute value
select abs(-25) , abs(30);
-- 2.Ceiling / Round Up
select ceil(12.3), ceil(-12.7);
-- 3.Floor/ Round Down
select floor(12.9), floor(-12.3);
-- 4. Round
select round(123.4567, 2) , round(123.4567,3);
-- 5.Truncate
select truncate(123.4567, 2), truncate(123.4567, 3);
-- 6.Power / Exponent
select pow(2,3) , power(5,2);
-- 7. square root
select sqrt(16), sqrt(2);
-- 8. Modulo /  remainder
select mod(10,3);
-- 9. Random number
select rand(),rand(10);
-- 10. Pi constant
select pi();
-- 11. sign
select sign(-25), sign(0),sign(30);
-- 12. greatest values
select greatest(10,25,7,100,56);
-- 13.least value
select least(10,25,7,100,56);

