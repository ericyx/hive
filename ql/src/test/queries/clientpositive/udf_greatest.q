set hive.fetch.task.conversion=more;

DESCRIBE FUNCTION greatest;
DESCRIBE FUNCTION EXTENDED greatest;

EXPLAIN
SELECT GREATEST('a', 'b', 'c'),
       GREATEST('C', 'a', 'B'),
       GREATEST('AAA', 'AaA', 'AAa'),
       GREATEST('A', 'AA', 'AAA'),
       GREATEST('11', '13', '12'),
       GREATEST('11', '2', '12'),
       GREATEST('01', '03', '02'),
       GREATEST('01', '1', '02'),
       GREATEST(null, 'b', 'c' ),
       GREATEST('a', null, 'c'),
       GREATEST('a', 'b', null ),
       GREATEST('a', null, null),
       GREATEST(null, 'b', null),
       GREATEST(cast(null as string), null, null)
FROM src tablesample (1 rows);

SELECT GREATEST('a', 'b', 'c'),
       GREATEST('C', 'a', 'B'),
       GREATEST('AAA', 'AaA', 'AAa'),
       GREATEST('A', 'AA', 'AAA'),
       GREATEST('11', '13', '12'),
       GREATEST('11', '2', '12'),
       GREATEST('01', '03', '02'),
       GREATEST('01', '1', '02'),
       GREATEST(null, 'b', 'c' ),
       GREATEST('a', null, 'c'),
       GREATEST('a', 'b', null ),
       GREATEST('a', null, null),
       GREATEST(null, 'b', null),
       GREATEST(cast(null as string), null, null)
FROM src tablesample (1 rows);

SELECT GREATEST(11, 13, 12),
       GREATEST(1, 13, 2),
       GREATEST(-11, -13, -12),
       GREATEST(1, -13, 2),
       GREATEST(null, 1, 2),
       GREATEST(1, null, 2),
       GREATEST(1, 2, null),
       GREATEST(cast(null as int), null, null)
FROM src tablesample (1 rows);

SELECT GREATEST(11.4, 13.5, 12.2),
       GREATEST(1.0, 13.2, 2.0),
       GREATEST(-11.4, -13.1, -12.2),
       GREATEST(1.0, -13.3, 2.2),
       GREATEST(null, 1.1, 2.2),
       GREATEST(1.1, null, 2.2),
       GREATEST(1.1, 2.2, null),
       GREATEST(cast(null as double), null, null)
FROM src tablesample (1 rows);
