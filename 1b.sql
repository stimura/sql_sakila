-- 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column Actor Name.

use sakila;

select concat(first_name, " " ,last_name) as Actor_Name from actor