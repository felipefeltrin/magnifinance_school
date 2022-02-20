USE school;

SELECT student_id AS studentId, student_name AS studentName 
FROM students
ORDER BY student_id;

SELECT sts.subject_id AS subjectId, s.subject_name AS subjectName, sts.first_grade AS firstGrade, sts.second_grade AS secondGrade 
FROM student_subject AS sts
FULL JOIN subjects AS s ON sts.subject_id = s.subject_id
WHERE student_id = 1
ORDER BY sts.subject_id;