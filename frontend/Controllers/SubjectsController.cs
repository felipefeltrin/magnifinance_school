using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace MagnifinanceSchool.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class SubjectsController : Controller
    {
        static readonly string connectionString = @"Data Source=(LocalDB)\magnifinance_school_database;Initial Catalog=school;Integrated Security=True";

        [HttpGet]
        public IEnumerable<Subject>? GetSubjectListing()
        {
            try
            {
                Subject[] subjects = Array.Empty<Subject>();

                using (SqlConnection connection = new(connectionString))
                {
                    string query = @"SELECT DISTINCT s.subject_id AS subjectId, s.subject_name AS subjectName, t.teacher_name AS teacherName, sts.studentCount as studentCount
                                FROM teacher_course_subject AS tcs
                                FULL JOIN teachers AS t ON tcs.teacher_id = t.teacher_id
                                FULL JOIN subjects AS s ON tcs.subject_id = s.subject_id
                                FULL JOIN (SELECT DISTINCT stu.subject_id, COUNT(st.student_id) as studentCount
                                FROM student_subject AS stu
                                FULL JOIN students as st ON stu.student_id = st.student_id
                                GROUP BY stu.subject_id) AS sts ON tcs.subject_id = sts.subject_id
                                GROUP BY s.subject_name, t.teacher_name, sts.studentCount, s.subject_id
                                ORDER BY s.subject_id;";

                    SqlCommand command = new(query, connection);
                    connection.Open();
                    using SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        int subjectId = int.Parse(reader["subjectId"].ToString());
                        string teacherName = reader["teacherName"].ToString();
                        string subjectName = reader["subjectName"].ToString();
                        int studentCount = int.Parse(reader["studentCount"].ToString());
                        float studentGrades = GetStudentGrades(subjectId);


                        Subject subject = new(subjectId, subjectName, studentCount, studentGrades);

                        bool found = false;

                        foreach (Subject subjectItem in subjects)
                        {
                            if(subjectItem.GetId() == subjectId)
                            {
                                found = true;
                                break;
                            }
                        }

                        if (found)
                        {
                            subject = subjects[subjectId];
                            if (subject.TeacherInfo != null)
                            {
                                bool foundTeacher = false;

                                foreach (string teacher in subject.TeacherInfo)
                                {
                                    if(teacher == teacherName)
                                    {
                                        foundTeacher = true;
                                        break;
                                    }
                                }
                                if (!foundTeacher)
                                {
                                    subject.AddTeacherInfo(teacherName);
                                }
                            }
                            subjects[subjectId] = subject;
                        }
                        else
                        {
                            subject.AddTeacherInfo(teacherName);
                            _ = subjects.Append(subject.GetSubject());
                        }


                    }
                }
                return subjects;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
        }

        private static float GetStudentGrades(int subjectId)
        {
            try
            {
                float studentGrades = 0;
                using (SqlConnection connection = new(connectionString))
                {
                    string query = @"SELECT SUM(first_grade) + SUM(second_grade) AS studentGrades
                                    FROM student_subject
                                    WHERE subject_id = @subjectId;";

                    SqlCommand command = new(query, connection);
                    command.Parameters.AddWithValue("@subjectId", subjectId);
                    connection.Open();
                    using SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        studentGrades += float.Parse(reader["studentGrades"].ToString());
                    }
                }

                return studentGrades;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return 0;
            }
        }
    }
}
