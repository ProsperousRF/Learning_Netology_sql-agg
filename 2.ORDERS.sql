/*
2. Напишите скрипт создания таблицы со следующими параметрами:
 - название таблицы - `ORDERS`
 - содержит в себе 4 столбца - `id`, `date`, `customer_id`,`product_name`, `amount`
 - первичным ключом будет поле `id`, который инкрементируется каждый раз, при создании заказа
 - внешним ключом на поле `id` таблицы пользователей будет `customer_id`
 */

 USE netology_test;

 CREATE TABLE IF NOT EXISTS ORDERS (
    id INT PRIMARY KEY AUTO_INCREMENT,

    /* Тут у меня вопросы:
    1. Почему имя колонки - зарезервированное слово? Жто кажется плохой практикой.
    2. Какой тип данных тут подойдет больше? DATE, DATETIME или TIMESTAMP?
    */
    date DATETIME NOT NULL, -- date DATE и у сиквела отвалится ж.па ;)
    customer_id INT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    amount INT NOT NULL CHECK (amount > 0),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
 );
