-- DATE TIME 
-- DATE IS A DATATYPE 
	-- FORMAT YYYY-MM-DD
-- TIME IS ALSO A DATATYPE
	-- FORMAT HH:MM:SS
use student;
show tables;
create table backup(backup_id int, backup_name varchar(20), backup_data date);
desc backup;
insert into backup values (1,'Kanak', '2022-12-11');
select * from backup;