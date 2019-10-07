@echo off
set /p type=Stop Services? [y/n] : 
echo.
if %type%==y (
net stop "Windows Update"
net stop "Delivery Optimization"
) else (
echo Aborted !
)
pause
