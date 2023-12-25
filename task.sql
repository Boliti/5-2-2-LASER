-- Создайте базу данных
CREATE DATABASE accident_reporting;
-- Перейдите в базу данных
USE accident_reporting;
-- Создайте таблицу с указанными столбцами
CREATE TABLE accidents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_ DATE,
    time_utc TIME,
    ac_id VARCHAR(255),
    no_account DECIMAL(10,0),
    type_account VARCHAR(255),
    alt DECIMAL(10,0),
    major_city VARCHAR(255),
    color VARCHAR(255),
    injury_reported BOOLEAN, -- Добавьте значение 1 для True и 0 для False
    city_ VARCHAR(255),
    state_ VARCHAR(255)
);