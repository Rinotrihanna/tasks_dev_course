#Третье задание.Поиск слова

DIRECTORY=$(pwd)
KEYWORDS=("word_ex3")  # опять ищем файлы с первого/второго задания

for keyword in "${KEYWORDS[@]}"; do
    echo "Файлы, содержащие '$keyword' в содержимом:"
    find "$DIRECTORY" -type f ! -name "*.sh" -exec grep -l "$keyword" {} \; | while read -r file; do #тут немного странный поиск, установлено ограничение не искать скрипты
        echo "Путь к файлу: $(dirname "$file"), Имя файла: $(basename "$file")"
done
    echo 
done
