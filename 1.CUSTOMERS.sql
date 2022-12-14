/*
1. Напишите скрипт создания таблицы со следующими параметрами:
 - название таблицы - `CUSTOMERS`
 - содержит в себе 5 столбцов - `id`, `name`, `surname`, `age`, `phone_number`
 - первичным ключом будет поле `id`, который инкрементируется каждый раз, при создании пользователя
*/

/*
Создание БД из прошлого урока. 

DROP DATABASE IF EXISTS netology_test; -- для чистого теста удаляем бд если она существует.
CREATE DATABASE netology_test; -- ну и создаем ее
*/

USE netology_test;

CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    age INT CHECK (age > 0 AND age < 150),
    phone_number VARCHAR(25)
);

