use world;
show databases;
select * from country;

-- numeric function, dates
select lifeexpectancy from country;
select lifeexpectancy, round(lifeexpectancy) from country; -- round function makes round off numeric values.

select 83.62, round(83.62);
select 83.62, round(83.62,1); -- it gives 83.6 due to we write 1 so it change to 6
select 83.62, round(83.687,2);

select 456.23, round(456.23,-1);
select 456.23, round(6.23,-1);

select 456.23, round(456.23,-2);

select 456.23, truncate(456.23,1);  -- truncate => it is used to extract value after decimal
select 457.67, round(456.68,1), truncate(456.67,1), mod(43,1);

select pow(2,3), ceil(3.00008), floor(3.9999);

-- date
-- inbuilt date and time we can print
select now(), curdate(), current_timestamp(), current_time();

-- add date
select now(), adddate(now(),2), adddate(now(),interval 3 month);-- it add months
select now(), adddate(now(),2), adddate(now(),interval -3 month); -- it reduce month

select now(), subdate(now(), 2);   -- it reduce day by 2

select now(), extract(year from now());   -- use extract to get year from table 
select now(), extract(month from now());  -- use extract to get month from table
select now(), extract(week from now());   -- use extract to get week from table

select now(), date_format(now(), 'Month is %M & Year is %Y');  -- to get month and year
select now(), date_format(now(), 'Month is %M & week is %W'); -- to get month and week


select distinct(continent) from country; -- removes duplicacy from table use distinct

select continent from country;  -- It gives whole continent with duplicacy

select count(*) from country;  -- it counts how many countries
select count(name) from country;

select count(name), count(distinct(name)) from country;

select count(continent), count(distinct(continent)) from country;




