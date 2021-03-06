USE school;

SELECT DISTINCT cs.course_id as CourseId, cs.course_name as Course, COUNT(t.teacher_id) as Teachers, cs.studentCount as Students
FROM teacher_course_subject AS tcs 
FULL JOIN teachers AS t ON tcs.teacher_id = t.teacher_id
FULL JOIN (SELECT DISTINCT co.course_id, co.course_name, COUNT(st.student_id) as studentCount
FROM courses AS co
FULL JOIN students as st ON co.course_id = st.course_id
GROUP BY co.course_name, co.course_id) AS cs ON tcs.course_id = cs.course_id
GROUP BY cs.course_name, cs.studentCount, cs.course_id
ORDER BY cs.course_id;