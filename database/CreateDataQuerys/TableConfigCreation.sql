USE school;

/*------------------------CREATING COURSES TABLE----------------------------*/
CREATE TABLE courses (
	course_id INTEGER PRIMARY KEY NOT NULL,
	course_name VARCHAR (250) NOT NULL,
);


/*------------------------CREATING TEACHERS TABLE----------------------------*/
CREATE TABLE teachers (
	teacher_id INTEGER PRIMARY KEY NOT NULL,
	teacher_name VARCHAR (250) NOT NULL,
);


/*------------------------CREATING SUBJECTS TABLE----------------------------*/
CREATE TABLE subjects (
	subject_id INTEGER PRIMARY KEY NOT NULL,
	subject_name VARCHAR (250) NOT NULL,
);


/*------------------------CREATING STUDENTS TABLE----------------------------*/
CREATE TABLE students (
	student_id INTEGER PRIMARY KEY NOT NULL,
	student_name VARCHAR (250) NOT NULL,
	course_id INTEGER NOT NULL,
	FOREIGN KEY(course_id) REFERENCES courses(course_id),
);

/*------------------------CREATING JOIN TABLE FOR TEACHERS, COURSES AND SUBJECTS----------------------------*/
CREATE TABLE teacher_course_subject (
	teacher_course_subject_id INTEGER PRIMARY KEY NOT NULL,
	teacher_id INTEGER NOT NULL,
	course_id INTEGER NOT NULL,
	subject_id INTEGER NOT NULL,
	FOREIGN KEY(teacher_id) REFERENCES teachers(teacher_id),
	FOREIGN KEY(course_id) REFERENCES courses(course_id),
	FOREIGN KEY(subject_id) REFERENCES subjects(subject_id),
);

/*------------------------CREATING JOIN TABLE FOR STUDENTS AND SUBJECTS----------------------------*/
CREATE TABLE student_subject (
	student_subject_id INTEGER PRIMARY KEY NOT NULL,
	student_id INTEGER NOT NULL,
	subject_id INTEGER NOT NULL,
	first_grade FLOAT NOT NULL,
	second_grade FLOAT NOT NULL,
	FOREIGN KEY(student_id) REFERENCES students(student_id),
	FOREIGN KEY(subject_id) REFERENCES subjects(subject_id),
);