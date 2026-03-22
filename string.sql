create database string;
use string;
drop table data ;
create table data (
name varchar(50),
department varchar(20));
insert into data values ("jiya","aiml"),("sandhya","aiml"),("aditya","cse"),("jeet","it"),("vicky","it");
select * from data ;
-- combine 2 string
select concat("jiya" ," ","sandhya") as freinds ;
-- if want to combine column
select concat (name ," " , department ) as combine from data ;
-- find character length
select char_length("sandhya") as length ;
-- length of whole column
select char_length(name) as length from data ;
-- upper and lower 
select upper (name) as upperName from data ;
select lower(name) as lowerName from data ;
-- finding length
select length(name) as lengthinbytes from data ;
-- replace 



