select * from pizza_sales;

-- Total Revenue
select SUM(total_price) from pizza_sales;

-- Avarage Order Value
select SUM(total_price) / count(DISTINCT order_id) as Avg_Order_Value FROM pizza_sales;

-- Total Pizza sales 
select SUM(quantity) as Total_Pizza_Sold from pizza_sales;

-- Total Orders
select count(distinct order_id) as Total_orders from pizza_sales;

-- Avarage  Pizzas per Orders;
select cast(CAST(sum(quantity) AS DECIMAL (10,2)) /
CAST(count(distinct order_id) AS decimal(10,2)) as decimal (10,2))  as Avg_Pizza_Per_Order from pizza_sales;

-- Chart requirement
-- 1.Daily Trend Total Orders
select DATENAME(DW,order_date) as order_day, count(DISTINCT order_id) as Total_Orders
from pizza_sales
group by DATENAME(DW,order_date);

--2. Horly Trend for Total Orders;
SELECT DATEPART(HOUR,order_time) as order_hours, COUNT(DISTINCT order_id) as Total_orders
from pizza_sales
group by DATEPART (HOUR,order_time) 
order by DATEPART (HOUR,order_time);

--3. Percentage of sales by pizza category
select pizza_category, sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as PCT
from pizza_sales 
group by pizza_category;

--4.Percentage of sales by pizza size; 
select pizza_size, cast(sum(total_price) * 100 /  (select sum(total_price) from pizza_sales) as decimal (10,2)) as pct
from pizza_sales
group by pizza_size
order by pizza_size desc;

--5.Total pizza by pizza category
select top 5  pizza_name, sum(quantity) as Total_Pizzas_Sold
from pizza_sales
group by pizza_name
order by sum(quantity) asc;

-

--6.Top 5 Best Seller by Total Category;
select top 5 pizza_name, sum(quantity) as Total_Sold
from pizza_sales
group by pizza_name
order by sum(quantity) desc;

-- 7. Bottom 5 Worst by Total Pizza Sold
select pizza_name, sum(quantity) as Total_Pizza_Sold
from pizza_sales 
group by pizza_name
order by sum(quantity) asc;

