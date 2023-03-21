

select Saledate, Amount, Boxes, Amount/Boxes 'amount per box' from sales;

select * from sales 
where amount > 10000
order by amount desc;

select * from sales
where geoid='g1'
order by PID, amount desc;

select * from sales 
where amount > 10000 and SaleDate >= '2021-01-01';

select SaleDate, Amount from sales
where amount > 10000 and year(SaleDate) =2022
order by amount desc;

select * from sales
where boxes > 0 and boxes <=50 ;

select * from sales
where boxes between 0 and 50;

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'day of week' from sales
where weekday(SaleDate) = 4 ;

select * from people
where team = 'Delish' or team = 'Jucies';

select * from people 
where team in ('Delish','Jucies');

select * from people
where salesperson like '%A%';

select * from sales;

select SaleDate, Amount,
		case	when amount <1000 then 'under 1k'
				when amount <5000 then 'under 5k'
                when amount <10000 then 'under 10k'
			else '10k or more'
		end as 'Amount categories'
from sales;