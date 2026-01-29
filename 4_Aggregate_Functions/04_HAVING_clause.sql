-- HAVING Clause

SELECT department, AVG(salary) FROM employees GROUP BY department HAVING AVG(salary) > 50000;
