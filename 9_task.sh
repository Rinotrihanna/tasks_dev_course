#Девятое задание. Подсчет файлов

count=0

count_files() {
  for file in "$1"/*; do
    if [ -f "$file" ]; then
      count=$((count + 1))
    elif [ -d "$file" ]; then
      count_files "$file"
    fi
  done
}

count_files $(pwd)

echo "Количество файлов: $count"
