create database lab;
show databases;
use lab;
create table users(user_id int, firstname varchar(50), lastname varchar(50), username varchar(50), followers_count int, following_count int);
select * from users;
drop table users;
drop database lab;
show databases;