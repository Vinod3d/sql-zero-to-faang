-- Ranking Functions Basics

SELECT name, age, ROW_NUMBER() OVER (ORDER BY age DESC) AS rank FROM students;
