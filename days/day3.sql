create database flipkart;
use flipkart;
create table customers(customer_id int  primary key auto_increment, firstname varchar(50) not null, lastname varchar(50) default 'NA', email varchar(30) not null unique, order_count int not null default 0, total_sales int not null default 0);
insert into customers values(1,"Raj","Malpani","rajkm9111@gmail.com", 21,69);
insert into customers values(1,"Raj","Malpani","rajkm9111@gmail.com", 21,69);
insert into customers values(2,"Raju","Malpan","rajkm9111@gmail.om", 21,69);-- DUPLICATE ENTRY 2 FOR PRIMARY KEY
insert into customers values("Raj","Malpani","rajkm9111@gmail.com", 21,69);-- COLUMN COUNT DOESNT MATCH VALUE COUNT AT ROW 1
insert into customers values(4,"Raj","Malpani","rajkm9111@gmail.com", 21,69);-- DUPLICATE ENTRY rajkm9111@gmail.com
select * from customers;