-- Regular Expressions in SQL

SELECT * FROM users WHERE email REGEXP '^[a-zA-Z0-9]+@example\.com$';
