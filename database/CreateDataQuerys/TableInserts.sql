USE school;

/*------------------------INSERTING DATA FOR COURSES TABLE----------------------------*/
INSERT INTO courses (course_id, course_name) VALUES (1, 'Historian');
INSERT INTO courses (course_id, course_name) VALUES (2, 'Mathematic');
INSERT INTO courses (course_id, course_name) VALUES (3, 'Biologist');
INSERT INTO courses (course_id, course_name) VALUES (4, 'Translator');


/*------------------------INSERTING DATA FOR TEACHERS TABLE----------------------------*/
INSERT INTO teachers (teacher_id, teacher_name) VALUES (1, 'Marcos');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (2, 'Amélia');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (3, 'Roberta');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (4, 'Bruna');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (5, 'Thiago');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (6, 'Marcelo');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (7, 'Maria');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (8, 'José');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (9, 'Rodrigo');
INSERT INTO teachers (teacher_id, teacher_name) VALUES (10, 'Estefânia');


/*------------------------INSERTING DATA FOR SUBJECTS TABLE----------------------------*/
INSERT INTO subjects (subject_id, subject_name) VALUES (1, 'History');
INSERT INTO subjects (subject_id, subject_name) VALUES (2, 'Mathematics');
INSERT INTO subjects (subject_id, subject_name) VALUES (3, 'Biology');
INSERT INTO subjects (subject_id, subject_name) VALUES (4, 'Chemstry');
INSERT INTO subjects (subject_id, subject_name) VALUES (5, 'English');
INSERT INTO subjects (subject_id, subject_name) VALUES (6, 'Portuguese');
INSERT INTO subjects (subject_id, subject_name) VALUES (7, 'Philosophy');
INSERT INTO subjects (subject_id, subject_name) VALUES (8, 'Geography');
INSERT INTO subjects (subject_id, subject_name) VALUES (9, 'Phisics');
INSERT INTO subjects (subject_id, subject_name) VALUES (10, 'Sociology');


/*------------------------INSERTING DATA FOR STUDENTS TABLE----------------------------*/
INSERT INTO students (student_id, student_name, course_id) VALUES (1, 'Carlos', 1);
INSERT INTO students (student_id, student_name, course_id) VALUES (2, 'Robson', 2);
INSERT INTO students (student_id, student_name, course_id) VALUES (3, 'Eduardo', 3);
INSERT INTO students (student_id, student_name, course_id) VALUES (4, 'Guilherme', 4);
INSERT INTO students (student_id, student_name, course_id) VALUES (5, 'Julia', 1);
INSERT INTO students (student_id, student_name, course_id) VALUES (6, 'Carolina', 2);
INSERT INTO students (student_id, student_name, course_id) VALUES (7, 'Amanda', 3);
INSERT INTO students (student_id, student_name, course_id) VALUES (8, 'Letícia', 4);
INSERT INTO students (student_id, student_name, course_id) VALUES (9, 'Gabriela', 1);
INSERT INTO students (student_id, student_name, course_id) VALUES (10, 'Lúcia', 2);
INSERT INTO students (student_id, student_name, course_id) VALUES (11, 'Lucas', 3);
INSERT INTO students (student_id, student_name, course_id) VALUES (12, 'Felipe', 4);


/*------------------------INSERTING DATA FOR JOIN TEACHER, COURSE AND SUBJECT TABLE----------------------------*/
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (1, 1, 1, 1);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (2, 1, 4, 8);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (3, 2, 1, 5);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (4, 2, 2, 6);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (5, 2, 3, 6);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (6, 2, 4, 5);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (7, 3, 2, 2);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (8, 4, 3, 3);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (9, 4, 3, 4);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (10, 5, 1, 7);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (11, 5, 3, 10);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (12, 6, 2, 1);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (13, 6, 1, 8);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (14, 7, 4, 7);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (15, 7, 1, 10);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (16, 8, 1, 6);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (17, 8, 2, 5);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (18, 8, 3, 5);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (19, 8, 4, 6);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (20, 9, 2, 9);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (21, 10, 3, 5);
INSERT INTO teacher_course_subject (teacher_course_subject_id, teacher_id, course_id, subject_id)  VALUES (22, 10, 4, 6);


/*------------------------INSERTING DATA FOR JOIN STUDENT AND SUBJECT TABLE----------------------------*/
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (1, 1, 1, 10, 1);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (2, 1, 5, 9, 2);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (3, 1, 6, 8, 3);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (4, 1, 7, 7, 4);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (5, 1, 8, 6, 5);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (6, 1, 10, 5, 6);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (7, 2, 2, 4, 7);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (8, 2, 5, 3, 8);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (9, 2, 6, 2, 9);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (10, 2, 9, 1, 10);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (11, 3, 1, 10, 1);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (12, 3, 3, 9, 2);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (13, 3, 4, 8, 3);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (14, 3, 5, 7, 4);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (15, 3, 6, 6, 5);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (16, 3, 8, 5, 6);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (17, 3, 10, 4, 7);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (18, 4, 1, 3, 8);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (19, 4, 5, 2, 9);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (20, 4, 6, 1, 10);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (21, 4, 7, 10, 1);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (22, 4, 8, 9, 2);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (23, 5, 1, 8, 3);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (24, 5, 5, 7, 4);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (25, 5, 6, 6, 5);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (26, 5, 7, 5, 6);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (27, 5, 8, 4, 7);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (28, 5, 10, 3, 8);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (29, 6, 2, 2, 9);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (30, 6, 5, 1, 10);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (31, 6, 6, 10, 1);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (32, 6, 9, 9, 2);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (33, 7, 1, 8, 3);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (34, 7, 3, 7, 4);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (35, 7, 4, 6, 5);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (36, 7, 5, 5, 6);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (37, 7, 6, 4, 7);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (38, 7, 8, 3, 8);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (39, 7, 10, 2, 9);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (40, 8, 1, 1, 10);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (41, 8, 5, 10, 1);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (42, 8, 6, 9, 2);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (43, 8, 7, 8, 3);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (44, 8, 8, 7, 4);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (45, 9, 1, 6, 5);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (46, 9, 5, 5, 6);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (47, 9, 6, 4, 7);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (48, 9, 7, 3, 8);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (49, 9, 8, 2, 9);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (50, 9, 10, 1, 10);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (51, 10, 2, 10, 1);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (52, 10, 5, 9, 2);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (53, 10, 6, 8, 3);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (54, 10, 9, 7, 4);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (55, 11, 1, 6, 5);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (56, 11, 3, 5, 6);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (57, 11, 4, 4, 7);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (58, 11, 5, 3, 8);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (59, 11, 6, 2, 9);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (60, 11, 8, 1, 10);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (61, 11, 10, 10, 1);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (62, 12, 1, 9, 2);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (63, 12, 5, 8, 3);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (64, 12, 6, 7, 4);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (65, 12, 7, 6, 5);
INSERT INTO student_subject (student_subject_id, student_id, subject_id, first_grade, second_grade) VALUES (66, 12, 8, 5, 6);