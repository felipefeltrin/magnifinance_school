using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace MagnifinanceSchool.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class StudentsController : Controller
    {
        static readonly string connectionString = @"Data Source=(LocalDB)\magnifinanceSchoolDatabase;Initial Catalog=school;Integrated Security=True";

        [HttpGet]
        public IEnumerable<Student>? GetStudentListing()
        {
            try
            {
                Student[] students = Array.Empty<Student>();

                using (SqlConnection connection = new(connectionString))
                {
                    string query = @"SELECT student_id AS studentId, student_name AS studentName 
                                    FROM students
                                    ORDER BY student_id;";

                    SqlCommand command = new(query, connection);
                    connection.Open();
                    using SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        int studentId = int.Parse(reader["studentId"].ToString());
                        string studentName = reader["studentName"].ToString();

                        Student student = new(studentId, studentName);
                        student = GetStudentGrades(student);

                        _ = students.Append(student);

                    }
                }
                return students;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
        }

        private static Student GetStudentGrades(Student student)
        {
            try
            {

                using (SqlConnection connection = new(connectionString))
                {
                    string query = @"SELECT sts.subject_id AS subjectId, s.subject_name AS subjectName, sts.first_grade AS firstGrade, sts.second_grade AS secondGrade 
                                    FROM student_subject AS sts
                                    FULL JOIN subjects AS s ON sts.subject_id = s.subject_id
                                    WHERE student_id = @studentId
                                    ORDER BY sts.subject_id;";

                    SqlCommand command = new(query, connection);
                    command.Parameters.AddWithValue("@studentId", student.GetId());
                    connection.Open();
                    using SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        StudentSubject[] studentSubjects = student.GetSubjects();
                        bool found = false;
                        int subjectId = int.Parse(reader["subjectId"].ToString());
                        foreach (StudentSubject studentSubject in studentSubjects)
                        {
                            if(studentSubject.GetId() == subjectId)
                            {
                                found = true;
                                break;
                            }
                        }

                        if (!found) 
                        {
                            float firstGrade = float.Parse(reader["firstGrade"].ToString());
                            float secondGrade = float.Parse(reader["secondGrade"].ToString());
                            student.AddGrade(subjectId, firstGrade, secondGrade);
                        }
                    }
                }
                student = student.GetStudent();

                return student;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }
    }
}
