use student;
show tables;
create table customers(c_id int primary key , c_name varchar(20), email varchar(20) not null unique);
desc customers;
create table products(p_id int, p_name varchar(20), c_id int , foreign key(c_id) references customers(c_id));
desc products; -- MUL MEANS MULTIPLE KEY ,i.e., FOREIGN KEY

use hr;
show tables;
select * from employees;
select * from employees where salary = (select max(salary) from employees); -- SUBQUERY IN SINGLE TABLE

-- FOR MULTIPLE TABLE SUBQUERY IS ONLY POSSIBLE BECZ OF FOREIGN KEY

