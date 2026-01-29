-- SELF JOIN

SELECT a.name, b.name FROM employees a 
JOIN employees b ON a.manager_id = b.id;
