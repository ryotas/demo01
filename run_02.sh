#!/bin/bash

echo "*******************************"
echo "Loading sample data into HDFS.."
echo "*******************************"

pg_to_pgx ./data/graph_pg.tsv ./data/graph

