-- 4c. Oh, no! The actor HARPO WILLIAMS was accidentally entered in the actor table as GROUCHO WILLIAMS.
-- Write a query to fix the record.

use sakila;

update actor
set first_name = 'HARPO' where first_name = 'GROUCHO' and last_name = 'WILLIAMS';

select * from actor
where first_name = 'HARPO'