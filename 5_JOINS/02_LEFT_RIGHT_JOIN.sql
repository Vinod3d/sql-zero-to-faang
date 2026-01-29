-- LEFT JOIN and RIGHT JOIN

SELECT * FROM students 
LEFT JOIN courses ON students.id = courses.student_id;

SELECT * FROM students 
RIGHT JOIN courses ON students.id = courses.student_id;
