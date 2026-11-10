@echo off
title Smart Exam Checker
cd /d "%~dp0"

echo ==========================================
echo          SMART EXAM CHECKER
echo ==========================================
echo.
echo Menjalankan aplikasi...
echo Browser Microsoft Edge akan dibuka.
echo Jangan tutup jendela CMD ini selama aplikasi digunakan.
echo.

start "Smart Exam Checker Server" /B cmd /c "python -m streamlit run app.py --server.headless true"

timeout /t 4 /nobreak >nul

start "" msedge "http://localhost:8501"

echo.
echo Aplikasi sedang berjalan di:
echo http://localhost:8501
echo.
echo Untuk menghentikan aplikasi, tutup jendela CMD ini
echo lalu tekan Ctrl+C jika proses masih berjalan.
echo.
pause
