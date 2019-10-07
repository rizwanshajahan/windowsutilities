@echo off
netsh wlan show profiles
set /p name=SSID : ? 
echo SSID : %name%
netsh wlan show profiles "%name%"
set /p type=Set as metered connection ? [y/n] : 
if %type%==y (
netsh wlan set profileparameter "%name%" cost=Fixed
echo Metered-connection set
echo.
call :stop-service
) else (
netsh wlan set profileparameter "%name%" cost=Unrestricted
echo Metered-connection not set
echo.
)
:stop-service
net stop "Delivery Optimization"
net stop "Windows Update"
pause
