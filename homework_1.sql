-- zadanie 2
create database example;
use example;
create table users (id INT, name VARCHAR(255));
create database sample;
-- zadanie 3
mysqldump example > example.sql
mysqldump sample < example.sql
-- zadanie 4
mysqldump mysql help_keyword --where="1 limit 100" > 100_help_keywords.sql