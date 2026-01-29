-- OVER Clause

SELECT name, salary, OVER (ORDER BY salary) FROM employees;
