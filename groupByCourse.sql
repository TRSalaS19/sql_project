USE final_mysq;

-- Group students by the courses that they are enrolled in

SELECT 
courses.course_name AS "course",
courses.course_professor_id AS "professor",
students.student_name AS "student",
grades.grade_value AS "grade"
FROM grades
JOIN courses
ON grades.grade_course_id = courses.course_id
JOIN students
ON students.student_id = grades.grade_student_id
ORDER BY courses.course_name;