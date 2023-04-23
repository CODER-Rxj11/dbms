-- ALTER
-- TO CHANGE/MODIFY IN TABLE WHICH IS NOT THEIR ON TIME ON CREATION

-- COLUMNS DROPS BUT NOT DELETE 
-- TABLE MODIFY BUT NOT DELETE

-- DROP => DATA KE SATH STRUCTURE GAYA
-- DELETE => DATA AKELA GAYA STRUCTURE NAHI JAYEGA

create database student;
use student;
create table exam(exam_id int,exam_name int);
desc exam;
select * from exam;
-- ADDING COLUMN IN ALREADY CREATED TABLE
alter table exam add column marks int;
alter table exam modify column exam_name varchar(20);
alter table exam drop column marks;