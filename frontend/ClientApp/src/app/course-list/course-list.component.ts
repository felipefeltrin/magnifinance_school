import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-course-list',
  templateUrl: './course-list.component.html',
})

export class CourseListComponent {
  public courseList: Course[] = [
    { id: "1", name: "Historian", teacherCount: 1, studentCount: 15, studentAverage: 8.2 },
    { id: "1", name: "Biologist", teacherCount: 3, studentCount: 25, studentAverage: 6.03 },
    { id: "3", name: "Programmer", teacherCount: 999, studentCount: 999, studentAverage: 10.00 }
  ];


  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    http.get<Course[]>(baseUrl + 'api/courseslist').subscribe(result => {
      this.courseList = result;
      console.log(result);
    }, error => console.error(error));
  }
}


interface Course {
  id: string;
  name: string;

  //FOR TEST PURPOSES ONLY, WILL BE RETRIEVED BY USING JOINT SQL QUERYS IN THE BACKEND PART OF THE APPLICATION
  teacherCount: number;
  studentCount: number;
  studentAverage: number;
}
