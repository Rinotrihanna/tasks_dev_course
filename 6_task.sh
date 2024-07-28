#Шестое задание. Автоматизация резервного копирования


SOURCE_DIR="$(pwd)"  
BACKUP_DIR="$(pwd)/dump" 

CRON=$((7 * 24 * 60 * 60)) # периодичность можно в кронтабе указать, но пока сделала так

while true; do
    DATE=$(date +%F)

    mkdir -p "$BACKUP_DIR/$DATE"
    rsync -av --delete "$SOURCE_DIR/" "$BACKUP_DIR/$DATE/" #Это я уже подсмотрела в инете, про rsync не знала

    echo "Резервное копирование завершено: $BACKUP_DIR/$DATE"

    rm -r  $BACKUP_DIR/$DATE/dump/   # тут у меня копия без никаких файлов создавался, решила так удалять 

    sleep "$CRON"
done
