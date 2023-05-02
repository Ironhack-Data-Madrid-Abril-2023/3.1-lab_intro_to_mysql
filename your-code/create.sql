CREATE DATABASE lab_mysql;
USE lab_mysql;
SHOW TABLES;

-- CREAR TABLAS
CREATE TABLE if not exists Coches(
 vin INT primary KEY, fabricante VARCHAR(50), 
 modelo VARCHAR(50), año YEAR, color VARCHAR(50));
CREATE TABLE if not exists Comerciales(
 id_comercial int primary KEY, nombre VARCHAR(50), 
 tienda VARCHAR(50));
CREATE TABLE if not exists Clientes(
id_cliente INT primary KEY, n_cliente VARCHAR(50), 
 telf int, mail VARCHAR(50), direccion VARCHAR(50),
 ciudad VARCHAR(50), provincia VARCHAR(50), pais VARCHAR(50),
 cp INT); 
 CREATE TABLE if not exists Facturas(
 id_factura int, num_factura int, fecha date);
 
 -- AÑADIR FOREIGN KEYS 
 
alter table Facturas
add foreign key(Coches)
references Coches(vin)
on delete set null;

alter table Facturas
add foreign key(Comerciales)
references Comerciales(id_comercial)
on delete set null;

alter table Facturas
add foreign key(Clientes)
references clientes(id_cliente)
on delete set null;

-- INSERTAR DATOS A LAS TABLAS

insert into coches (vin, fabricante, modelo, año, color) values
 ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019,'Blue'),
 ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
 ('RKXVNNIHLVVZOUB4M','Ford', 'Fusion', 2018, 'White'),
 ('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018, 'Silver'),
 ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
 ('DAM41UDE3CHU2WVF6', 'Volvo', 'Cross Country', 2019, 'Gray');
 
insert into clientes (id_cliente, n_cliente, telf, mail, direccion, ciudad, provincia, pais, cp) values
(10001, "Pablo Picasso", 66176382, 'pablitopintorero@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, "Abraham Lincoln", 49077086, 'abrahamelputoamo@gmail.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130 ), 
(30001, "Napoléon Bonaparte", 79754000, 'pequeñoperomaton@gmail.com', ' 40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
 
insert into comerciales (id_comercial, nombre, tienda) values
(00001, "Petey Cruiser", "Madrid" ),
(00002, "Anna Sthesia", "Barcelona"),
(00003, "Paul Molive", "Berlin");

insert into facturas(id_factura, num_factura, fecha) values
(05239, 03, '2022-08-22'),
(03116, 02, '2022-12-31'),
(07113, 01, '2022-01-22');

select * 
from clientes