select adddate('2022-12-07 05:55:12', interval 2 minute);
select adddate(now(),interval 2 minute);
select curdate();
select curtime();
select date();
select date(now()); -- 2022-12-07 
select datediff(now(),curtime());
select date_format(curdate(),'%a , %D %b %Y') as Today;
select date_sub(curdate(), interval 2 day);
select datediff('2022-12-09', '2022-12-08') as Difference;
select str_to_date('Wed , 7th Dec 2022','%a , %D %b %Y');
