# Домашнее задание к занятию "`12.1. «Базы данных»`" - `Яринский Д.А.`

Легенда
Заказчик передал вам файл в формате Excel, в котором сформирован отчёт.

На основе этого отчёта нужно выполнить следующие задания.


## Задание 1 

Опишите не менее семи таблиц, из которых состоит база данных:

какие данные хранятся в этих таблицах;
какой тип данных у столбцов в этих таблицах, если данные хранятся в PostgreSQL.
Приведите решение к следующему виду:

Сотрудники (

идентификатор, первичный ключ, serial,
фамилия varchar(50),
...
идентификатор структурного подразделения, внешний ключ, integer).


## Ответ:

### Данные хранятся в этих таблицах :
```
1 - ФИО                 (фамилия имя и отчество сотрудника);
2 - ОКЛАД               (заработная плата сотрудника);
3 - Должность           (Занимаемая должность сотрудника);
4 - Тип подразделения   (отдел в котором работает сотрудник);
5 - Дата                (дата найма сотрудника);
6 - Адрес               (местонахождение филиала);
7 - Проэкт              (наименование проэкта для конкретного сотрудника).
```
### Типы данных для хранения в PostgreSQL:

| №    | Имя               | ТИП          | Eng             |
|:----:|:-----------------:|:------------:|:---------------:|
| 1    | ФИО               | Строковый    | varchar         |
| 2    | ОКЛАД             | Числовой     | decimal/numeric |
| 3    | Должность         | Строковый    | varchar         |
| 4    | Тип подразделения | Строковый    | varchar         |
| 5    | Дата              | Дата и время | tinyint         |
| 6    | Адрес             | Строковый    | varchar         |
| 7    | Проэкт            | Строковый    | varchar         |

### Решение:
```
staff (

staff_id primary_key,

FName VARCHAR(50) ,

LName VARCHAR(50) ,

Patronymic varchar(50),

divisions_id varchar(50),

Structura_id varchar(50),

date_off_id datetime,

position_id varchar(50),

salary_id numeric,

address_id VARCHAR(50),

project_id VARCHAR(50),

)

salary (

salary_id primary_key

pay numeric

)

position (

position_id primary_key

spethion_type

)

divisions (

divisions_id primary_key

department varchar(50)

Unit Group varchar(50)

Unit Group_type

department_type

)

Structura (

Structura_id primary_key

Group varchar(50)

Structura_type

Structura_title

)

date_off_Employee )

date_off_id primary_key

date datetime

(

branch address (

address_id primary_key

edge VARCHAR(50)

city VARCHAR(50)

street VARCHAR(50)

house VARCHAR(50)

)

project (

project_id primary_key

project_type

)
```
---
