show databases;
use mysql;

create database regex_l4;
show databases;

use regex_l4;
-- to see the output we use select statement
select database();

show tables;  -- display table inside our database

create table mitansh(salary int, age int);
show tables;
-- to get display information of table use desc.
desc mitansh;

/*
-- to see database
show databases.

-- to print current database
select database();

-- to work with database
use database;

-- to see tables
show tables;

-- create table
create table table_name(column datatype);

-- table(description) -- to see the column name and datatype
describe table_name;
*/