-- 4b. List last names of actors and the number of actors who have that last name,
-- but only for names that are shared by at least two actors

use sakila;

select last_name, count(last_name) as count
from actor
group by last_name
having count > 1