@echo off
cd C:\Users\Akshaya\Documents\Appeon\PowerBuilder 22.0\github\qa

echo pulling the code from github...
git pull origin qa

if %errorlevel% neq 0 (
     echo pull got failed!
     pause
)
echo Building power builder application...
"C:\Users\Akshaya\Documents\Appeon\PBTools\PBAutobuild220.exe" /f "C:\Users\Akshaya\Documents\Appeon\PowerBuilder 22.0\github\qa\genapp.json"
if %errorlevel% neq 0 (
     echo power bulider Build failed!
     pause
)
echo Build Successful. Deploying...
xcopy "C:\Users\Akshaya\Documents\Appeon\PowerBuilder 22.0\github\qa\genapp.pbd" "C:\Users\Akshaya\Documents\Appeon\PowerBuilder 22.0\DeployedApp_qa\" /Y

echo Deployment complete!
if %errorlevel% neq 0 (
      echo power builder deployment failed!
      pause
)
