@echo off
echo Запуск локального веб-сервера для HTML лендинга...
echo Откройте в браузере: http://localhost:8000
echo Для остановки нажмите Ctrl+C
echo.

REM Проверяем доступность python
python --version >nul 2>&1
if %errorlevel% == 0 (
    python -m http.server 8000
    goto :eof
)

REM Проверяем доступность python3
python3 --version >nul 2>&1
if %errorlevel% == 0 (
    python3 -m http.server 8000
    goto :eof
)

REM Проверяем доступность npx
npx --version >nul 2>&1
if %errorlevel% == 0 (
    npx serve . -p 8000
    goto :eof
)

REM Проверяем доступность php
php --version >nul 2>&1
if %errorlevel% == 0 (
    php -S localhost:8000
    goto :eof
)

echo Ошибка: не найден ни python, ни npx, ни php
echo Установите один из них для запуска локального сервера
echo Или откройте index.html прямо в браузере
pause