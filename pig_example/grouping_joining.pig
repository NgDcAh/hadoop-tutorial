-- GROUPING & JOINING DEMO

emp = LOAD '/user/root/input/grouping_joining_employees.csv' USING PigStorage(',') 
      AS (id:int, name:chararray, dept:chararray);

loc = LOAD '/user/root/input/grouping_joining_locations.csv' USING PigStorage(',') 
      AS (dept:chararray, city:chararray);

-- GROUP
grouped = GROUP emp BY dept;
avg_salary = FOREACH grouped GENERATE group AS dept, COUNT(emp) AS emp_count;

-- JOIN
joined = JOIN emp BY dept, loc BY dept;

-- COGROUP
cogrouped = COGROUP emp BY dept, loc BY dept;

-- CROSS (use cautiously!)
crossed = CROSS emp, loc;

DUMP joined;