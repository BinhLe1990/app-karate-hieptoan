@echo off
chcp 65001 >nul
echo ========================================================
echo   DONG GOI UNG DUNG KARATE HIEP TOAN SANG ANDROID (.APK)
echo ========================================================
echo.
echo [1/3] Dang cai dat thu vien Capacitor...
call npm install
echo.
echo [2/3] Dang tao du an Android...
if not exist "android" (
    call npx cap add android
)
call npx cap sync android
echo.
echo [3/3] Dang mo Android Studio de xuat file .APK...
call npx cap open android
pause
