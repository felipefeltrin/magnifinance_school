namespace MagnifinanceSchool
{
    public class Student
    {
        private int StudentId { get; set; }
        private string StudentName { get; set; }

        private StudentSubject[] StudentSubjects { get; set; }


        public Student(int studentId, string studentName)
        {
            StudentId = studentId;
            StudentName = studentName;
            StudentSubjects = Array.Empty<StudentSubject>();
        }
        public Student(int studentId, string studentName, StudentSubject[] studentSubjects)
        {
            StudentId = studentId;
            StudentName = studentName;
            StudentSubjects = studentSubjects;
        }


        public void AddGrade(int subjectId, float firstGrade, float secondGrade)
        {
            _ = this.StudentSubjects.Append(new StudentSubject(subjectId, firstGrade, secondGrade));
        }

        public Student GetStudent()
        {
            return new Student(this.StudentId, this.StudentName, this.StudentSubjects);
        }

        public int GetId()
        {
            return this.StudentId;
        }

        public StudentSubject[] GetSubjects()
        {
            return this.StudentSubjects;
        }
    }


    public class StudentSubject
    {
        private int SubjectId { get; set; }
        private float FirstGrade { get; set; }
        private float SecondGrade { get; set; }


        public StudentSubject(int subjectId, float firstGrade, float secondGrade)
        {
            SubjectId = subjectId;
            FirstGrade = firstGrade;
            SecondGrade = secondGrade;
        }

        public StudentSubject GetStudentSubject()
        {
            return new StudentSubject(this.SubjectId, this.FirstGrade, this.SecondGrade);
        }

        public int GetId()
        {
            return this.SubjectId;
        }
    }
}
