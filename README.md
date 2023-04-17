# Домашнее задание к занятию "`13.2 Защита хоста`" - `Яринский Денис`

## Задание 1

- Установите eCryptfs.
- Добавьте пользователя cryptouser.
- Зашифруйте домашний каталог пользователя с помощью eCryptfs.

***В качестве ответа пришлите снимки экрана домашнего каталога пользователя с исходными и зашифрованными данными.***

## Ответ: 

Установим eCryptf:

![](img/1.png)

Создадим пользователя:
![](img/2.png)

Произведём шифрацию:
![](img/3.png)

Проверим монтирование:
![](img/4.png)

Произведем проверку (залил файлы от ansible)
![](img/5-Prov.png)


---

## Задание 2

- Установите поддержку LUKS.
- Создайте небольшой раздел, например, 100 Мб.
- Зашифруйте созданный раздел с помощью LUKS.

***В качестве ответа пришлите снимки экрана с поэтапным выполнением задания.***

## Ответ:

Установим luks:
![](img/6.png)

Проверим и создадим раздел:
![](img/7.png)

![](img/8.png)

Отформотируем, примонтируем и проверим работу:

![](img/9.png)

