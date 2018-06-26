select distinct card_number, '*' from transaction;
select distinct merchant_id, '*' from transaction;
select card_number, merchant_id, txn_amount from transaction;
