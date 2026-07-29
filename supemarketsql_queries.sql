use supermarket_analysis;
select* from  supermarket_data;

SELECT COUNT(*)
FROM supermarket_data;
select sum(seelingprice) 

DESCRIBE supermarket_data;
select * from supermarket_data;

Select sum(profit) as total_profit from supermarket_data;

select * from supermarket_data

SELECT SUM(`selling price`) AS Total_Sales
FROM supermarket_data;


SELECT SUM(`selling price`) AS Total_Sales
FROM supermarket_data; 


select city, sum(`Selling price`) as total_sales 
from supermarket_data group by city order by total_sales desc; 




select city, sum(buyingprice) as total_sales 
from supermarket_data group by city order by total_sales desc; 


select sum(buyingprice) as total_invest from supermarket_data

select gender,sum(invest) as total_sales from supermarket_data group by gender;

select Productline,sum(invest) as total_sales from 
supermarket_data group by Productline order by total_sales desc;

SELECT city,
SUM(buyingprice) AS Total_Sales
FROM supermarket_data
GROUP BY city
ORDER BY Total_Sales DESC;

select branch,sum(invest) as total_sales from supermarket_data
 group by branch order by total_sales desc;

SELECT count(*) as total_sales
FROM supermarket_data
WHERE City="Yangon";

select sum(`selling price`) as total_revenue 
from supermarket_data WHERE City="Yangon";


SELECT count(*) as total
FROM supermarket_data
WHERE Rating>=9 


select * from supermarket_data

select 'product line' , sum(invest) as Total_sales from supermarket_data 
group by 'product line'
order by total_sales desc

select 'Productline',round(avg(rating),2) as avg_rating
from supermarket_data group by 'Productline' order by avg_rating 
desc;

select 'Product line ',sum(Quantity) as total_quantity 
from supermarket_data group by 'Product line' order by total_quantity desc;

select gender,sum(gender) as total_count from supermarket_data group by 

SELECT COUNT(*)
FROM supermarket_data
WHERE gender = 'female';

select * from supermarket_data where rating >9 ;
SELECT COUNT(*) as total 
FROM supermarket_data
WHERE rating  >9;

 use supermarket_analysis
 
 select city ,sum(invest) as total_sales 
 from supermarket_data group by city having
 sum(invest)>100000 order by total_sales desc;
select * from supermarket_data

select 
case 
when Rating >=9 then 'excellent'
when Rating >=7 then 'good'
else 'average'
end as Rating_category ,count(*) as total from supermarket_data group by 
Rating_category

select month (Date) as month_number,sum(invest) as 
total_sales  from supermarket_data  group by month(Date) order by month_number

describe supermarket_data;

select Date ,str_to_date(Date,'%m/%d/y')
converted_Date from supermarket_data limit 10;

alter table supermarket_data modify column date Date;

update supermarket_data  set order_date= str_to_date(Date,'%m/d%/%y');

select * from supermarket_data order by invest desc limit 5;
select max(sales) as highest_sales from supermarket_data 
select min(sales) as low_sales from supermarket_data
alter table supermarket_data  rename column sales to buyingprice;

select `Product line`, sum(Quantity) as total_quantity from supermarket_data 
group by `Product line`
order by total_quantity desc LIMIT 1

use supermarket_analysis;

select * from supermarket_data;















