select distinct card_number, '*', 'true' from transaction;
select distinct merchant_id, '*', 'false' from transaction;
select card_number, merchant_id, txn_amount from transaction;
