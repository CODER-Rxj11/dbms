-- JOINS

-- TYPES 
-- 1. INNER JOIN => COMMON DATA ONLY
-- 2. LEFT JOIN => 
-- 3. RIGHT JOIN => 
-- 4. CROSS JOIN => 

use school;
show tables;
set sql_safe_updates = 0;
create table customers (c_id int primary key, c_name varchar(30) , email varchar(40));
insert into customers values(1,'Raj', 'Rajkm9111@gmail.com'), (2,'Anuj','anuj06d@gmail.com'),(3,'Priyansh', 'priyanshgup@gmail.com');

use cm;
show tables;
select * from employees;
select * from customers;
select customers.cust_id, customers.cust_name, products.product_name from customers join products on customers.cust_id = product.cust_id;

use school;
show tables;

create table employee (employee_id int primary key, employee_name varchar(20));
insert into employee values (1,'Mansi'),(2,'Raj'),(3,'Rahul');
create table dept (dept_id int , dept_name varchar(30), employee_id int , foreign key(employee_id) references employee(employee_id) on delete cascade);
insert into dept values (101,'HR',3),(102,'Marketing',2),(103,'Finance',1),(104,'Education',null);
select * from employee;
select * from dept;
set sql_safe_updates = 0;
delete from employee where employee_id = 1;
update employee set employee_id = 5 where employee_id = 2; -- ERROR AS CHILDREN IS CONTAINING SOME DATA 
drop table dept;
create table dept (dept_id int , dept_name varchar(30), employee_id int , foreign key(employee_id) references employee(employee_id) on delete cascade on update cascade);
insert into dept values (101,'HR',3),(102,'Marketing',null),(103,'Finance',5),(104,'Education',null);

-- CASCADE 
-- > WHEN SETTING FOREIGN KEY
-- > ALSO USE WHEN ALTER BUT ONLY WHEN FOREIGN KEY IS REPRESENTED AS A NAME


-- JOINING MORE THAN TWO TABLES