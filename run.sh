#!/bin/bash

echo "*******************************"
echo "Loading sample data into HDFS.."
echo "*******************************"

hadoop fs -copyFromLocal data/transaction.csv /user/oracle/transaction
hadoop fs -ls /user/oracle/transaction

echo "*********************"
echo "Creating Hive table.."
echo "*********************"

hive -f hql/table_transaction.hql
hive -f hql/load_transaction.hql

echo "*********************"
echo "Creating graph data.."
echo "*********************"

hive -f hql/export_edgelist.hql > ./data/graph_edgelist_tmp.tsv
cat ./data/graph_edgelist_tmp.tsv | sed -e '$d' | sed -e '$d' > ./data/graph_edgelist.tsv
rm ./data/graph_edgelist_tmp.tsv


