USE final_mysq;

-- The average grade that is given by each professor 

SELECT professor_name AS "Professor", AVG(grade_value) AS "Average Grade"
FROM courses
JOIN professors
ON courses.course_professor_id = professor_id
JOIN grades
ON courses.course_id = grade_course_id
GROUP BY professor_name;