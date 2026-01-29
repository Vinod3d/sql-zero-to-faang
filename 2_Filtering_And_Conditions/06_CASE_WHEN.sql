-- CASE WHEN

SELECT name, age,
    CASE 
        WHEN age < 18 THEN 'Minor'
        WHEN age >= 18 THEN 'Adult'
    END AS age_group
FROM students;
