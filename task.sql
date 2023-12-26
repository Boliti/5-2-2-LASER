-- Создайте базу данных
-- CREATE DATABASE accident_reporting;
-- Перейдите в базу данных
USE accident_reporting;
-- DROP TABLE accidents;
-- Создайте таблицу с указанными столбцами
CREATE TABLE IF NOT EXISTS accidents(
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_ DATE,
    time_utc TIME,
    ac_id VARCHAR(255),
    no_account DECIMAL(10,0),
    type_account VARCHAR(255),
    alt VARCHAR(255),
    major_city VARCHAR(255),
    color VARCHAR(255),
    injury_reported VARCHAR(255), -- Добавьте значение 1 для True и 0 для False
    city_ VARCHAR(255),
    state_ VARCHAR(255)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2010.csv' 
    INTO TABLE accidents
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    ESCAPED BY '\\'
    IGNORE 1 LINES
    (@date_,time_utc,ac_id,no_account,type_account,alt,major_city,color,@injury_reported,city_,state_)
    SET date_ = STR_TO_DATE(IF(@date_ = '', NULL, @date_), '%e-%b-%y'),
        injury_reported = IF(@injury_reported = '', NULL, @injury_reported);
        

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2011.csv' 
    INTO TABLE accidents
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    ESCAPED BY '\\'
    IGNORE 1 LINES
    (@date_,time_utc,ac_id,no_account,type_account,alt,major_city,color,@injury_reported,city_,state_)
    SET date_ = STR_TO_DATE(IF(@date_ = '', NULL, @date_), '%e-%b-%y'),
        injury_reported = IF(@injury_reported = '', NULL, @injury_reported);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2012.csv' 
    INTO TABLE accidents
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    ESCAPED BY '\\'
    IGNORE 1 LINES
    (@date_,time_utc,ac_id,no_account,type_account,alt,major_city,color,@injury_reported,city_,state_)
    SET date_ = STR_TO_DATE(IF(@date_ = '', NULL, @date_), '%e-%b-%y'),
      injury_reported = IF(@injury_reported <> 'NO' && (@injury_reported <> 'YES'),NULL,@injury_reported); 


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2013.csv' 
    INTO TABLE accidents
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    ESCAPED BY '\\'
    IGNORE 1 LINES
    (@date_,time_utc,ac_id,no_account,type_account,alt,major_city,color,@injury_reported,city_,state_)
    SET date_ = STR_TO_DATE(IF(@date_ = '', NULL, @date_), '%e-%b-%y'),
          injury_reported = IF(@injury_reported <> 'NO' && (@injury_reported <> 'YES'),NULL,@injury_reported);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2014.csv' 
    INTO TABLE accidents
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    ESCAPED BY '\\'
    IGNORE 1 LINES
    (@date_,time_utc,ac_id,no_account,type_account,alt,major_city,color,@injury_reported,city_,state_)
    SET date_ = STR_TO_DATE(IF(@date_ = '', NULL, @date_), '%e-%b-%y'),
        injury_reported = IF(@injury_reported = '', NULL, @injury_reported); 
