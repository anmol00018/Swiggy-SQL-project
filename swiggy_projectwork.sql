use restaurants;
select * from swiggy;

-- 1.Highest Average Ratings

select Restaurant,`Avg ratings` from swiggy  order by `Avg ratings` desc limit 10 ;
 
-- 2. Most Total Ratings

select Restaurant ,`Total ratings` from swiggy order by `Total ratings` desc limit 10;


-- 3.Distribution of Delivery Times

select "Delivery time",count(*) as frequency  from swiggy 
group by "Delivery time" order by "Delivery time";

-- 4. Average Delivery Time per Area

select Area,round(avg(`Delivery time`),2) as avg_delivery_time from swiggy group by Area order by avg_delivery_time desc limit 10;


-- 5. Best-Rated Cities

select City,round(avg(`Total ratings`),2) as avg_city_ratings from swiggy group by City order by avg_city_ratings desc limit 10;

-- Price & Value
-- 6. Relationship Between Price and Rating
 
 select Price,`Avg ratings` from swiggy where price >3;


--  7.High Ratings, Low Price (Value-for-Money)
 
select  Restaurant, price,`Avg ratings` from swiggy where `Avg ratings`>=4 order by price asc limit 10 ;

--  8.Price by Area or Food Type

select Area,avg(Price) as price_Area from swiggy group by Area order by price_Area desc limit 5 ;

--  8.Price by Area or Food Type

select "Food Type",round( avg(Price),2) as avg_price from swiggy group by "Food type" order by avg_price desc limit 5 ;


-- 🍲 Cuisine Insights
-- 9. Most Common Food Types (split needed if multiple types in one string)

select `Food type`,count(*) as count from swiggy group by `Food type` order by count desc limit 10 ;

--  10.Highest Average Ratings by Cuisine
 
select Restaurant,round(avg(`Avg ratings`),2) as avg_ratings,count(*) as num_restaurant from swiggy group by Restaurant having count(*)>= 4 order by avg_ratings desc limit 10;


-- 11. Do Certain Cuisines Have Longer Delivery.
 

select Restaurant,round(avg(`Delivery time`),2) as avg_deliver_time from swiggy group by Restaurant order by avg_deliver_time desc limit 10 ;
 
 
-- 12. Specialized Cuisine Restaurants (1-2 food types only)

select Restaurant,`Food type` from swiggy where length(`Food type`)- length(replace(`Food type`,',','')) < 2;

			-- Location-Specific
-- 13. Best-Rated Areas
 
select Area,round(avg(`Total ratings`),2) as avg_total_ratings from swiggy group by Area order by avg_total_ratings desc limit 5;

-- 14. Highest Average Prices by Area

select Area,round(avg(Price),2) as avg_area_price  from swiggy group by Area order by avg_area_price desc limit 10;


			-- Data Quality Checks
-- 15. Duplicate Restaurant Names
 
select Restaurant,count(*) as count from swiggy group by Restaurant having count > 4 order by count desc ; 


-- 16.Outliers in Price
 
 select Restaurant,price from swiggy where price > 100 order by Price desc limit 6;

-- 17. Outliers in Delivery Time

select Restaurant,`Delivery time`from swiggy where `Delivery time` > 50  order by `Delivery time` desc limit 8 ;

-- 18. Suspicious Entries (Price = 0 or Ratings = 0)

 select * from swiggy where Price = 0 or  `Total ratings`=0 ;