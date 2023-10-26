# Домашнее задание к занятию 2. «SQL»

## Введение

Перед выполнением задания вы можете ознакомиться с 
[дополнительными материалами](https://github.com/netology-code/virt-homeworks/blob/virt-11/additional/README.md).

## Задача 1

Используя Docker, поднимите инстанс PostgreSQL (версию 12) c 2 volume, 
в который будут складываться данные БД и бэкапы.

Приведите получившуюся команду или docker-compose-манифест.

```
andreysopov@MacBook-Air-Andrey Docker_pos % docker volume inspect docker_pos_data1
[
    {
        "CreatedAt": "2023-10-24T20:43:32Z",
        "Driver": "local",
        "Labels": {
            "com.docker.compose.project": "docker_pos",
            "com.docker.compose.version": "2.23.0",
            "com.docker.compose.volume": "data1"
        },
        "Mountpoint": "/var/lib/docker/volumes/docker_pos_data1/_data",
        "Name": "docker_pos_data1",
        "Options": null,
        "Scope": "local"
    }
]
andreysopov@MacBook-Air-Andrey Docker_pos % docker volume inspect docker_pos_data2
[
    {
        "CreatedAt": "2023-10-24T20:43:32Z",
        "Driver": "local",
        "Labels": {
            "com.docker.compose.project": "docker_pos",
            "com.docker.compose.version": "2.23.0",
            "com.docker.compose.volume": "data2"
        },
        "Mountpoint": "/var/lib/docker/volumes/docker_pos_data2/_data",
        "Name": "docker_pos_data2",
        "Options": null,
        "Scope": "local"
    }
]
andreysopov@MacBook-Air-Andrey Docker_pos % Í
```





## Задача 2

В БД из задачи 1: 

- создайте пользователя test-admin-user и БД test_db;

- в БД test_db создайте таблицу orders и clients (спeцификация таблиц ниже);
      
- предоставьте привилегии на все операции пользователю test-admin-user на таблицы БД test_db;
- создайте пользователя test-simple-user;
- предоставьте пользователю test-simple-user права на SELECT/INSERT/UPDATE/DELETE этих таблиц БД test_db.

Таблица orders:

- id (serial primary key);
- наименование (string);
- цена (integer).

Таблица clients:

- id (serial primary key);
- фамилия (string);
- страна проживания (string, index);
- заказ (foreign key orders).

Приведите:

- итоговый список БД после выполнения пунктов выше;
- описание таблиц (describe);
- SQL-запрос для выдачи списка пользователей с правами над таблицами test_db;
- список пользователей с правами над таблицами test_db.

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/924b43dd-862a-4c55-9c5e-944cefebaadf)


![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/1249c094-e2bc-4f1b-b4b0-953032f227d7)

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/d287f437-9b55-4fb9-8fd8-cab08e79a064)


![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/6c56c632-fa72-4895-bc4f-bf9c2e1e16f5)


## Задача 3

Используя SQL-синтаксис, наполните таблицы следующими тестовыми данными:

Таблица orders

|Наименование|цена|
|------------|----|
|Шоколад| 10 |
|Принтер| 3000 |
|Книга| 500 |
|Монитор| 7000|
|Гитара| 4000|

Таблица clients

|ФИО|Страна проживания|
|------------|----|
|Иванов Иван Иванович| USA |
|Петров Петр Петрович| Canada |
|Иоганн Себастьян Бах| Japan |
|Ронни Джеймс Дио| Russia|
|Ritchie Blackmore| Russia|

Используя SQL-синтаксис:
- вычислите количество записей для каждой таблицы.

Приведите в ответе:

    - запросы,
    - результаты их выполнения.
```
insert into orders VALUES (1, 'Шоколад', 10), (2, 'Принтер', 3000), (3, 'Книга', 500), (4, 'Монитор', 7000), (5, 'Гитара', 4000);
insert into clients VALUES (1, 'Иванов Иван Иванович', 'USA'), (2, 'Петров Петр Петрович', 'Canada'), (3, 'Иоганн Себастьян Бах', 'Japan'), (4, 'Ронни Джеймс Дио', 'Russia'), (5, 'Ritchie Blackmore', 'Russia');
select count (*) from orders;
select count (*) from clients;
```
    
![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/7529d59c-8930-4a82-920e-0b1fb5841688)





## Задача 4

Часть пользователей из таблицы clients решили оформить заказы из таблицы orders.

Используя foreign keys, свяжите записи из таблиц, согласно таблице:

|ФИО|Заказ|
|------------|----|
|Иванов Иван Иванович| Книга |
|Петров Петр Петрович| Монитор |
|Иоганн Себастьян Бах| Гитара |

Приведите SQL-запросы для выполнения этих операций.

Приведите SQL-запрос для выдачи всех пользователей, которые совершили заказ, а также вывод этого запроса.
 
Подсказка: используйте директиву `UPDATE`.


![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/6ce311eb-a1b5-40dc-b88a-eb46dbd6469f)

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/1c11f447-bc3b-4553-896c-f49b455c16e5)



## Задача 5

Получите полную информацию по выполнению запроса выдачи всех пользователей из задачи 4 
(используя директиву EXPLAIN).

Приведите получившийся результат и объясните, что значат полученные значения.

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/aee27bfe-29e2-4228-9ad4-903fb5cdf2ce)

```
Используется метод Seq Scan — последовательное, блок за блоком, чтение данных таблицы clients
0.00 затраты на получение первой строки , 18.10 затраты на получение всех строк
806 - количество возвращаемых строк
72 - размер строки
```


## Задача 6

Создайте бэкап БД test_db и поместите его в volume, предназначенный для бэкапов (см. задачу 1).

```
root@447054ffe87d:/# pg_dump -U postgres test_db -f /Users/andreysopov/Docker_pos/data1/backup.sql
```

Остановите контейнер с PostgreSQL, но не удаляйте volumes.


![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/03048507-eac6-406b-afb6-357147b95628)


Поднимите новый пустой контейнер с PostgreSQL.

```
Добавил в docker-compose второй контейнер и сразу примонтировал оба volume
```
![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/38a1c118-7db2-4af5-bfca-0406845d745a)




Восстановите БД test_db в новом контейнере.


![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/d534583f-0adb-4e0e-afce-7399da612ac8)


