-- 6b. Use JOIN to display the total amount rung up by each staff member in August of 2005. Use tables staff and payment.

use sakila;

select staff.first_name, staff.last_name,
(select count(*) from payment where staff.staff_id = payment.staff_id )
 as 'payment total' from staff;