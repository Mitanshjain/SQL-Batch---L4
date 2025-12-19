use world;
show tables;
select * from country;

-- aggregate functions( to perform the calculation on set of rows ) ( Multi line functions)

-- count
select * from country;
select count(indepyear) from country; -- Not null values count for the row

select count(*) from country; -- if data missing at that time also count row

select count(*), count(indepyear) from country;
select * from country;

select distinct continent,region from country;

select count(population) from country; -- to count how many rows in population
select count(population), sum(population) from country; -- to sum of population we use sum
select count(population), sum(population), avg(population) from country; -- avg to count average of population.

select * from country;

select count(GovernmentForm), count(distinct(GovernmentForm)) from country where continent='asia';

select count(distinct(population)) from country;

select sum(population) from country where continent = 'Africa';


select count(name), sum(population),count(indepyear), count(distinct(indepyear)) from country where continent='africa';

-- get the total country the avg surface area and the total population of the contires which has got independence from the year 1947 to 1998 but not include both this year
select count(name), avg(SurfaceArea), sum(population) from country where indepyear > 1947 and indepyear < 1998 ;

-- get the total number of contries and number of unique continents along with avg population and total number of capitals for the contries starting with a or starting d
select count(name), count(distinct(continent)), avg(population), sum(capital) from country where name like 'a%' or name like 'd%'

select count(name) from country where continent='africa';
select count(name) from country where continent='asia';
select count(name) from country where continent='europe';

-- GROUP BY => GROUP BY is used to group rows that have the same values in one or more columns and then apply aggregate functions to each group.
select continent, count(continent) from country group by Continent; 

select indepyear, count(indepyear) from country group by indepyear;
-- its run on same column none of other.

select continent, count(name), sum(population), max(Population), min(population) from country group by continent;

select * from city;
-- from the city table you have to find the total city is, the total district unique district the total population from the city table

select countrycode,count(*), count(distinct(district)), sum(population) from city group by countrycode;