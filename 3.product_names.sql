/*
3. Напишите скрипт, который будет возвращать из таблиц поля `product_name`
для пользователей с именем `alexey` независимо от регистра ввода имени.
*/
USE netology_test;

SELECT product_name FROM ORDERS O
JOIN CUSTOMERS C on C.id = O.customer_id
WHERE LOWER(C.name) = 'alexey';