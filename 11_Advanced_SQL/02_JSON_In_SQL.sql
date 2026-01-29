-- JSON in SQL

SELECT JSON_EXTRACT(data, '$.name') FROM users;
SELECT * FROM users WHERE JSON_EXTRACT(data, '$.age') > 20;
