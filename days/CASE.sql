use cm;
select * from customers;
select customerName , creditLimit from customers order by creditLimit desc limit 1;
select country, customerName, 
	case 
		when country = 'France' then 'FR'
        when country = 'Australia' then 'AUS'
        else 'NA'
	end as country_code from customers;
