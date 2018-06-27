drop table customer;
create table customer (
  card_number string
, customer_number int
, gender string
, date_of_birth string
, occupation string
, city string
, zip_code int
, country string
, marital_status string
, credit_limit int
, card_open_date string
) row format delimited fields terminated by ',';
