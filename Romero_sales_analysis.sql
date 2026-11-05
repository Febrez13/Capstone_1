

select*
from store_locations;
Select *
from management;
select *
from store_sales;
select*
from shipper_list;
select*
from products;
select *
from inventory_categories;



--Question 1 ;
select sum(sale_amount)as revenue, min(transaction_date)as start_date,max(transaction_date) as end_date
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where management.State ='New York';

--Question 2;


select sum(sale_amount)as revenue, year(transaction_date)as year,month(transaction_date) as month
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where management.state ='New York'
group by year(transaction_date),month(transaction_date)
order by year, month;


--Question 3;
select sum(sale_amount)as revenue, min(transaction_date)as start_date,max(transaction_date) as end_date
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where management.region ='East';
Total $6,723,039.53;

select sum(sale_amount)as revenue, min(transaction_date)as start_date,max(transaction_date) as end_date
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where management.state ='New York';
Total $4,330,817.09;

$6,723,039.53 diveded by $4,330,817.09 x 100 = New York accounted for 64% of the east region;




--Question 4;
select count(*) as transactions, month(transaction_date) as Month,year(transaction_date) as year
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where management.state ='New York'
group by year(transaction_date),month(transaction_date)
order by year, month;


--Question 5;
select sum(sale_amount)as revenue,storelocation
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where management.state ='New York'
group by storelocation
order by revenue desc;


--Question 6;
--Open more locations in New York City since they have the highest revenue;





