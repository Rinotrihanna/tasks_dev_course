#Четвертое задание.Архивирование и распаковка


SOURCE_FOLDER="$(pwd)/MyDirectory1"  #этот папка из 2-го задания
ARCHIVE_NAME="archive.tar.gz"

tar -czf $ARCHIVE_NAME -C "$(dirname "$SOURCE_FOLDER")" "$(basename "$SOURCE_FOLDER")"

rm -rf "$SOURCE_FOLDER"

ARCHIVED_FOLDER="$(pwd)/archived"
mkdir -p "$ARCHIVED_FOLDER"

mv "$ARCHIVE_NAME" "$ARCHIVED_FOLDER"

cd $(pwd)/archived

tar -xvf  archive.tar.gz 

echo "Архивация и перемещение завершены."
