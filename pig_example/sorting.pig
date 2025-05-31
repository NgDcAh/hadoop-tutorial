-- SORTING DEMO

emp = LOAD '/user/root/input/sorting_input.csv' USING PigStorage(',') 
      AS (id:int, name:chararray, salary:int);

-- ORDER BY
ordered = ORDER emp BY salary DESC;

-- LIMIT
top2 = LIMIT ordered 2;

DUMP top2;