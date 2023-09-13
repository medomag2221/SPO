#!/bin/bash
#variant 15 . Удалить самый большой файл в указанном первым аргументом каталоге. По умолчанию аргумент соответствует текущему каталогу.

# Проверяем, передан ли каталог как первый аргумент, и если нет, используем текущий каталог
directory="${1:-.}"

# Проверяем, что каталог существует
if [ ! -d "$directory" ]; then
  echo "Каталог '$directory' не существует."
  exit 1
fi

# Находим самый большой файл в каталоге
largest_file=""
largest_size=0

for file in "$directory"/*; do
    size=$(stat -c %s "$file")
    if [ "$size" -gt "$largest_size" ]; then
      largest_file="$file"
      largest_size="$size"
    fi
done

# Проверяем, существует ли найденый наибольший ли файл
if [ -n "$largest_file" ]; then
  echo "Удален самый большой файл из: $largest_file"
  rm "$largest_file"
else
  echo "В каталоге '$directory' нет файлов."
fi
