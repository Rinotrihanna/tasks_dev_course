#Второе задание.Копирование файлов:

CURRENT_PATH=$(pwd)

if [ ! -d "$CURRENT_PATH/MyDirectory1" ]; then
  mkdir -p "$CURRENT_PATH/MyDirectory1"
  echo "Папка'$CURRENT_PATH/MyDirectory1' была создана!"
else
  echo "По пути '$CURRENT_PATH/MyDirectory1' уже есть данная папка!"
fi

moved_files=""

for file in "$CURRENT_PATH/MyDirectory"/*; do #это уже старая папка с первого задания. Оно просто тхт переносить в только созданную папку
  if [ -e "$file" ]; then
    mv "$file" "$CURRENT_PATH/MyDirectory1"
    moved_files+="$file -> $CURRENT_PATH/MyDirectory1/$(basename "$file")"$'\n'
  fi
done

if [ -d "$CURRENT_PATH/MyDirectory" ] && [ -z "$(ls -A "$CURRENT_PATH/MyDirectory")" ]; then
  rmdir "$CURRENT_PATH/MyDirectory"
  echo "Папка MyDirectory из первого скрипта удален"
fi


echo "Перемещены файлы:"
echo "$moved_files"

