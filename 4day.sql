show  databases;
use world;
show tables;
desc city;
select * from country;

select name, continent from country where continent='Europe';

select name, continent, region from country where region like '_a%';
select name, continent, region from country where name like '_____%';

select name, continent from country where continent like' _c%i_ ';

select * from country;

-- operator in sql
-- and , or 
-- condition 1 and condition 2 both are true then true
-- if in both conditions but atleast one condition must be true.

select name, continent from country where continent='asia' or continent = 'africa';
select * from country where continent = 'africa' or region ='middle east';
select * from country where continent = 'africa' and region ='middle east';

select * from country where continent='africa' or indepyear='1901';
select * from country where continent='africa' and indepyear='1962';

-- Concat it merko two columns.
select name, code, concat(name, ',' ,code) from country;

-- String function
use world;
select * from country;
select count(name),avg(surfacearea), sum(population) from country where indepyear>1947 and indepyear<1998;

-- get the total number of country the number of unique continents along with avrage popoulation and total number of capitals for the countries which are strating a and starting with d 
select * from country;
SELECT
    COUNT(*) AS total_countries,
    COUNT(DISTINCT continent) AS unique_continents,
    AVG(population) AS average_population,
    COUNT(capital) AS total_capitals
FROM countries
WHERE country_name LIKE 'A%'
   OR country_name LIKE 'D%';

select count(name), count(distinct continent), avg(population), sum(capital) from country where name like 'a%' or name like 'd%'

select count(name) from country where continent='asia';

select count(name) from country where continent='europe'

select continent, count(*) from country group by continent;

select indepyear, count(*) from country group by indepyear;

select continent, count(name), sum(population), avg(population), max(population), min(population), max(indepyear), min(indepyear) from country group by continent;
-- from the city table you have to find the total cities, tottal district unique district the total poppulation from the city table
select * from country;

select countrycode
