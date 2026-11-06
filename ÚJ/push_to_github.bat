@echo off
echo ========================================================
echo   Uploading Barna Dreiszker CV to GitHub (CV repo)
echo ========================================================
echo.
"C:\Users\User\AppData\Local\GitHubDesktop\app-3.6.10\resources\app\git\cmd\git.exe" remote remove origin 2>nul
"C:\Users\User\AppData\Local\GitHubDesktop\app-3.6.10\resources\app\git\cmd\git.exe" remote add origin https://github.com/barnadreiszker/CV.git
"C:\Users\User\AppData\Local\GitHubDesktop\app-3.6.10\resources\app\git\cmd\git.exe" branch -M main
echo Pushing code to GitHub...
"C:\Users\User\AppData\Local\GitHubDesktop\app-3.6.10\resources\app\git\cmd\git.exe" push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo   SUCCESS! The files are now uploaded to GitHub!
    echo ========================================================
    echo Opening your GitHub Pages settings in browser...
    start https://github.com/barnadreiszker/CV/settings/pages
) else (
    echo An issue occurred during push. Please see the message above.
)
echo.
pause
