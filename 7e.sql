-- 7e. Display the most frequently rented movies in descending order.

use sakila;

select * from film;
select * from inventory;
select * from rental;

select title, count(*)
from film
inner join inventory on inventory.film_id = film.film_id
inner join rental on rental.inventory_id = inventory.inventory_id
group by film.title order by count(*) desc;