use cm;
select * from customers;

-- OR
select customerName, creditLimit from customers  
where creditLimit = (select max(creditLimit) from customers)