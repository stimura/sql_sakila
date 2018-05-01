-- 4a. List the last names of actors, as well as how many actors have that last name.

use sakila;

select last_name, count(last_name)
from actor
group by last_name;