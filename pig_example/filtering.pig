-- FILTERING DEMO

emp = LOAD '/user/root/input/filtering_input.csv' USING PigStorage(',') 
      AS (id:int, name:chararray, salary:int);

-- FILTER
high = FILTER emp BY salary > 4500;

-- DISTINCT
distinct_emp = DISTINCT emp;

-- FOREACH
sal_raise = FOREACH emp GENERATE name, salary * 1.1 AS new_salary;

DUMP high;