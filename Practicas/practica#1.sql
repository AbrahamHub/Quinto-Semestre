DROP DATABASE IF EXISTS abarrotes;

CREATE DATABASE abarrotes;
USE abarrotes;

CREATE TABLE `productos` (
  `id_producto` int(10) unsigned NOT NULL AUTO_INCREMENT UNIQUE KEY,
  `nombre_producto` varchar(150) NOT NULL,
  `precio_producto` double(6,2) unsigned NOT NULL,
  `proveedor` varchar(150) NOT NULL,
  PRIMARY KEY (`id_producto`)
);

CREATE TABLE `clientes` (
  `id_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT UNIQUE KEY,
  `nombre_cliente` varchar(150) NOT NULL,
  `id_producto` int(10) unsigned NOT NULL UNIQUE KEY,
  FOREIGN KEY(`id_producto`) REFERENCES `productos`(`id_producto`)
);

INSERT INTO `productos` (nombre_producto,precio_producto,proveedor) 
VALUES ('Refresco',10.0,'CocaCola'),
('Galletas',15.99,'Gamesa'),
('Jugo 333ml',5.50,'Jumex');

INSERT INTO `clientes` (nombre_cliente,id_producto) 
VALUES ('Abraham Castañeda Quintero',1),('Alejandra Serrano',2),('Bill Gates',3);

#SHOW DATABASES;

#SHOW TABLES;

#USE abarrotes;

#SELECT * FROM productos;

#SELECT * FROM clientes;

#SELECT COUNT(*) FROM productos;

#SELECT COUNT(*) FROM clientes;

#SELECT SUM(precio_producto) FROM productos;