-- project  : Myntra sales Analysis
-- Tools    : MySql workbench
-- Dataset  : Myntra Sales Data (kaggle)
-- Author   : Himanshu Rai  


-- Q1 : View table structure and column details 
describe myntra_sales;

-- Q2 : count Total Number of orders 
select count(*)
as total_order
from myntra_sales;

-- Q3 : Retrieve all unique product categories 
select distinct category
from myntra_sales;

-- Q4 : category-wise order distribution (highest to lowest) 
select category,
count(*) as total_order
from myntra_sales
group by category
order by total_order desc;

-- Q5 : order status breakdown (shipped , cncelled , delivered)  
select status,
count(*) as total_order
from myntra_sales
group by status
order by total_order desc;

-- Q6 : calculated total revenue generated 
select sum(amount) as total_revenue
from myntra_sales;

-- Q7 : calculated average order value  
select avg(amount) as average_order_value
from myntra_sales;

-- Q8 :  top 10 states by number of orders 
select `ship-state`,
count(*) as total_order
from myntra_sales
group by `ship-state`
order by total_order desc
limit 10;

-- Q9  : category- wise total revenue
select category,
sum(amount) as total_revenue
from myntra_sales
group by category
order by total_revenue desc;
 
-- Q10 : orderrs distribution by sales channel
select `sales channel`,
count(*) as total_orders
from myntra_sales
group by `sales channel`
order by total_orders desc;

-- Q11 : Indentify canacelled order patterns 
select status,
count(*) as total_orders
from myntra_sales
where status like '%cancelled%'
group by status
order by total_orders desc;

-- Q12 : top10 state by total revenue 
select `ship-state`,
sum(amount) as total_revenue
from myntra_sales
group by `ship-state`
order by total_revenue desc
limit 10;

-- Q13 : average  oder value by category 
select category,
avg(amount) as average_order_value
from myntra_sales
group by category
order by average_order_value desc;

-- Q14 : category - wise revenue for shipped orders only 
 select  category,
sum(amount) as total_revenue
 from myntra_sales
 where status = 'shipped'
  group by category
 order by total_revenue desc;

-- Q15 : order distribution by fulfilment type
select fulfilment,
count(*) as total_order
from myntra_sales
group by fulfilment
order by total_order desc;

-- Q16 : size-wise order demand analysis
select size,
count(*) as total_order
from myntra_sales
group by size
order by total_order desc;

-- Q17 : top 10 cities by order volume 
select `ship-city`,
count(*) as total_order
from myntra_sales
group by `ship-city`
order by total_order desc
limit 10;

 -- Q18 : revenue breakdown by order status 
select status,
sum(amount) as total_revenue
from myntra_sales
group by status
order by total_revenue desc;

-- Q19 : size-wise total revenue generated 
select size ,
sum(amount) as total_revenue
from myntra_sales
group by size
order by total_revenue desc;

-- Q20 : average order value by category
select category,
avg(amount) as average_order_value
from myntra_sales
group by category
order by average_order_value desc;

-- Q21 : top % cities by total revenue  
select `ship-city`,
sum(amount) as total_revenue
from myntra_sales
group by `ship-city`
order by total_revenue desc
limit 5;

-- Q22 : combined analysis of category and order status 
select category , status,
count(*) as total_order
from myntra_sales
group by category , status
order by total_order desc;
