-- 6d. How many copies of the film Hunchback Impossible exist in the inventory system?

use sakila;

select title,
	(select count(*) from inventory where film.film_id = inventory.film_id)
    as 'number of copies' from film where film.title = 'Hunchback Impossible';