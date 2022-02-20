namespace MagnifinanceSchool
{
    public class Subject
    {
        private int SubjectId { get; set; }
        private string SubjectName { get; set; }
        private int StudentCount { get; set; }
        private float StudentGrades { get; set; }

        public string[] TeacherInfo { get; set; }

        public Subject(int subjectId, string subjectName, int studentCount, float studentGrades)
        {
            SubjectId = subjectId;
            SubjectName = subjectName;
            StudentCount = studentCount;
            StudentGrades = studentGrades;
            TeacherInfo = Array.Empty<string>();
        }
        public Subject(int subjectId, string subjectName, int studentCount, float studentGrades, string[] teacherInfo)
        {
            SubjectId = subjectId;
            SubjectName = subjectName;
            StudentCount = studentCount;
            StudentGrades = studentGrades;
            TeacherInfo = teacherInfo;
        }


        public void AddTeacherInfo(string teacherName)
        {
            if(this.TeacherInfo == null)
            {
                throw new ArgumentNullException("call SetSubject first");
            }
            this.TeacherInfo.Append(teacherName);
        }

        public Subject GetSubject()
        {
            return new Subject(this.SubjectId, this.SubjectName, this.StudentCount, this.StudentGrades, this.TeacherInfo);
        }

        public int GetId()
        {
            return this.SubjectId;
        }
    }
}
