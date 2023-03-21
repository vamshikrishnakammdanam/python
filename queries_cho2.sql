select s.SaleDate, s.Amount, p.Salesperson,s.SPID,p.SPID
from sales as s
join people as p on p.SPID = s.SPID ;

 select s.SaleDate, s.Amount, p.Salesperson, pr.Product,p.Team
 from sales s
 join people p on p.SPID = s.SPID
 left join products pr on pr.PID = s.PID;
 
 select s.SaleDate, s.Amount, p.Salesperson,pr.Product, p.Team
 from sales s
 join people p on p.SPID = s.SPID
 join products pr on pr.PID = s.PID
 where s.Amount < 500 and  p.Team ='';
 
 
select s.SaleDate, s.Amount, p.Salesperson,pr.Product, p.Team, g.Geo
 from sales s
 join people p on p.SPID = s.SPID
 join products pr on pr.PID = s.PID
 right join geo g on g.GeoID = s.GeoID
 where s.Amount < 500 and  p.Team ='' 
 and g.Geo in ('New Zealand ','India')
 order by SaleDate;
 
select g.geo, sum(amount), avg(amount), sum(boxes)
from sales s
join geo g on s.GeoID = g.GeoID
group by g.geo;

select pr.Category, p.Team, sum(Boxes),sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.Team<> ''
group by pr.category, p.team
order by pr.category, p.team;
 
 
 select pr.Product, sum(s.Amount) as 'Total Amount'
 from sales s
 join products pr on pr.pid = s.pid
 group by pr.Product 
 order by 'Total Amount' desc
 limit 10;