#Десятое задание. Автоматизация задачи обновления системы


sudo apt update

UPGRADE=$(apt list --upgradable 2>/dev/null | grep -v "Listing..." | wc -l)

if [ "$UPGRADE" -gt 0 ]; then
  echo "Обновления есть. Устанавливаю..."
  # Проверила у себя, но этот скрипт был написан chatgpt. Я только сообщения прописывала 
І # update: мне обновили chrome, полгода не обновялала из-за уродского дизайна
  sudo apt upgrade -y
else
  echo "Обновлений нет."
fi
