# demo01

* Load CSV files into HDFS
* Create grpah data (PG format) using Hive SQL
* Convert PG data to PGX'x format (opv & ope)
* Load the data into PGX
* Run PGQL queries for checking the structure
* Run matrix factorization for recommendation

### PGQL query (memo)

```
G = session.readGraphWithProperties("graph_edgelist.json")

G.queryPgql(" \
  SELECT c1.id(), c2.id(), m1.id(), m2.id() \
  WHERE (c1)-->(m1)<--(c2), (c1)-->(m2)<--(c2) \
  LIMIT 10 \
").print()

:exit
```
