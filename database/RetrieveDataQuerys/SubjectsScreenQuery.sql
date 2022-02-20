USE school;

SELECT DISTINCT s.subject_id AS subjectId, s.subject_name AS subjectName, t.teacher_name AS teacherName, sts.studentCount as studentCount
FROM teacher_course_subject AS tcs
FULL JOIN teachers AS t ON tcs.teacher_id = t.teacher_id
FULL JOIN subjects AS s ON tcs.subject_id = s.subject_id
FULL JOIN (SELECT DISTINCT stu.subject_id, COUNT(st.student_id) as studentCount
FROM student_subject AS stu
FULL JOIN students as st ON stu.student_id = st.student_id
GROUP BY stu.subject_id) AS sts ON tcs.subject_id = sts.subject_id
GROUP BY t.teacher_name, s.subject_name, sts.studentCount, s.subject_id
ORDER BY s.subject_id;


SELECT SUM(first_grade) + SUM(second_grade) AS studentGrades 
FROM student_subject 
WHERE subject_id = 10;