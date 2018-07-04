select
  concat('"', card_number, '"')
, ':customer'
, 'user:"true"'
, concat('card_number:', card_number)
, concat('gender:"', gender, '"')
, concat('date_of_birth:"', date_of_birth, '"')
, concat('occupation:"', occupation, '"')
, concat('city:"', city, '"')
, concat('zip_code:', zip_code)
, concat('country:"', country, '"')
, concat('marital_status:"', marital_status, '"')
, concat('credit_limit:', credit_limit)
, concat('card_open_date:"', card_open_date, '"')
from customer
;

select
  concat('"', merchant_id, '"')
, ':merchant'
, 'user:"false"'
, concat('category:"', merchant_category, '"')
, concat('group:"', merchant_group, '"')
, concat('name:"', merchant_name, '"')
, concat('city:"', merchant_city, '"')
from merchant
;

select
  concat('"', card_number, '"')
, concat('"', merchant_id, '"')
, ':purchased'
, 'rating:1.0'
, concat('product_type:"', product_type, '"')
, concat('txn_amount:', txn_amount, '.0')
, concat('currency:"', currency, '"')
, concat('txn_date:"', txn_date, '"')
, concat('txn_type:"', txn_type, '"')
from transaction
;

