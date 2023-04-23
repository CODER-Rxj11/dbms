use hr;
select * from employees;
-- BY SELF JOIN WE CAN CREATE NESSARY DUPLICASY FOR FINDING OUT THE DATA
-- FIND OUT THE EMPLOYEES MANAGER FROM EMPLOYEES USING EMPLOYEE TABLE ONLY USING SELF JOIN
select e.first_name as Employee , m.first_name as Manager from employees e, employees m where e.manager_id = m.employee_id;

-- FOR DIFFERENT DATABASE 
create database super_heroes;
use super_heroes;
create table heroes(hero_id int primary key, hero_name varchar(20));
insert into heroes values(1,'Iron Man'), (2,'Thor'),(3,'Captain_america'),(4,'Dead_Pool');
select * from heroes;

create database super_villans;
use super_villans;
create table villans(villan_id int, villan_name varchar(20), hero_id int, foreign key(hero_id) references super_heroes.heroes(hero_id));
insert into villans values(1,'Thanos',3), (2,'Gorr-The God Butcher',2),(3,'Red Skull', 4),(4,'LOki', 1);

select * from super_heroes.heroes h join super_villans.villans v using(hero_id);