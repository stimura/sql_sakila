-- 3c. Now delete the middle_name column.

use sakila;

alter table actor
drop column middle_name;

select * from actor;