-- JOIN
use hr;
show tables;
select * from employees;
select * from departments;
select * from locations;
select * from jobs;
-- 1
select * from departments where department_id = (select department_id from employees where employee_id = 100);
-- 2
select city, location_id from locations;
-- 3
select e.employee_id , e.first_name, j.job_title, (j.max_salary-e.salary) as SalaryDifference from employees e inner join jobs j on e.job_id = j.job_id;
-- 4
