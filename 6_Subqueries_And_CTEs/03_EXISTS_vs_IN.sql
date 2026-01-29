-- EXISTS vs IN

SELECT * FROM students WHERE id IN (SELECT student_id FROM enrollments);
SELECT * FROM students WHERE EXISTS (SELECT 1 FROM enrollments WHERE student_id = students.id);
