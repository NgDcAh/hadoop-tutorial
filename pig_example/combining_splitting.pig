-- COMBINING & SPLITTING DEMO

a = LOAD '/user/root/input/combining_splitting_input.csv' USING PigStorage(',') AS (id:int, name:chararray);
b = LOAD '/user/root/input/combining_splitting_input.csv' USING PigStorage(',') AS (id:int, name:chararray);

-- UNION
u = UNION a, b;

-- SPLIT
SPLIT a INTO a1 IF id <= 3, a2 IF id > 3;

DUMP u;