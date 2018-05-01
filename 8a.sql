-- 8a In your new role as an executive, you would like to have an easy way of viewing the Top five genres by gross revenue.
-- Use the solution from the problem above to create a view.

use sakila;

create view top_five_genres as
	select name, sum(amount) as gross
	from category
	inner join film_category on film_category.category_id = category.category_id
	inner join inventory on inventory.film_id = film_category.film_id
	inner join rental on rental.inventory_id = inventory.inventory_id
	inner join payment on payment.rental_id = rental.rental_id
	group by name order by gross desc limit 5;