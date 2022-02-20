import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-student-list',
  templateUrl: './student-list.component.html',
})

export class StudentListComponent {
  public studentList: Student[] = [
    { studentId: "1", studentName: "Carlos", historyGrade: 9, biologyGrade: 1.5, mathGrade: 8.2, artsGrade: 7, peGrade: 0, chemstryGrade: 6.9 },
    { studentId: "1", studentName: "Pedro", historyGrade: 3, biologyGrade: 7, mathGrade: 6.03, artsGrade: 7, peGrade: 0, chemstryGrade: 6.9 },
    { studentId: "3", studentName: "Roberta", historyGrade: 10.00, biologyGrade: 10.00, mathGrade: 10.00, artsGrade: 10.00, peGrade: 10.00, chemstryGrade: 10.00 }
  ];


  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    http.get<Student[]>(baseUrl + 'api/studentslist').subscribe(result => {
      this.studentList = result;
      console.log(result);
    }, error => console.error(error));
  }
}


interface Student {
  studentId: string;
  studentName: string;

  //FOR TEST PURPOSES ONLY, WILL BE RETRIEVED BY USING JOINT SQL QUERYS IN THE BACKEND PART OF THE APPLICATION
  historyGrade: number;
  biologyGrade: number;
  mathGrade: number;
  artsGrade: number;
  peGrade: number;
  chemstryGrade: number;
}
