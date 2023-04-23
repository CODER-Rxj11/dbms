create user 'Priyansh'@'localhost' identified by 'priya@123';

select * from mysql.user;

grant select , create on * . * to 'Priyansh'@'localhost';

show grants for 'Priyansh'@'localhost';

revoke select , create on hr.employees from 'Priyansh'@'localhost';