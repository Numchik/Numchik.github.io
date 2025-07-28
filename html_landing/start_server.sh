#!/bin/bash

echo "Запуск локального веб-сервера для HTML лендинга..."
echo "Откройте в браузере: http://localhost:8000"
echo "Для остановки нажмите Ctrl+C"
echo ""

# Проверяем доступность python3
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
# Проверяем доступность python
elif command -v python &> /dev/null; then
    python -m http.server 8000
# Проверяем доступность npx
elif command -v npx &> /dev/null; then
    npx serve . -p 8000
# Проверяем доступность php
elif command -v php &> /dev/null; then
    php -S localhost:8000
else
    echo "Ошибка: не найден ни python, ни npx, ни php"
    echo "Установите один из них для запуска локального сервера"
    echo "Или откройте index.html прямо в браузере"
fi