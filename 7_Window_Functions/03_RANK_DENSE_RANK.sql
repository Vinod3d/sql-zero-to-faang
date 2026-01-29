-- RANK and DENSE_RANK

SELECT name, salary, RANK() OVER (ORDER BY salary DESC) FROM employees;
SELECT name, salary, DENSE_RANK() OVER (ORDER BY salary DESC) FROM employees;
