-- 2b. Find all actors whose last name contain the letters GEN:

use sakila;

select first_name, last_name from actor
where last_name like '%G%' and last_name like '%E%' and last_name like '%N%';
