use hr;
show tables;
select * from employees;
select * from employees order by first_name limit 1,10;
select min(salary) from employees;
select first_name, salary from employees order by salary limit 1;
select first_name from employees order by first_name limit 0,10;
use cm;
select * from customers order by creditLimit desc;

