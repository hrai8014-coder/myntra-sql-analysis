-- describe myntra_sales;

-- select count(*)
-- as total_order
-- from myntra_sales;

-- select distinct category
-- from myntra_sales;

-- select category,
-- count(*) as total_order
-- from myntra_sales
-- group by category
-- order by total_order desc;

-- select status,
-- count(*) as total_order
-- from myntra_sales
-- group by status
-- order by total_order desc;

-- select sum(amount) as total_revenue
-- from myntra_sales;

-- select avg(amount) as average_order_value
-- from myntra_sales;

-- select `ship-state`,
-- count(*) as total_order
-- from myntra_sales
-- group by `ship-state`
-- order by total_order desc
-- limit 10;

-- select category,
-- sum(amount) as total_revenue
-- from myntra_sales
-- group by category
-- order by total_revenue desc;

-- select `sales channel`,
-- count(*) as total_orders
-- from myntra_sales
-- group by `sales channel`
-- order by total_orders desc;

-- select status,
-- count(*) as total_orders
-- from myntra_sales
-- where status like '%cancelled%'
-- group by status
-- order by total_orders desc;

-- select `ship-state`,
-- sum(amount) as total_revenue
-- from myntra_sales
-- group by `ship-state`
-- order by total_revenue desc
-- limit 10;

-- select category,
-- avg(amount) as average_order_value
-- from myntra_sales
-- group by category
-- order by average_order_value desc;

--  select  category,
-- sum(amount) as total_revenue
--  from myntra_sales
--  where status = 'shipped'
--   group by category
--  order by total_revenue desc;

-- select fulfilment,
-- count(*) as total_order
-- from myntra_sales
-- group by fulfilment
-- order by total_order desc;

-- select size,
-- count(*) as total_order
-- from myntra_sales
-- group by size
-- order by total_order desc;

-- select `ship-city`,
-- count(*) as total_order
-- from myntra_sales
-- group by `ship-city`
-- order by total_order desc
-- limit 10;

-- select status,
-- sum(amount) as total_revenue
-- from myntra_sales
-- group by status
-- order by total_revenue desc;

-- select size ,
-- sum(amount) as total_revenue
-- from myntra_sales
-- group by size
-- order by total_revenue desc;

-- select category,
-- avg(amount) as average_order_value
-- from myntra_sales
-- group by category
-- order by average_order_value desc;

-- select `ship-city`,
-- sum(amount) as total_revenue
-- from myntra_sales
-- group by `ship-city`
-- order by total_revenue desc
-- limit 5;

select category , status,
count(*) as total_order
from myntra_sales
group by category , status
order by total_order desc;
