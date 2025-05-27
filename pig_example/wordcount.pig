-- Tải dữ liệu từ HDFS
lines = LOAD '/user/root/input/input.txt' AS (line:chararray);

-- Tách từ trong từng dòng văn bản
words = FOREACH lines GENERATE FLATTEN(TOKENIZE(line)) AS word;

-- Gom nhóm theo từ
grouped = GROUP words BY word;

-- Đếm số lượng từ trong mỗi nhóm
counts = FOREACH grouped GENERATE group AS word, COUNT(words) AS count;

-- Hiển thị kết quả ra màn hình
DUMP counts;
