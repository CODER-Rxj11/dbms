-- JOINING MORE THAN TWO TABLES
 
use hr;
show tables;
desc departments;
desc employees;
select * from employees;
select * from departments;
-- USING CLAUSE -> WHEN BOTH TABLE HAVE SAME ATTRIBUTES NAMES
select * from employees join departments using (department_id);
select * from employees e join departments d on e.department_id = d.department_id;
select e.employee_id, d.department_name from employees e join departments d using (department_id);

-- MORE THAN 2 TABLE
select * from employees;
select * from departments;
select * from locations;
-- TO FIND OUT THE EMPLOYEE_ID OF EMPLOYEE TABLE WITH DEPARTMENT_NAME OF DEPARTMENTS TABLE WITH CITY OF LOCATION TABLE 
select e.employee_id, d.department_name, l.city from employees e join departments d using (department_id) join locations l using(location_id);