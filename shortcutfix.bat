@echo off
set /p drive=Drive letter ? : 
echo.
echo Drive %drive%
echo.
set /p choice=Create a Backup ? [y/n] : 
echo.
if %choice%==y (
mkdir %USERPROFILE%\desktop\backup\
xcopy %drive% %USERPROFILE%\desktop\backup\
) else (
echo Backup aborted !
)  
echo.
%drive%:
del *.lnk
attrib -s -r -h /s /d *.*
pause
