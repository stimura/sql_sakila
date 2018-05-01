-- 6a. Use JOIN to display the first and last names, as well as the address, of each staff member. Use the tables staff and address:

use sakila;

select * from staff;
select * from address;

select staff.first_name, staff.last_name, staff.address_id, address.address
from staff
inner join address on
staff.address_id = address.address_id