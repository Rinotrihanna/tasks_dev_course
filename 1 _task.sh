#Первое задание.Создание директории и файла:

CURRENT_PATH=$(pwd)

if [ ! -d "$CURRENT_PATH/MyDirectory" ]; then
  mkdir "$CURRENT_PATH/MyDirectory"
  echo "Папка 'MyDirectory' создан!"

  # Создание файла MyFile.txt
  touch "$CURRENT_PATH/MyDirectory/MyFile.txt"
  echo "word_ex3" > "$CURRENT_PATH/MyDirectory/MyFile.txt"  #нужно будет для 3-го задания
  echo "'MyFile.txt' создан внутри 'MyDirectory'!"
else
  echo "Папка MyDirectory уже есть!"
fi
echo "Содержимое данной папки: " 
ls  "$CURRENT_PATH/MyDirectory"

