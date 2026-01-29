-- Stored Procedures

CREATE PROCEDURE GetStudentsByAge(IN age_param INT)
BEGIN
    SELECT * FROM students WHERE age > age_param;
END;

CALL GetStudentsByAge(20);
