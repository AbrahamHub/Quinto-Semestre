drop database IF EXISTS apren;
CREATE DATABASE apren;
use apren;
CREATE TABLE `users`(
    id INT(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL,
    email varchar(100) NOT NULL UNIQUE KEY,
    age date DEFAULT NULL,
    `gender` enum('M','F') DEFAULT NULL
);
INSERT INTO users(name, email, age) VALUES
('Abraham Castañeda Quintero','apple_abraham@gmail.com','2003-06-24'),
('Diego Castañeda Quintero','581_abraham@gmail.com','2010-06-24');