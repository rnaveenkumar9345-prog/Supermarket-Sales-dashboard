use supermarket_analysis;
select* from  supermarket_data;

SELECT COUNT(*)
FROM supermarket_data;

select * from supermarket_data where City like "Y%";

SELECT COUNT(*) AS total_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'supermarket_data';


DESCRIBE supermarket_data;
select * from supermarket_data;

Select sum(profit) as total_profit from supermarket_data;

select * from supermarket_data;

SELECT SUM(`Selling price`) AS Total_Sales
FROM supermarket_data;


SELECT SUM(`selling price`) AS Total_Sales
FROM supermarket_data; 


select city, sum(`Selling price`) as total_sales 
from supermarket_data group by city order by total_sales desc; 

select city, sum(buyingprice) as total_buyingprice 
from supermarket_data group by city order by total_buyingprice desc; 

select sum(buyingprice) as total_invest from supermarket_data;

select gender,sum(`selling price`) as total_sales from supermarket_data group by gender;

select `Product line`,sum(`selling price`) as total_sales from 
supermarket_data group by `Product line` order by total_sales desc;

select branch,sum(buyingprice) as total_invest from supermarket_data
 group by branch order by total_invest desc;

SELECT count(*) as total_sales
FROM supermarket_data
WHERE City="Yangon";

select sum(`selling price`) as total_revenue 
from supermarket_data WHERE City="Yangon";


SELECT count(*) as total
FROM supermarket_data
WHERE Rating>=9 ;


select * from supermarket_data;

select `Product line`, sum(buyingprice) as Total_invest from supermarket_data 
group by `Product line` order by Total_invest desc;

select branch,sum(buyingprice) as total_invest from supermarket_data
 group by branch order by total_invest desc;

select `Product line`,round(avg(rating),2) as avg_rating
from supermarket_data group by `Product line` order by avg_rating 
desc;

select `Product line`,sum(Quantity) as total_quantity 
from supermarket_data group by `Product line` order by total_quantity desc;

select gender ,sum(`selling price`) as total_salescount from supermarket_data group by 
gender order by total_salescount;

SELECT COUNT(*)
FROM supermarket_data
WHERE gender = 'female';

select * from supermarket_data where rating >9 ;
SELECT COUNT(*) as total 
FROM supermarket_data
WHERE rating  >9;

 use supermarket_analysis;
 
 select city ,sum(buyingprice) as total_invest 
 from supermarket_data group by city having
 sum(buyingprice)>100000 order by total_invest desc;
 
select * from supermarket_data;

select 
case 
when Rating >=9 then 'excellent'
when Rating >=7 then 'good'
else 'average'
end as Rating_category ,count(*) as total from supermarket_data group by 
Rating_category;

SELECT 
    DATE_FORMAT(Date '%m%d%Y','%Y-%m') AS month,
    SUM(`Selling price`) AS total_monthly_sales
FROM supermarket_data
GROUP BY DATE_FORMAT(Date,'%m%d%Y''%Y-%m')
ORDER BY month ASC;

SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%m/%d/%Y'), '%Y-%m') AS month,
    SUM(`Selling price`) AS total_monthly_sales
FROM supermarket_data

GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%m/%d/%Y'), '%Y-%m')
ORDER BY month ASC;

SELECT Date
FROM supermarket_data
LIMIT 20;

select * from supermarket_data;

select Date ,sum(`Selling price`) as 
total_monthly_sales  from supermarket_data  group by Date order by total_monthly_sales asc;

describe supermarket_data;

select Date ,str_to_date(Date,'%m/%d/y')
converted_Date from supermarket_data limit 10;

alter table supermarket_data modify column date Date;

update supermarket_data  set order_date= str_to_date(Date,'%m/d%/%y');

select * from supermarket_data order by invest desc limit 5;
select max(`selling price`) as highest_sales from supermarket_data; 
select min(`selling price`) as low_sales from supermarket_data;

alter table supermarket_data  rename column sales to buyingprice;

select `Product line`, sum(Quantity) as total_quantity from supermarket_data 
group by `Product line`
order by total_quantity desc LIMIT 1;
















