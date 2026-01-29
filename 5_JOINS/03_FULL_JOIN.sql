-- FULL JOIN

SELECT * FROM students 
FULL OUTER JOIN courses ON students.id = courses.student_id;
