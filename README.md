This demo is tested on Big Data Lite VM 4.11.

* Load CSV files into HDFS
* Create grpah data (PG format) using Hive SQL
* Convert PG data to PGX'x format (opv & ope)
* Load the data into PGX
* Run PGQL queries for checking the structure
* Run matrix factorization for recommendation

### PGQL query (memo)

```
G = session.readGraphWithProperties("graph.edgelist.json")

OR

G = session.readGraphWithProperties("graph.pgx.json")

G.queryPgql(" \
  SELECT c1.id(), c2.id(), m1.id(), m2.id() \
  WHERE (c1)-->(m1)<--(c2), (c1)-->(m2)<--(c2) \
  LIMIT 10 \
").print()

:exit
```
