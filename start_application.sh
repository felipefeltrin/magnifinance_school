msbuild ./frontend/MagnifinanceSchool.sln
devenv ./frontend/MagnifinanceSchool.sln /Build
cd .\frontend\ClientApp\
npm run start:windows
Start iexplore https://localhost:44408