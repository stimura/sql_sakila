-- 3b. You realize that some of these actors have tremendously long last names. 
-- Change the data type of the middle_name column to blobs.

use sakila;

alter table actor modify middle_name blob(45);
select * from actor