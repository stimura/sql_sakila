-- 7f. Write a query to display how much business, in dollars, each store brought in.

use sakila;

select store.store_id, sum(amount) as gross
from payment
inner join rental on payment.rental_id = rental.rental_id
inner join inventory on inventory.inventory_id = rental.inventory_id
inner join store on store.store_id = inventory.store_id
group by store.store_id;