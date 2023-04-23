use cm;
select * from customers;
select count(customerName) from customers;
select min(creditLimit) from customers;
select customerName, creditLimit from customers order by creditLimit limit 1;
select count(customerName), country from customers group by country;
select count(*) , country from customers group by country having country = 'france';
select count(*) , country from customers group by country having count(*) < 5 order by country limit 1;
select count(*) , country from customers group by country having count(*) < 5 order by count(*);