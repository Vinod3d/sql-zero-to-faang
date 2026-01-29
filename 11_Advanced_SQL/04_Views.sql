-- Views

CREATE VIEW senior_students AS
SELECT * FROM students WHERE age > 20;

SELECT * FROM senior_students;
