@echo off
cd C:\Users\Akshaya\Documents\Appeon\PowerBuilder 22.0\github\AscentHR

echo pulling the code from github...
git pull origin features

if %errorlevel% neq 0 (
     echo pull got failed!
     pause
)
echo Building power builder application...
"C:\Users\Akshaya\Documents\Appeon\PBTools\PBAutobuild220.exe" /f "C:\Users\Akshaya\Documents\Appeon\PowerBuilder 22.0\github\AscentHR\genapp.json"
if %errorlevel% neq 0 (
     echo power bulider Build failed!
     pause
)
echo Build Successful. moving app.exe to deployment folder Deploying...
Xcopy "C:\Users\Akshaya\Documents\Appeon\PowerBuilder 22.0\github\AscentHR\genapp.pbd" "C:\Users\Akshaya\Documents\Appeon\PowerBuilder 22.0\DeployedApp_features\" /Y
echo Deployment complete!
if %errorlevel% neq 0 (
      echo power builder deployment failed!
      pause
)  
