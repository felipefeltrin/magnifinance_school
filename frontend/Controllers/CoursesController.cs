using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace MagnifinanceSchool.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class CoursesController : ControllerBase
    {
        static readonly string connectionString = @"Data Source=(LocalDB)\magnifinanceSchoolDatabase;Initial Catalog=school;Integrated Security=True";

        [HttpGet]
        public IEnumerable<Course>? GetCourseListing()
        {
            try {
                Course[] courses = Array.Empty<Course>();

                using (SqlConnection connection = new(connectionString))
                {
                    string query = @"SELECT DISTINCT cs.course_id as CourseId, cs.course_name as Course,
                                    COUNT(t.teacher_id) as Teachers, cs.studentCount as Students
                                    FROM teacher_course_subject AS tcs
                                    FULL JOIN teachers AS t ON tcs.teacher_id = t.teacher_id
                                    FULL JOIN(SELECT DISTINCT co.course_id, co.course_name, COUNT(st.student_id) as studentCount
                                    FROM courses AS co
                                    FULL JOIN students as st ON co.course_id = st.course_id
                                    GROUP BY co.course_name, co.course_id) AS cs ON tcs.course_id = cs.course_id
                                    GROUP BY cs.course_name, cs.studentCount, cs.course_id
                                    ORDER BY cs.course_id;";

                    SqlCommand command = new(query, connection);
                    connection.Open();
                    using SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        
                        int courseId = int.Parse(reader["CourseId"].ToString());
                        string courseName = reader["Course"].ToString();
                        int teacherCount = int.Parse(reader["Teachers"].ToString());
                        int studentCount = int.Parse(reader["Students"].ToString());
                        float studentAverage = GetStudentAverage(courseId);

                        _ = courses.Append(new(courseId, courseName, teacherCount, studentCount, studentAverage));
                    }
                }
                return courses;
            } catch (Exception ex) {
                Console.WriteLine(ex.Message);
                return null;
            }
        }

        private static float GetStudentAverage(int courseId)
        {
            try {
                float studentAverage = 0;
                using (SqlConnection connection = new(connectionString))
                {
                    string query = @"SELECT SUM((sts.first_grade + sts.second_grade) / 2) AS average
                                   FROM students AS st
                                   FULL JOIN student_subject AS sts ON st.student_id = sts.student_id
                                   WHERE course_id = @courseId;";

                    SqlCommand command = new(query, connection);
                    command.Parameters.AddWithValue("@courseId", courseId);
                    connection.Open();
                    using SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        studentAverage += float.Parse(reader["average"].ToString());
                    }
                }

                return studentAverage;
            } catch(Exception e) {
                Console.WriteLine(e.Message);
                return 0;
            }
        }
    }
}
