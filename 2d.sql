-- 2d. Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China:

use sakila;

select country_id, country from country
where country in ('Afghanistan', 'Bangladesh', 'China');
