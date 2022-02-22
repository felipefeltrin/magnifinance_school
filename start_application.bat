@echo off
title MagnifinanceSchool ProjectStarter
echo Starting MagnifinanceSchool project

sqllocaldb create magnifinanceSchoolDatabase
sqllocaldb start magnifinanceSchoolDatabase
set server="(LocalDB)\magnifinanceSchoolDatabase"
cd .\database\CreateDataQuerys

SQLCMD -S %server% -i ./DatabaseCreation.sql >> ".\LogOutputs\dbcreate.txt"

set database="school"

SQLCMD -S %server% -d %database% -i "./TableCreation.sql" >> ".\LogOutputs\tablecreate.txt"
SQLCMD -S %server% -d %database% -i "./TableInserts.sql" >> ".\LogOutputs\tableinserts.txt"
cd ..\..
msbuild .\frontend\MagnifinanceSchool.sln
devenv .\frontend\MagnifinanceSchool.sln /Build
cd .\frontend\ClientApp\
Start iexplore https://localhost:44408
npm run start:windows