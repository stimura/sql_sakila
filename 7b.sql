-- 7b. Use subqueries to display all actors who appear in the film Alone Trip.
use sakila;

select first_name, last_name
from actor
where actor_id in
	(select actor_id
    from film_actor
    where film_id in
		(select film_id
        from film
        where title = 'ALONE TRIP'
        )
	);
