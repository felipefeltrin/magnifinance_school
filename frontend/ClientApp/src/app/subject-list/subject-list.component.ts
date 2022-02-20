import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-subject-list',
  templateUrl: './subject-list.component.html',
})

export class SubjectListComponent {
  public subjectList: Subject[] = [
    { subjectId: "1", subjectName: "Hitstory", teacherInformation: ["Marco", "John"], studentCount: 15, studentAvg: 8.2 },
    { subjectId: "2", subjectName: "Biology", teacherInformation: ["Robert"], studentCount: 25, studentAvg: 6.03 },
    { subjectId: "3", subjectName: "Math", teacherInformation: ["Cassandra", "Alice"], studentCount: 999, studentAvg: 10.00 }
  ];

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    http.get<Subject[]>(baseUrl + 'api/subjectslist').subscribe(result => {
      this.subjectList = result;
      console.log(result);
    }, error => console.error(error));
  }
}


interface Subject {
  subjectId: string;
  subjectName: string;

  //FOR TEST PURPOSES ONLY, WILL BE RETRIEVED BY USING JOINT SQL QUERYS IN THE BACKEND PART OF THE APPLICATION
  teacherInformation: string[];
  studentCount: number;
  studentAvg: number;
}
