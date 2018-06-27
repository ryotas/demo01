load data inpath '/user/oracle/customer' into table customer;
select card_number, customer_number, gender from customer limit 10;
