@echo off
echo Beginning lyco quickpatch...
cd /D "%~dp0"
call .\venv\Scripts\activate

echo.
echo  =========================
echo   Uninstalling fastapi...
echo  =========================
echo.
call pip uninstall fastapi --y

echo.
echo  ==========================
echo   Uninstalling pydantic...
echo  ==========================
echo.
call pip uninstall pydantic --y

echo.
echo  =================================
echo   Re-installing fastapi 0.99.1...
echo  =================================
echo.
call pip install fastapi==0.99.1

echo.
echo  ===================================
echo   Re-installing pydantic 1.10.11...
echo  ===================================
echo.
call pip install pydantic==1.10.11

echo.
echo ===================================
echo  Lyco quickpatch ran successfully!
echo ===================================
echo.
echo Console will close automatically in 5 seconds...
timeout /t 5