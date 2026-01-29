-- Correlated Subquery

SELECT name FROM students s1 
WHERE age > (SELECT AVG(age) FROM students s2 WHERE s1.department = s2.department);
