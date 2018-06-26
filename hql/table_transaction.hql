drop table transaction;
create table transaction (
  card_number string
, product_type string
, txn_amount int
, currency string
, merchant_id int
, txn_date string
, txn_type string
) row format delimited fields terminated by ',';
