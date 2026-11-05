

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
--Total Rev $4.3 Million;
--Range from 12/31/2021 to 12/30/2025;



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



select avg(sale_amount) as avg_transaction,categoryid
from store_sales
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join products
on store_sales.prod_Num = products.prodNum
where store_locations.state ='New York'
group by categoryid
order by avg_transaction;

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
--New York City has the highest Revenue of $621k;

select distinct storelocation
from store_locations;

--Question 6;
--Open more locations in New York City since the store in that area is  the highest revenue.





