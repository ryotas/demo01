load data inpath '/user/oracle/merchant' into table merchant;
select merchant_id, merchant_name, merchant_city from merchant limit 10;
