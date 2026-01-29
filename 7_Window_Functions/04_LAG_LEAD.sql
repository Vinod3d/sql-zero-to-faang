-- LAG and LEAD

SELECT name, salary, LAG(salary) OVER (ORDER BY date_hired) FROM employees;
SELECT name, salary, LEAD(salary) OVER (ORDER BY date_hired) FROM employees;
