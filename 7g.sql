-- 7g. Write a query to display for each store its store ID, city, and country.

use sakila;

select store.store_id, city.city, country.country
from store
inner join address on address.address_id = store.address_id
inner join city on city.city_id = address.city_id
inner join country on country.country_id = city.country_id;