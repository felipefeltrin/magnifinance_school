namespace MagnifinanceSchool
{
    public class Course
    {
        private int CourseId { get; set; }
        private string CourseName { get; set; }
        private int TeacherCount { get; set; }
        private int StudentCount { get; set; }
        private float StudentAverage { get; set; }

        public Course(int courseId, string courseName, int teacherCount, int studentCount, float studentAverage)
        {
            CourseId = courseId;
            CourseName = courseName;
            TeacherCount = teacherCount;
            StudentCount = studentCount;
            StudentAverage = studentAverage;
        }

        public Course GetCourse()
        {
            return new Course(this.CourseId, this.CourseName, this.TeacherCount, this.StudentCount, this.StudentAverage);
        }
    }
}
