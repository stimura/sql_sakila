## 5a. You cannot locate the schema of the address table. Which query would you use to re-create it?

-- NOTE: CODE NOT EXPECTED TO RUN JUST ANSWER THE QUESTION ABOVE
create table address (
	address_id smallint(5),
    address varchar(50),
    address2 varchar(50),
    district varchar(20),
    city_id smallint(5),
    postal_code varchar(10),
    phone varchar(20),
    location geometry,
    last_update timestamp
	);