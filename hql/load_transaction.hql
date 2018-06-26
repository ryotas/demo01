load data inpath '/user/oracle/transaction' into table transaction;
select card_number, merchant_id, txn_amount from transaction limit 10;
