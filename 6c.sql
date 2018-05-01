-- 6c. List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join.

use sakila;

select film.film_id, film.title, film_actor.actor_id, film_actor.film_id
from film
inner join film_actor on 
film.film_id = film_actor.film_id;

select title,
(select count(*) from film_actor where film_actor.film_id = film.film_id)
as 'actor total' from film;