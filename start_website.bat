@echo off
echo ===================================================
echo   Starting Barna Dreiszker CV Local Website...
echo ===================================================
echo.
echo Opening http://localhost:3000 in your browser...
start http://localhost:3000
echo.
echo Server running. Press Ctrl+C in this window to stop.
echo.
python -m http.server 3000
pause
