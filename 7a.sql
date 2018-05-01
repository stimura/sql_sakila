-- 7a. The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
-- As an unintended consequence, films starting with the letters K and Q have also soared in popularity. 
-- Use subqueries to display the titles of movies starting with the letters K and Q whose language is English.

use sakila;

select title
from film
where language_id in

	(select language_id
    from language
    where name = 'English')
    
and title like 'K%'
or title like 'Q%';