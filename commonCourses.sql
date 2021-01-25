USE final_mysq;

-- Create a summary report of courses and their average grades, sorted by the most 
-- challenging course (course with the lowest average grade) to the easiest course

SELECT
course_name,
grade_value / course_id
FROM courses
JOIN grades
ON courses.course_id = grades.grade_course_id
ORDER BY grade_value DESC;

