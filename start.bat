@echo off
echo.
echo  EV Route Optimizer
echo  ==================
echo.

REM Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo  ERROR: Python not found. Please install Python 3.9+
    pause
    exit /b 1
)

REM Install deps if needed
echo  Installing dependencies...
pip install -r requirements.txt -q

echo.
echo  Starting server at http://localhost:5000
echo  Press Ctrl+C to stop
echo.

REM Open browser after a short delay (in background)
start /min "" cmd /c "timeout /t 2 >nul && start http://localhost:5000"

python app.py
pause
