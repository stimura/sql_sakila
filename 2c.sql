-- 2c. Find all actors whose last names contain the letters LI. 
-- This time, order the rows by last name and first name, in that order:

use sakila;

select first_name, last_name from actor
where last_name like '%L%' and last_name like '%I%' 
order by last_name, first_name