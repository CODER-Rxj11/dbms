use cm;
show tables;
select * from customers;

-- CREATE A VIEW 
create view cust as select customerNumber, customerName, country from customers where customerName like 'b%' with check option;

select * from cust;

-- UPDATE A VIEW
update cust set customerName = 'Atelier' where customerNumber = 103;

-- ALTER FOR VIEWS
create or replace view cust as select customerNumber, customerName, country, state from customers;

-- 
select * from cust where customerName like 'b%' 
with check option;

-- DATA INSERTED WILL ONLY PASS ACCORDING TO THE QUERY INSERTED => WITH CHECK OPTION

create or replace view cust as select customerNumber, 
customerName, country from customers where customerName like 'b%' with check option;

select * from cust ;
insert into cust values (108,'Raghav', 'INDIA'); -- ERROR AS FEILDS ARE FILLED ACCORDING TO THE MAIN TABLE 

drop view cust;


-- -------------------------------------------------------------------------------------------

use student;
show tables;
select * from customers;
create  or replace view copy as select * from customers where c_name like 'r%' with check option;
insert into customers values (1,'RAJ', 'rajkm9111@gmail.com');
insert into customers values (2,'AJAY', 'ajaymeethu@gmail.com');
insert into copy values(3, 'Rajesh', 'rajeshbhai@gmail.com');
select * from copy;
