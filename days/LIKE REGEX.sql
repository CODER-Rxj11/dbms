-- IS NULL or IS NOT NULL
use cm;
select * from customers;
select * from customers where state is null;
select * from customers where state is not null;

-- BETWEEN - AND 
select * from customers where creditLimit>80000 && creditLimit<120000;
select * from customers where creditLimit>80000 and creditLimit<120000;
select * from customers where creditLimit between 80000 and 120000; -- INCLUSIVE BOTH STARTING AND ENDING PT

-- LIKE
-- TO FIND OUT THE PATTERN IN THE DATABASE OR IN THE COLUMN 
select customerName from customers where customerName like 's%'; -- PATERN MODE => IF CUSTOMER NAME START WITH S THEN SHOW
select customerName from customers where customerName like '%s'; -- PATERN MODE => IF CUSTOMER NAME ENDS WITH S THEN SHOW
select customerName from customers where customerName like '%s%'; -- PATERN MODE => IF CUSTOMER NAME HAVING S THEN SHOW
select customerName from customers where customerName like 's___%';  -- PATERN MODE => IF CUSTOMER NAME START WITH S AND HAVING 4 LETTERS MINIMUM AFTER s
select distinct country from customers where country like 'f_____%'; -- _ => DEPICTS 1 CHARACTER

-- REGEXP => REGULAR EXPRESSION
-- SAME AS LIKE BUT EFFICIENT => LESS OPERATORS BUT MORE FUCNTIONS 
select distinct country from customers where country regexp '^s'; -- STARTING ^ -> CARAT
select distinct country from customers where country regexp 's$'; -- ENDING
select customerName from customers where customerName regexp 'hen?'; -- FOR MATCH MAKING OF ANY PART OF H oR E or N or HE or EN or HEN will display
select customerName from customers where customerName regexp 'gift'; -- FULL PATTERNS
select customerName from customers where customerName regexp 'gifts|co'; -- ANY OF THE PATTER OCCUR THEN SHOW
select customerName from customers where customerName regexp '([abc])';