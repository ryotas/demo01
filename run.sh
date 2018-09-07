#!/bin/bash

echo "*******************************"
echo "Loading sample data into HDFS.."
echo "*******************************"

hadoop fs -copyFromLocal data/transaction.csv /user/oracle/transaction
hadoop fs -ls /user/oracle/transaction
hadoop fs -copyFromLocal data/customer.csv /user/oracle/customer
hadoop fs -ls /user/oracle/customer
hadoop fs -copyFromLocal data/merchant.tsv /user/oracle/merchant
hadoop fs -ls /user/oracle/merchant

echo "*********************"
echo "Creating Hive table.."
echo "*********************"

hive -f hql/table_transaction.hql
hive -f hql/load_transaction.hql
hive -f hql/table_customer.hql
hive -f hql/load_customer.hql
hive -f hql/table_merchant.hql
hive -f hql/load_merchant.hql

echo "*********************"
echo "Creating graph data.."
echo "*********************"

hive -f hql/export_edgelist.hql > ./data/graph.edgelist.tmp
cat ./data/graph.edgelist.tmp | sed -e '$d' | sed -e '$d' > ./data/graph.edgelist
rm ./data/graph.edgelist.tmp

hive -f hql/export_pg.hql > ./data/graph.pg.tmp
cat ./data/graph.pg.tmp | sed -e '$d' | sed -e '$d' > ./data/graph.pg
rm ./data/graph.pg.tmp

echo "*******************************"
echo "Convert PG to PGX.."
echo "*******************************"

pg2pgx ./data/graph.pg ./data/graph
