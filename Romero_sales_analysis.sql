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


select sum(sale_amount)as revenue, min(transaction_date)as start_date,max(transaction_date) as end_date
from store_sales 
join store_locations
on store_sales.Store_ID = store_locations.Storeid
join management 
on store_locations.state = management.state
where Region ='East';


