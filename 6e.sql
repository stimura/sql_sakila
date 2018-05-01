-- 6e. Using the tables payment and customer and the JOIN command, list the total paid by each customer. 
-- List the customers alphabetically by last name:

use sakila;

select *
from payment
join customer
on (customer.customer_id = payment.customer_id);

select customer.first_name, customer.last_name,
(select sum(amount) from payment where payment.customer_id = customer.customer_id )
 as 'total amount paid' from customer order by last_name;