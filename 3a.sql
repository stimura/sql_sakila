-- 3a. Add a middle_name column to the table actor. Position it between first_name and last_name.
-- Hint: you will need to specify the data type.

use sakila;

alter table actor
add middle_name varchar(45);

alter table actor modify middle_name varchar(45) after first_name;
select * from actor