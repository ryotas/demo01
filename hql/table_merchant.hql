drop table merchant;
create table merchant (
  merchant_id int
, merchant_category string
, merchant_group string
, merchant_name string
, merchant_city string
) row format delimited fields terminated by '\t';
