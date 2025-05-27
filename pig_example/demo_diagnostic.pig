-- Đọc file CSV, chỉ định schema
employees = LOAD '/user/root/input/employees.txt'
  USING PigStorage(',')
  AS (id:int, name:chararray, department:chararray, salary:int);

-- Kiểm tra schema
DESCRIBE employees;

-- Tính lương trung bình theo phòng ban
grouped = GROUP employees BY department;
averages = FOREACH grouped GENERATE
  group AS department,
  AVG(employees.salary) AS avg_salary;

-- Hiển thị kết quả
DUMP averages;

-- Phân tích physical plan
EXPLAIN averages;

-- Minh hoạ từng bước với dữ liệu giả định
ILLUSTRATE averages;
