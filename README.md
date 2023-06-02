# Введение в DevOps

##  Сопов Андрей первое задание 


## Домашнее задание к занятию «Командная оболочка Bash: Практические навыки»


### 1. Есть скрипт:

a=1
b=2
c=a+b
d=$a+$b
e=$(($a+$b))
Какие значения переменным c, d, e будут присвоены? Почему?.

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/47e887c4-0dc7-42e0-9605-ef06135e8b64)

В данном случае С - это строка. И без символа $ нет обращнения к значению переменной

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/3ddf2a4c-6a6b-4719-817c-6515c592dfe7)

В данном случае получается опять строка, так как мы явно не указываем тип данных, но уже со значениями переменных

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/32da754f-cb8a-4ebf-b95c-c7f45ff74ef1)

В данном случае у нас выполнется арифметичское действие, так как идет обращение к переменным и мы приводим в данной конструкции тип к целочисленным значениям



### 2. Создайте dummy0 интерфейс в Ubuntu. Добавьте несколько статических маршрутов. Проверьте таблицу маршрутизации.

![image](https://user-images.githubusercontent.com/5323690/236673968-4c6f8bd4-e3bc-43d4-859e-3cd23005f4e9.png)



### 3. Проверьте открытые TCP порты в Ubuntu, какие протоколы и приложения используют эти порты? Приведите несколько примеров.

![image](https://user-images.githubusercontent.com/5323690/236673981-b1ef59ea-d740-426f-aef6-821d352984c6.png)

systemd-resolve  использует порт 53

netdata использует порт 8125

### 4. Проверьте используемые UDP сокеты в Ubuntu, какие протоколы и приложения используют эти порты?

![image](https://user-images.githubusercontent.com/5323690/236674299-e92533e9-efd5-4528-abaa-4dfa631963fb.png)

firefox использует порт 44854

### 5.Используя diagrams.net, создайте L3 диаграмму вашей домашней сети или любой другой сети, с которой вы работали.

![image](https://user-images.githubusercontent.com/5323690/236675019-ae1e247b-41de-40a3-83fd-85eb8b03336c.png)

