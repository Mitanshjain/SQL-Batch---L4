-- select => data retrive/access
-- query => multiple line and in case sensitive
-- where (filter) and or between in like
-- between, in, like(%, _)

-- function 
/*
set of statement, we use function for making code reusable

Scaler function --> it works row by row (result for each row )
Multi line function --> apply on multiple lines and give one or single output 


Scaler can apply => date, int, float, string
*/
-- string function 
-- case conversion 

use world;
select name, continent, upper(name) from country; -- by using upper it makes column in upper case

select name, continent, concat(continent, ' ','regex') from country;  -- concat is used to merge word with columns or row.alter

-- concat_ws => concat with a seprator => it is automatically takes seprator between words 
select name, continent, concat_ws('-', continent, code, 'regex') from country; 

-- substring. (substring) => character extracted based on the position 
select name, substr(name, 2) from country; -- it extract character from specifics.
select name, substr(name, 1,3) from country; -- it gives string aacordingly what we give 

select name, continent from country;

select name, substr(name, 1,1) from country; -- it extract only 1 character
select name, substr(name, 1,2) from country; -- it extract only 2 character

use world;
select name,continent, substr(name,1,1), substr(continent,1,1) from country where substr(name,1,1) = substr(continent,1,1) ;

select name, continent, substr(name,1,3) from country where substr(name,1,3) ='alg'; -- by using substr

select name, continent from country where name like 'alg%'; -- by using like 


-- instr => search position of character
select name, instr(name, 'e') from country;

-- length (how much byte are used that shown by length function). only engling lang use single byte for single character.
select length('是mitansh');

-- to get total character => char_length() 
select char_length('mitansh'); 

select name, char_length(name) from country;

-- trim(extra space or remove extra character from left and right)
-- ltrim(it removes from only left)
-- rtrim(it removes from only right)


select char_length('     mitansh.   ');-- it shows how many character along with spaces.alter

select char_length(trim('     mitansh   '));
select rtrim('     mitansh   '); -- right side
select ltrim('     mitansh   ');-- left side


select trim(both 'g' from '     mitanshggg'); -- it remove 'g' from last

select name, trim(both 'a' from name) from country;

-- lpad and rpad => to create data of fixed characters 
select name, population, lpad(population, 9, '#') from country;
select name, population, rpad(population, 9, '#') from country;