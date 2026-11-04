--Sales Territory Analysis 
--East Region 
--in store sales;

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
from online_sales;
select *
from inventory_subcategories;
select *
from inventory_categories;

--Question 1 ;
select sum(sale_amount)as revenue, min(transaction_date)as start_date,max(transaction_date) as end_date
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where Region ='East';

--Question 2;
select sum(sale_amount)as revenue, year(transaction_date)as year,month(transaction_date) as month
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where Region ='East'
group by year(transaction_date),month(transaction_date)
order by year(transaction_date),month(transaction_date);

--Question 3;
select sum(sale_amount)as in_store_revenue
from store_sales
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where Region ='East';


select sum(salestotal) as online_revenue
from online_sales
join store_locations
on online_sales.id = store_locations.Storeid
join management 
on store_locations.state = management.state
where region = 'East';








