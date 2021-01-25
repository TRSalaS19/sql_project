USE final_mysq;

-- The top grades for each student 

SELECT student_name as "student", MAX(grade_value) AS "top grade"
FROM grades
JOIN students
ON grades.grade_student_id = students.student_id
GROUP BY student_name;