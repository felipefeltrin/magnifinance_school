msbuild ./frontend/MagnifinanceSchool.sln
devenv ./frontend/MagnifinanceSchool.sln /Build
cd frontend/ClientApp/
npm run start:default
xdg-open https://localhost:44408