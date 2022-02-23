# Welcome to magnifinance_school project
## This project has as objective create a CRUD showing *courses, students and subjects*, simulating a school.
## This project uses **Angular** and **.NET** as it's programming languages, and **SQL** as it's database system
**This project was used as part of an application for an opening in Portugal's Magnifinance**


### Installing and Running the project
  - Clone the project

  *Using Visual Studio*
  - Run create_local_server.bat in the root of the project in order to create a LocalDB instance with the correct name and start it shortly after
  - Connect to the created database using (LocalDB)\magnifinanceSchoolDatabase as server name
  - Run DatabaseCreation.sql found in /database/CreateDataQuerys to create the database used for the project
  - Run TableCreation.sql found in /database/CreateDataQuerys to create the tables used for the project
  - Run TableInserts.sql found in database/CreateDataQuerys to insert mock data in the tables
  - Run the project in Visual Studio by opening MagnifinanceSchool.sln found in /frontend
  
  *Via bash*
    - Run start_application.bat found in the root of the project
    
  **WARNING: IN ORDER TO ABOID BUILD PROBLEMS WHEN RUNNING FROM BASH, sqlcmd AND EITHER msbuild OR devenv MUST BE IN YOUR PATH VARIABLE  
  IF NEITHER IS IN YOUR PATH, THE PROJECT MAY RUN, BUT YOU MAY FIND ISSUES ON IT DUE TO IT NOT BUILDING PROPERLY**


