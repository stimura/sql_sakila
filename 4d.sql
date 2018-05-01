-- 4d. Perhaps we were too hasty in changing GROUCHO to HARPO. 
-- It turns out that GROUCHO was the correct name after all! In a single query, if the first name of the actor is currently HARPO, 
-- change it to GROUCHO. Otherwise, change the first name to MUCHO GROUCHO,
-- as that is exactly what the actor will be with the grievous error. 
-- BE CAREFUL NOT TO CHANGE THE FIRST NAME OF EVERY ACTOR TO MUCHO GROUCHO,
--  HOWEVER! (Hint: update the record using a unique identifier.)
use sakila;

update actor
set first_name = 
case
	when first_name like 'HARPO' then replace(first_name, 'HARPO', 'GROUCHO')
	when first_name like 'GROUCHO' then replace(first_name, 'GROUCHO', 'MUCHO GROUCHO')
	end;