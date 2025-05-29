@echo off
echo %~dp0
cd /D %~dp0

for /f "delims=" %%a in ('powershell -Command "(Get-Date).ToUniversalTime().ToString('yyyy-MM-dd HH:mm:ss')"') do set datetime=%%a

echo %datetime%
git add .
git commit -m "%datetime%"
git push origin main
timeout 5
rem pause