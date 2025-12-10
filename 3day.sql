select * from city;

-- where clause we will filter the data
select * from city where district='Zuid-Holland';

-- filter city for ARG countrycode
select * from city where countrycode='arg';

-- more than 6 lakh >,<,>=
select * from city where population>600000;

-- countrycode not equal to ARG "!","<>" this is also not equal sign.
select * from city where countrycode!='arg';

select * from country;


select * from country where continent='north america';

select * from country where continent='europe';

-- in operator and getting countries in below continents.
-- in operator => filter the data in the set of specific value.
select * from country where continent in ('North America','Europe','Asia');

select * from country;

-- indepyear
select name, continent, indepyear from country where indepyear in(1901, 1960);

-- Between used to filter on behalf of range
select name, continent, indepyear from country where indepyear between 1901 and 1960;

-- Not Between to filter not year between 1901 and 1960
select name, continent, indepyear from country where indepyear not between 1901 and 1960;

-- between => Range of values
-- in => search in specific value 

select * from country;

-- Get the code the country name and the region where the region is not middle east
-- Get the name indepyear and population with the expected 10% increment in population get all the colums of the country where lifeExpectancy is 38.3 or 66.4 get the name continent population and GNP columns from the table where the population is not from 5000 to 200000.

select name, region from country where region!='Middle East'; 

 select name,population, population*0.1+population from country;
 
 -- Like operator
 -- like => to search pattern
 select name, continent from country where continent='Asia';
 
 -- to meet with pattern 
 -- Special character is called wildcard character
 -- % (we are finding zero or more character )
 
 -- name ending with a 
 select name, continent from country where name like '%a';
 
-- %a% is to find a in whole string.
  select name, continent from country where name like '%a%';
  
-- _ (Underscore) => 1 character
select name, continent from country where name like 'Ira%';

select name, continent from country where name like 'Ira_';

-- Logical operator. 
-- string function from regex video.