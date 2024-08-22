#!/bin/bash

# Проверка и удаление папки node_modules
if [ -d "./node_modules" ]; then
  echo "Папка node_modules найдена. Удаляю..."
  rm -rf "./node_modules"
  echo "Папка node_modules удалена."
else
  echo "Папка node_modules не найдена."
fi

# Проверка и удаление файла package-lock.json
if [ -f "./package-lock.json" ]; then
  echo "Файл package-lock.json найден. Удаляю..."
  rm -f "./package-lock.json"
  echo "Файл package-lock.json удалён."
else
  echo "Файл package-lock.json не найден."
fi

# Запуск команды npm install
echo "Запускаю npm install..."
npm install

echo "npm install завершен."
