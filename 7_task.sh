#Седьмое задание. Подсчет количества слов 

touch text.txt
chmod 777 text.txt

echo "Тут пробелов четыре, значит слов пять" >> text.txt

grep -o ' ' text.txt | wc -l

rm text.txt
