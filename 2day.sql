select database();

-- chnage to world database
use world;

-- tables
show tables;

-- to see the structure of table
describe city;

-- to print data of a table
select * from city;

-- to access column 
select name, population from city;

-- column can be print in any order
select population, name, district from city;

select name, population, population+10 from city;

-- Query can be written in multiple line
-- Not case sensitive
select name, population, countrycode, population from city;

-- alias(Nickname)
select *, population+10 as 'newpopulation' from country;


-- what is database
-- what is filesystem and how its diffrent from dbms
-- Types of DBMS and the name for each one 
-- DBMS and RDBMS
-- Where Clause