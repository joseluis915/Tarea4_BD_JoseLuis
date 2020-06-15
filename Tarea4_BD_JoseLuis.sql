CREATE DATABASE Tarea4_BD_JoseLuis
GO
 --—————————————————————————————————————————————————————————————————————————————————————
USE Tarea4_BD_JoseLuis
GO
--———————————————————————————————————————[ Ejercicio #2 ]——————————————————————————————————————————————
IF object_id('usuarios') is not null
DROP TABLE usuarios;

CREATE TABLE usuarios
(
  nombre varchar(30),
  clave varchar(10)
);

EXEC sp_tables @table_owner='dbo';
EXEC sp_columns usuarios;

CREATE TABLE usuarios
(
	nombre varchar(30),
	clave varchar(10)
);

DROP TABLE usuarios;

EXEC sp_tables @table_owner='dbo';

--———————————————————————————————————————[ Ejercicio #3 ]——————————————————————————————————————————————
IF object_id('usuarios') is not null

DROP TABLE usuarios;

CREATE TABLE usuarios
(
	nombre varchar(30),
	clave varchar(10)
);

INSERT INTO usuarios (nombre, clave) VALUES ('Mariano','payaso');

SELECT * FROM usuarios;

INSERT INTO usuarios (clave, nombre) VALUES ('River','Juan');

SELECT * FROM usuarios;

INSERT INTO usuarios (nombre,clave) VALUES ('Boca','Luis');

SELECT * FROM usuarios;

--———————————————————————————————————————[ Ejercicio #4 ]——————————————————————————————————————————————
IF object_id('libros') is not null
DROP TABLE libros;

CREATE TABLE libros
(
	titulo varchar(20),
	autor varchar(15),
	editorial varchar(10),
	precio float,
	cantidad integer
);

EXEC sp_columns libros;

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
	VALUES ('El aleph','Borges','Emece',25.50,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
	VALUES ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200);

SELECT * FROM libros;

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200);

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
	VALUES ('Alicia en el pais','Lewis Carroll','Atlantida',10,200);

SELECT * FROM libros;

--———————————————————————————————————————[ Ejercicio #5 ]——————————————————————————————————————————————
IF object_id('libros') is not null
DROP TABLE libros;

CREATE TABLE libros
(
	titulo varchar(50),
	autor varchar(40),
	editorial varchar(20),
	precio float,
	cantidad integer
);

EXEC sp_columns libros;

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
	VALUES ('El aleph','Borges','Emece',25.50,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
	VALUES ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200);

SELECT * FROM libros;

SELECT titulo,autor,editorial FROM libros; 

SELECT titulo,precio FROM libros;

SELECT editorial,cantidad FROM libros; 

--———————————————————————————————————————[ Ejercicio #6 ]——————————————————————————————————————————————
IF object_id('usuarios') is not null
	DROP TABLE usuarios;

CREATE TABLE usuarios
(
	nombre varchar(30),
	clave varchar(10)
);

EXEC sp_columns usuarios;

INSERT INTO usuarios (nombre, clave)
	VALUES ('Marcelo','Boca');
INSERT INTO usuarios (nombre, clave)
	VALUES ('JuanPerez','Juancito');
INSERT INTO usuarios (nombre, clave)
	VALUES ('Susana','River');
INSERT INTO usuarios (nombre, clave)
	VALUES ('Luis','River');

SELECT * FROM usuarios
	WHERE nombre='Leonardo';

SELECT nombre FROM usuarios
	WHERE clave='River';

SELECT nombre FROM usuarios
	WHERE clave='Santi';

--———————————————————————————————————————[ Ejercicio #7 ]——————————————————————————————————————————————
IF object_id('libros') is not null
	DROP TABLE libros;

CREATE TABLE libros
(
	titulo varchar(30),
	autor varchar(30),
	editorial varchar(15),
	precio float
);

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('El aleph','Borges','Emece',24.50);
INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('Martin Fierro','Jose Hernandez','Emece',16.00);
INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('Aprenda PHP','Mario Molina','Emece',35.40);
INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('Cervantes y el quijote','Borges','Paidos',50.90);

SELECT * FROM libros
	WHERE autor<>'Borges';

SELECT titulo,precio
FROM libros
	WHERE precio>20;

SELECT * FROM libros
	WHERE precio<=30;

--———————————————————————————————————————[ Ejercicio #8 ]——————————————————————————————————————————————
IF object_id('usuarios') is not null
	DROP TABLE usuarios;

CREATE TABLE usuarios
(
	nombre varchar(30),
	clave varchar(10)
);

INSERT INTO usuarios (nombre,clave)
	VALUES ('Marcelo','River');
INSERT INTO usuarios (nombre,clave)
	VALUES ('Susana','chapita');
INSERT INTO usuarios (nombre,clave)
	VALUES ('CarlosFuentes','Boca');
INSERT INTO usuarios (nombre,clave)
	VALUES ('FedericoLopez','Boca');

SELECT * FROM usuarios;

DELETE FROM usuarios
	WHERE nombre='Marcelo';

SELECT * FROM usuarios;

DELETE FROM usuarios
	WHERE nombre='Marcelo';

SELECT * FROM usuarios;

DELETE FROM usuarios
	WHERE clave='Boca';

SELECT * FROM usuarios;

DELETE FROM usuarios;

SELECT * FROM usuarios;

--———————————————————————————————————————[ Ejercicio #11 ]——————————————————————————————————————————————
IF object_id('usuarios') is not null
	DROP TABLE usuarios;

CREATE TABLE usuarios
(
	nombre varchar(20),
	clave varchar(10)
);

INSERT INTO usuarios (nombre,clave)
	VALUES ('Marcelo','River');
INSERT INTO usuarios (nombre,clave)
	VALUES ('Susana','chapita');
INSERT INTO usuarios (nombre,clave)
	VALUES ('Carlosfuentes','Boca');
INSERT INTO usuarios (nombre,clave)
	VALUES ('Federicolopez','Boca');

UPDATE usuarios SET clave='RealMadrid';

SELECT * FROM usuarios;

UPDATE usuarios SET clave='Boca'
	WHERE nombre='Federicolopez';

SELECT * FROM usuarios;

UPDATE usuarios SET clave='payaso'
	 WHERE nombre='JuanaJuarez';

SELECT * FROM usuarios;

UPDATE usuarios SET nombre='Marceloduarte', clave='Marce'
	WHERE nombre='Marcelo';

SELECT * FROM usuarios;

IF object_id('libros') is not null
	DROP TABLE libros;

CREATE TABLE libros
(
	titulo varchar(30),
	autor varchar(20),
	editorial varchar(15)
);

INSERT INTO libros (titulo,autor,editorial)
	VALUES ('El aleph','Borges','Emece');

SELECT * FROM libros --mostramos los registros de libros; 

SELECT titulo, autor --mostramos títulos y nombres de los autores
 
FROM libros;

--———————————————————————————————————————[ Ejercicio #12 ]——————————————————————————————————————————————
IF object_id('libros') is not null
	DROP TABLE libros;

CREATE TABLE libros
(
	titulo varchar(30) not null,
	autor varchar(30) not null,
	editorial varchar(15) null,
	precio float
);

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES('El aleph','Borges','Emece',null);

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES('Alicia en el pais','Lewis Carroll',null,0);

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES(null,'Borges','Siglo XXI',25);

EXEC sp_columns libros;

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES('Uno','Richard Bach','',18.50);

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES('','Richard Bach','Planeta',22);

SELECT * FROM libros;

SELECT * FROM libros
	WHERE precio is null;

SELECT * FROM libros
	WHERE precio=0;

SELECT * FROM libros
	WHERE editorial is null;

SELECT * FROM libros
	WHERE editorial=''; 

SELECT * FROM libros
	WHERE precio is not null;

IF object_id('usuarios') is not null
	DROP TABLE usuarios;

CREATE TABLE usuarios
(
	nombre varchar(20),
	clave varchar(10),
	 PRIMARY KEY(nombre)
);

EXEC sp_columns usuarios;

INSERT INTO usuarios (nombre, clave)
	VALUES ('juanperez','Boca');
INSERT INTO usuarios (nombre, clave)
	VALUES ('raulgarcia','River');

INSERT INTO usuarios (nombre, clave)
	VALUES ('juanperez','payaso');

INSERT INTO usuarios (nombre, clave)
	VALUES (null,'payaso');

UPDATE usuarios SET nombre='juanperez'
	 WHERE nombre='raulgarcia';

--———————————————————————————————————————[ Ejercicio #13 ]——————————————————————————————————————————————
IF object_id('libros') is not null
	DROP TABLE libros;

CREATE TABLE libros
(
  codigo int IDENTITY,
  titulo varchar(50) not null,
  autor varchar(40),
  editorial varchar(20),
  precio float
);

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES('El aleph','Borges','Emece',23);

SELECT * FROM libros;

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES('Uno','Richard Bach','Planeta',18);
INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES('Aprenda PHP','Mario Molina','Siglo XXI',45.60);
INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES('Alicia en el pais de maravillas','Lewis Carroll','Paidos',15.50);

SELECT * FROM libros;

INSERT INTO libros (codigo,titulo,autor,editorial,precio)
	VALUES(5,'Martin Fierro','Jose Hernandez','Paidos',25);

UPDATE libros SET codigo=9
	WHERE titulo='Uno';

EXEC sp_columns libros;

DELETE FROM libros
	WHERE autor='Lewis Carroll';

INSERT INTO libros (titulo, autor, editorial, precio)
	 VALUES('Martin Fierro','Jose Hernandez','Paidos',25); 

SELECT * FROM libros;

--———————————————————————————————————————[ Ejercicio #14 ]——————————————————————————————————————————————
IF object_id('libros') is not null
	DROP TABLE libros;

CREATE TABLE libros
(
	codigo int IDENTITY(100,2),
	titulo varchar(20),
	autor varchar(30),
	precio float
);

INSERT INTO libros (titulo,autor,precio)
	VALUES('El aleph','Borges',23);
INSERT INTO libros (titulo,autor,precio)
	VALUES('Uno','Richard Bach',18);
INSERT INTO libros (titulo,autor,precio)
	VALUES('Aprenda PHP','Mario Molina',45.60);

SELECT * FROM libros;

SELECT ident_seed('libros');

INSERT INTO libros (codigo,titulo,autor,precio)
	VALUES(106,'Martin Fierro','Jose Hernandez',25);

SET identity_insert libros ON;

INSERT INTO libros (codigo,titulo,autor)
	VALUES (100,'Matematica estas ahi','Paenza');

INSERT INTO libros (codigo,titulo,autor)
	VALUES (1,'Ilusiones','Richard Bach');

INSERT INTO libros (titulo,autor)
	VALUES ('Uno','Richard Bach');

SET identity_insert libros off;

INSERT INTO libros (codigo,titulo,autor)
	VALUES (300,'Uno','Richard Bach');

--———————————————————————————————————————[ Ejercicio #15 ]——————————————————————————————————————————————
IF object_id('libros') is not null
	DROP TABLE libros;

CREATE TABLE libros
(
	codigo int IDENTITY,
	titulo varchar(30),
	autor varchar(20),
	editorial varchar(15),
	precio float
);

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('El aleph','Borges','Emece',25.60);
INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('Uno','Richard Bach','Planeta',18);

SELECT * FROM libros;

truncate TABLE libros;

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('El aleph','Borges','Emece',25.60);
INSERT INTO libros (titulo,autor,editorial,precio)
	 VALUES ('Uno','Richard Bach','Planeta',18);

SELECT * FROM libros;

DELETE FROM libros;

INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('El aleph','Borges','Emece',25.60);
INSERT INTO libros (titulo,autor,editorial,precio)
	VALUES ('Uno','Richard Bach','Planeta',18);

SELECT * FROM libros;

--———————————————————————————————————————[ Ejercicio #17 ]——————————————————————————————————————————————
 IF object_id('visitantes') is not null
  DROP TABLE visitantes;

 CREATE TABLE visitantes(
  nombre varchar(30),
  edad integer,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11)
 );

 INSERT INTO visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  VALUES ('Juan Juarez',32,'masc','Avellaneda 789','Cordoba','4234567');

 INSERT INTO visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  VALUES ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

 SELECT * FROM visitantes;

--———————————————————————————————————————[ Ejercicio #18 ]——————————————————————————————————————————————
 IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo smallint IDENTITY,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio smallmoney,
  cantidad tinyint
 );

 INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('El aleph','Borges','Emece',25.60,260);

 INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('El aleph','Borges','Emece',250000,100);

 INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Uno','Richard Bach','Planeta','a50.30',100);

 INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Uno','Richard Bach','Planeta',50.30,'100');

 SELECT * FROM libros;

--———————————————————————————————————————[ Ejercicio #19 ]——————————————————————————————————————————————
 IF object_id('empleados') is not null
  DROP TABLE empleados;

 CREATE TABLE empleados
 (
  nombre varchar(20),
  documento char(8),
  fechaingreso datetime
 );

 SET dateformat dmy;

 INSERT INTO empleados VALUES('Ana Gomez','22222222','12-01-1980');
 INSERT INTO empleados VALUES('Bernardo Huerta','23333333','15-03-81');
 INSERT INTO empleados VALUES('Carla Juarez','24444444','20/05/1983');
 INSERT INTO empleados VALUES('Daniel Lopez','25555555','2.5.1990');

 SELECT * FROM empleados;

 SELECT * FROM empleados WHERE fechaingreso<'01-01-1985';

 UPDATE empleados SET nombre='Maria Carla Juarez' WHERE fechaingreso='20.5.83';

 SELECT * FROM empleados;

 DELETE FROM empleados WHERE fechaingreso<>'20/05/1983';

 SELECT * FROM empleados;

--———————————————————————————————————————[ Ejercicio #20 ]——————————————————————————————————————————————
 IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros
 (
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15)
 );

 INSERT INTO libros
  VALUES ('Uno','Richard Bach','Planeta');

 INSERT INTO libros (titulo, autor)
  VALUES ('El aleph','Borges');

 INSERT INTO libros (autor,editorial)
  VALUES ('Lewis Carroll','Planeta');

 SELECT * FROM libros;

--———————————————————————————————————————[ Ejercicio #21 ]——————————————————————————————————————————————
 IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros
 (
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30) not null default 'Desconocido', 
  editorial varchar(20),
  precio decimal(5,2),
  cantidad tinyint default 0
 );

 INSERT INTO libros (titulo,editorial,precio)
  VALUES('Java en 10 minutos','Paidos',50.40);

 SELECT * FROM libros;

 INSERT INTO libros (titulo,editorial)
  VALUES('Aprenda PHP','Siglo XXI');
 SELECT * FROM libros;

 EXEC sp_columns libros;

 INSERT INTO libros (titulo,autor,precio,cantidad)
  VALUES ('El gato con botas',default,default,100);
 SELECT *FROM libros;

 INSERT INTO libros default VALUES;
 SELECT * FROM libros;

 INSERT INTO libros (titulo,autor,cantidad)
  VALUES ('Alicia en el pais de las maravillas','Lewis Carroll',null);

--———————————————————————————————————————[ Ejercicio #22 ]——————————————————————————————————————————————
 IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros
 (
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  PRIMARY KEY (codigo)
 );

 INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El aleph','Borges','Emece',25);
 INSERT INTO libros
  VALUES('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 SELECT titulo, precio,cantidad,
  precio*cantidad
  FROM libros;

 SELECT titulo,precio,
  precio-(precio*0.1)
  FROM libros;

 UPDATE libros SET precio=precio-(precio*0.1);
 SELECT * FROM libros;

 SELECT titulo+'-'+autor+'-'+editorial
  FROM libros;

--———————————————————————————————————————[ Ejercicio #23 ]——————————————————————————————————————————————
 IF object_id('agenda') is not null
  DROP TABLE agenda;

 CREATE TABLE agenda
 (
  nombre varchar(30),
  domicilio varchar(30),
  telefono varchar(11)
 );

 INSERT INTO agenda
  VALUES('Juan Perez','Avellaneda 908','4252525');
 INSERT INTO agenda
  VALUES('Marta Lopez','Sucre 34','4556688');
 INSERT INTO agenda
  VALUES('Carlos Garcia','Sarmiento 1258',null);

 SELECT nombre AS NombreYApellido,
  domicilio,telefono
  FROM agenda;

 SELECT nombre AS 'Nombre y apellido',
  domicilio,telefono
  FROM agenda;

 SELECT nombre 'Nombre y apellido',
  domicilio,telefono
  FROM agenda;

 --———————————————————————————————————————[ Ejercicio #25 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  PRIMARY KEY (codigo)
 );

 INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El aleph','Borges','Emece',25);
 INSERT INTO libros
  VALUES('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 SELECT substring(titulo,1,12) AS titulo
  FROM libros;

 SELECT left(titulo,12) AS titulo
  FROM libros;

 SELECT titulo,
  str(precio,6,1)
  FROM libros;

 SELECT titulo,
  str(precio)
  FROM libros;

  SELECT titulo, autor, upper(editorial)
   FROM libros;

 --———————————————————————————————————————[ Ejercicio #26 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  PRIMARY KEY (codigo)
 );

 INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El aleph','Borges','Emece',25.33);
 INSERT INTO libros
  VALUES('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
 INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);

 SELECT titulo,autor,precio,
  floor(precio) AS abajo,
  ceiling(precio) AS arriba
  FROM libros;

 --———————————————————————————————————————[ Ejercicio #27 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  edicion datetime,
  precio decimal(6,2)
 );

 INSERT INTO libros VALUES('El aleph','Borges','Emece','1980/10/10',25.33);
 INSERT INTO libros VALUES('Java en 10 minutos','Mario Molina','Siglo XXI','2000/05/05',50.65);
 INSERT INTO libros VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece','2000/08/09',19.95);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Siglo XXI','2000/02/04',45);

 SELECT titulo, datepart (year,edicion) FROM libros;

 SELECT titulo, datename (month,edicion) FROM libros;

 SELECT titulo, datediff(year,edicion,getdate()) FROM libros;

 SELECT titulo FROM libros
  WHERE datepart(day,edicion)=9;

 --———————————————————————————————————————[ Ejercicio #28 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  PRIMARY KEY (codigo)
 );

 INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El aleph','Borges','Emece',25.33);
 INSERT INTO libros
  VALUES('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
 INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);
 INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',15);

SELECT * FROM libros
 order by titulo;

 SELECT titulo,autor,precio
  FROM libros order by 3;

 SELECT * FROM libros
  order by editorial desc;

 SELECT * FROM libros
  order by titulo,editorial;

 SELECT * FROM libros
  order by titulo asc, editorial desc;

 SELECT titulo, autor
  FROM libros
  order by precio;

 SELECT titulo, autor, editorial,
 precio+(precio*0.1) AS 'precio con descuento'
 FROM libros
 order by 4;

	
 --———————————————————————————————————————[ Ejercicio #29 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Emece',15.90);
 INSERT INTO libros
  VALUES('Antología poética','Borges','Planeta',39.50);
 INSERT INTO libros
  VALUES('Java en 10 minutos','Mario Molina','Planeta',50.50);
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.90);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Emece',25.90);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Paidos',16.80);
 INSERT INTO libros
  VALUES('Aprenda PHP','Mario Molina','Emece',19.50);
 INSERT INTO libros
  VALUES('Cervantes y el quijote','Borges','Paidos',18.40);

 SELECT * FROM libros
  WHERE (autor='Borges') and
  (precio<=20);

 SELECT * FROM libros
  WHERE autor='Borges' or
  editorial='Planeta';

 SELECT * FROM libros
  WHERE not editorial='Planeta';

 SELECT * FROM libros
  WHERE (autor='Borges') or
  (editorial='Paidos' and precio<20);

 SELECT * FROM libros
  WHERE (autor='Borges' or editorial='Paidos') and
  (precio<20);

 --———————————————————————————————————————[ Ejercicio #30 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Emece',15.90);
 INSERT INTO libros
  VALUES('Cervantes y el quijote','Borges','Paidos',null);
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Emece',25.90);
 INSERT INTO libros (titulo,autor,precio)
  VALUES('Antología poética','Borges',25.50);
 INSERT INTO libros (titulo,autor,precio)
  VALUES('Java en 10 minutos','Mario Molina',45.80);
 INSERT INTO libros (titulo,autor)
  VALUES('Martin Fierro','Jose Hernandez');
 INSERT INTO libros (titulo,autor)
  VALUES('Aprenda PHP','Mario Molina');

 SELECT * FROM libros
  WHERE editorial is null;

 SELECT * FROM libros
  WHERE editorial is not null;

 --———————————————————————————————————————[ Ejercicio #31 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Emece',15.90);
 INSERT INTO libros
  VALUES('Cervantes y el quijote','Borges','Paidos',null);
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Emece',25.90);
 INSERT INTO libros (titulo,autor,precio)
  VALUES('Antología poética','Borges',32);
 INSERT INTO libros (titulo,autor,precio)
  VALUES('Java en 10 minutos','Mario Molina',45.80);
 INSERT INTO libros (titulo,autor,precio)
  VALUES('Martin Fierro','Jose Hernandez',40);
 INSERT INTO libros (titulo,autor,precio)
  VALUES('Aprenda PHP','Mario Molina',56.50);

 SELECT * FROM libros
  WHERE precio between 20 and 40;

 SELECT * FROM libros
  WHERE precio not between 20 and 35;


 --———————————————————————————————————————[ Ejercicio #32 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(20),
  precio decimal(6,2),
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Emece',15.90);
 INSERT INTO libros
  VALUES('Cervantes y el quijote','Borges','Paidos',null);
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 INSERT INTO libros
  VALUES('Matematica estas ahi','Paenza','Siglo XXI',15);
 INSERT INTO libros (titulo,precio)
  VALUES('Antología poética',32);
 INSERT INTO libros (titulo,autor,precio)
  VALUES('Martin Fierro','Jose Hernandez',40);
 INSERT INTO libros (titulo,autor,precio)
  VALUES('Aprenda PHP','Mario Molina',56.50);

 SELECT * FROM libros
  WHERE autor in('Borges','Paenza');

 SELECT * FROM libros
  WHERE autor not in ('Borges','Paenza');

 --———————————————————————————————————————[ Ejercicio #33 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  PRIMARY KEY(codigo)
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Emece',15.90);
 INSERT INTO libros
  VALUES('Antología poética','J. L. Borges','Planeta',null);
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 INSERT INTO libros
  VALUES('Matematica estas ahi','Paenza','Siglo XXI',15);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez',default,40);
 INSERT INTO libros
  VALUES('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);

 SELECT * FROM libros
  WHERE autor like '%Borges%';

 SELECT * FROM libros
  WHERE titulo like 'M%';

 SELECT * FROM libros
  WHERE titulo not like 'M%';

 SELECT * FROM libros
  WHERE autor like '%Carrol_';

 SELECT titulo,autor,editorial
  FROM libros
  WHERE editorial like '[P-S]%';

 SELECT titulo,autor,editorial
  FROM libros
  WHERE editorial like '[^PN]%';

 SELECT titulo,precio FROM libros
  WHERE precio like '1_.%';

 SELECT titulo,precio FROM libros
  WHERE precio like '%.00';

 --———————————————————————————————————————[ Ejercicio #34 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  PRIMARY KEY(codigo)
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Emece',15.90);
 INSERT INTO libros
  VALUES('Antología poética','J. L. Borges','Planeta',null);
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 INSERT INTO libros
  VALUES('Matematica estas ahi','Paenza','Siglo XXI',15);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez',default,40);
 INSERT INTO libros
  VALUES('Aprenda PHP','Mario Molina','Nuevo siglo',null);
 INSERT INTO libros
  VALUES('Uno','Richard Bach','Planeta',20);

 SELECT COUNT(*)
  FROM libros;

 SELECT COUNT(*)
  FROM libros
  WHERE editorial='Planeta';

 SELECT COUNT(precio)
  FROM libros;

 --———————————————————————————————————————[ Ejercicio #35 ]——————————————————————————————————————————————
  IF object_id ('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  PRIMARY KEY(codigo)
 );

 INSERT INTO libros VALUES('El aleph','Borges','Emece',15.90);
 INSERT INTO libros VALUES('Antología poética','Borges','Planeta',null);
 INSERT INTO libros VALUES('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 INSERT INTO libros VALUES('Matematica estas ahi','Paenza','Siglo XXI',15);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez',default,40);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Nuevo siglo',null);
 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',20);

 SELECT count_big(*)
  FROM libros;

 SELECT count_big(*)
  FROM libros
  WHERE editorial='Planeta';

 SELECT count_big(precio)
  FROM libros;

 SELECT count_big(distinct editorial)
  FROM libros;

 --———————————————————————————————————————[ Ejercicio #36 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(30) default 'Desconocido',
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  PRIMARY KEY(codigo)
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Planeta',15,null);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 INSERT INTO libros
  VALUES('Antologia poetica','J.L. Borges','Planeta',null,150);
 INSERT INTO libros
  VALUES('Aprenda PHP','Mario Molina','Emece',18.20,null);
 INSERT INTO libros
  VALUES('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 INSERT INTO libros
  VALUES('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 INSERT INTO libros
  VALUES('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 INSERT INTO libros
  VALUES('Harry Potter y la camara secreta','J.K. Rowling','Emece',46.00,100);
 INSERT INTO libros (titulo,autor,cantidad)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll',220);
 INSERT INTO libros (titulo,autor,cantidad)
  VALUES('PHP de la A a la Z',default,0);

 SELECT sum(cantidad)
  FROM libros;

 SELECT sum(cantidad)
  FROM libros
  WHERE editorial='Emece';

 SELECT max(precio)
  FROM libros;

 SELECT min(precio)
  FROM libros
  WHERE autor like '%Rowling%';

 SELECT avg(precio)
  FROM libros
  WHERE titulo like '%PHP%';

 --———————————————————————————————————————[ Ejercicio #37 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  PRIMARY KEY(codigo)
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Planeta',15,null);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 INSERT INTO libros
  VALUES('Antologia poetica','J.L. Borges','Planeta',null,150);
 INSERT INTO libros
  VALUES('Aprenda PHP','Mario Molina','Emece',18.20,null);
 INSERT INTO libros
  VALUES('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 INSERT INTO libros
  VALUES('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 INSERT INTO libros
  VALUES('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 INSERT INTO libros
  VALUES('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',22.50,200);
 INSERT INTO libros
  VALUES('PHP de la A a la Z',null,null,null,0);

 SELECT editorial, COUNT(*)
  FROM libros
  group by editorial;

 SELECT editorial, COUNT(precio)
  FROM libros
  group by editorial;

 SELECT editorial, sum(precio)
  FROM libros
  group by editorial;

 SELECT editorial,
  max(precio) AS mayor,
  min(precio) AS menor
  FROM libros
  group by editorial;

 SELECT editorial, avg(precio)
  FROM libros
  group by editorial;

 SELECT editorial, COUNT(*)
  FROM libros
  WHERE precio<30
  group by editorial;

 SELECT editorial, COUNT(*)
  FROM libros
  WHERE precio<30
  group by all editorial;

 --———————————————————————————————————————[ Ejercicio #38 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  PRIMARY KEY(codigo)
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Planeta',35,null);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Planeta',40,200);
 INSERT INTO libros
  VALUES('Antologia poetica','J.L. Borges','Planeta',null,150);
 INSERT INTO libros
  VALUES('Aprenda PHP','Mario Molina','Emece',18,null);
 INSERT INTO libros
  VALUES('Manual de PHP', 'J.C. Paez', 'Siglo XXI',56,120);
 INSERT INTO libros
  VALUES('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 INSERT INTO libros
  VALUES('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 INSERT INTO libros
  VALUES('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',42,80);
 INSERT INTO libros
  VALUES('PHP de la A a la Z',null,null,110,0);
 INSERT INTO libros
  VALUES('Uno','Richard Bach','Planeta',25,null);

 SELECT editorial, COUNT(*) FROM libros
  group by editorial
  having COUNT(*)>2;

 SELECT editorial, avg(precio) FROM libros
  group by editorial
  having avg(precio)>25;

 SELECT editorial, COUNT(*) FROM libros
  WHERE precio is not null
  group by editorial
  having editorial<>'Planeta';

 SELECT editorial, avg(precio) FROM libros
  group by editorial
  having COUNT(*) > 2; 

 SELECT editorial, max(precio) AS 'mayor'
  FROM libros
  group by editorial
  having max(precio)<100 and
  max(precio)>30
  order by editorial; 

 --———————————————————————————————————————[ Ejercicio #39 ]——————————————————————————————————————————————
  IF object_id('visitantes') is not null
  DROP TABLE visitantes;

 CREATE TABLE visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11),
  montocompra decimal(6,2) not null
 );

 INSERT INTO visitantes
  VALUES ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 
 INSERT INTO visitantes
  VALUES ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40);
 INSERT INTO visitantes
  VALUES ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
 INSERT INTO visitantes
  VALUES ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120);
 INSERT INTO visitantes
  VALUES ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
 INSERT INTO visitantes
  VALUES ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95);
 INSERT INTO visitantes
  VALUES ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50);
 INSERT INTO visitantes
  VALUES ('Roxana Lopez',20,'f','null','Alta Gracia',null,240);
 INSERT INTO visitantes
  VALUES ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
 INSERT INTO visitantes
  VALUES ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

 SELECT ciudad,
  COUNT(*) AS cantidad
  FROM visitantes
  group by ciudad WITH rollup;

 SELECT ciudad,sexo,
  COUNT(*) AS cantidad
  FROM visitantes
  group by ciudad,sexo
  WITH rollup;

 SELECT ciudad,sexo,
  COUNT(*) AS cantidad,
  sum(montocompra) AS total
  FROM visitantes
  group by ciudad,sexo
  WITH rollup;

 --———————————————————————————————————————[ Ejercicio #40 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;

 CREATE TABLE empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  PRIMARY KEY (documento)
 );

 INSERT INTO empleados
  VALUES ('22222222','Alberto Lopez','m','c','Sistemas');
 INSERT INTO empleados
  VALUES ('23333333','Beatriz Garcia','f','c','Administracion');
 INSERT INTO empleados
  VALUES ('24444444','Carlos Fuentes','m','s','Administracion');
 INSERT INTO empleados
  VALUES ('25555555','Daniel Garcia','m','s','Sistemas');
 INSERT INTO empleados
  VALUES ('26666666','Ester Juarez','f','c','Sistemas');
 INSERT INTO empleados
  VALUES ('27777777','Fabian Torres','m','s','Sistemas');
 INSERT INTO empleados
  VALUES ('28888888','Gabriela Lopez','f','c','Sistemas');
 INSERT INTO empleados
  VALUES ('29999999','Hector Garcia','m','c','Administracion');
 INSERT INTO empleados
  VALUES ('30000000','Ines Torres','f','c','Administracion');
 INSERT INTO empleados
  VALUES ('11111111','Juan Garcia','m','v','Administracion');
 INSERT INTO empleados
  VALUES ('12222222','Luisa Perez','f','v','Administracion');
 INSERT INTO empleados
  VALUES ('31111111','Marcela Garcia','f','s','Administracion');
 INSERT INTO empleados
  VALUES ('32222222','Nestor Fuentes','m','c','Sistemas');
 INSERT INTO empleados
  VALUES ('33333333','Oscar Garcia','m','s','Sistemas');
 INSERT INTO empleados
  VALUES ('34444444','Patricia Juarez','f','c','Administracion');
 INSERT INTO empleados
  VALUES ('35555555','Roberto Torres','m','c','Sistemas');
 INSERT INTO empleados
  VALUES ('36666666','Susana Torres','f','c','Administracion');

 SELECT sexo,estadocivil,seccion,
  COUNT(*) FROM empleados
  group by sexo,estadocivil,seccion
  WITH rollup;

 SELECT sexo,estadocivil,seccion,
  COUNT(*) FROM empleados
  group by sexo,estadocivil,seccion
  WITH cube;

 --———————————————————————————————————————[ Ejercicio #41 ]——————————————————————————————————————————————
  IF object_id('visitantes') is not null
  DROP TABLE visitantes;

 CREATE TABLE visitantes(
  nombre varchar(30),
  sexo char(1),
  ciudad varchar(20)
 );

 INSERT INTO visitantes VALUES('Susana Molina', 'f', 'Cordoba');
 INSERT INTO visitantes VALUES('Marcela Mercado', 'f','Cordoba');
 INSERT INTO visitantes VALUES('Roberto Perez','f',null);
 INSERT INTO visitantes VALUES('Alberto Garcia','m','Cordoba');
 INSERT INTO visitantes VALUES('Teresa Garcia','f','Alta Gracia');

 SELECT ciudad,
  COUNT(*) AS cantidad
  FROM visitantes
  group by ciudad
  WITH rollup;

 SELECT ciudad,
  COUNT(*) AS cantidad,
  grouping(ciudad) AS resumen
  FROM visitantes
  group by ciudad
  WITH rollup;

 --———————————————————————————————————————[ Ejercicio #42 ]——————————————————————————————————————————————
  IF object_id('visitantes') is not null
  DROP TABLE visitantes;

 CREATE TABLE visitantes(
  nombre varchar(30),
  edad tinyint,
  ciudad varchar(20),
  provincia varchar(20),
  mail varchar(30),
  montocompra decimal(6,2)
 );

 INSERT INTO visitantes
  VALUES ('Susana Molina',28,'Cordoba','Cordoba','susanamolina@gmail.com',50); 
 INSERT INTO visitantes
  VALUES ('Marcela Mercado',36,'Carlos Paz','Cordoba',null,20);
 INSERT INTO visitantes
  VALUES ('Alberto Garcia',35,'La Falda','Cordoba','albertgomgarcia@hotmail.com',30); 
 INSERT INTO visitantes
  VALUES ('Teresa Garcia',33,'Alta Gracia','Cordoba',null,120);
 INSERT INTO visitantes
  VALUES ('Roberto Perez',45,'Alta Gracia','Cordoba','robertomarioperez@hotmail.com',30);
 INSERT INTO visitantes
  VALUES ('Marina Torres',22,'Rosario','Santa Fe','marinatorres@xaxamail.com',90);
 INSERT INTO visitantes
  VALUES ('Julieta Gomez',24,'Rosario','Santa Fe',null,50);
 INSERT INTO visitantes
  VALUES ('Roxana Lopez',20,'Alta Gracia','Cordoba',null,200);
 INSERT INTO visitantes
  VALUES ('Liliana Garcia',50,'Capital Federal','Buenos Aires','lilianagarcia@hotmail.com',40);
 INSERT INTO visitantes
  VALUES ('Juan Torres',43,'Carlos Paz','Cordoba',null,10);

 SELECT *FROM visitantes
 compute avg(montocompra);

 SELECT edad,ciudad,montocompra
  FROM visitantes
  compute avg(edad),sum(montocompra);

 SELECT nombre,ciudad,provincia
  FROM visitantes
  order by provincia,ciudad
  compute COUNT(provincia)
  by provincia,ciudad;

 SELECT *FROM visitantes
  order by provincia,ciudad
  compute avg(edad), sum(montocompra)
  compute avg(montocompra),COUNT(provincia)
  by provincia,ciudad;

 --———————————————————————————————————————[ Ejercicio #43 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  PRIMARY KEY(codigo)
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Planeta');
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Emece');
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez','Planeta');
 INSERT INTO libros
  VALUES('Antologia poetica','Borges','Planeta');
 INSERT INTO libros
  VALUES('Aprenda PHP','Mario Molina','Emece');
 INSERT INTO libros
  VALUES('Aprenda PHP','Lopez','Emece');
 INSERT INTO libros
  VALUES('Manual de PHP', 'J. Paez', null);
 INSERT INTO libros
  VALUES('Cervantes y el quijote',null,'Paidos');
 INSERT INTO libros
  VALUES('Harry Potter y la piedra filosofal','J.K. Rowling','Emece');
 INSERT INTO libros
  VALUES('Harry Potter y la camara secreta','J.K. Rowling','Emece');
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Paidos');
 INSERT INTO libros
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
 INSERT INTO libros
  VALUES('PHP de la A a la Z',null,null);
 INSERT INTO libros
  VALUES('Uno','Richard Bach','Planeta');

 SELECT distinct autor FROM libros;

 SELECT distinct autor FROM libros
  WHERE autor is not null;

 SELECT COUNT(distinct autor)
  FROM libros;

 SELECT distinct editorial FROM libros;

 SELECT COUNT(distinct editorial) FROM libros;

 SELECT distinct autor FROM libros
  WHERE editorial='Planeta';

 SELECT editorial,COUNT(distinct autor)
  FROM libros
  group by editorial;

 SELECT distinct titulo,editorial
  FROM libros
  order by titulo;

 --———————————————————————————————————————[ Ejercicio #44 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(20),
  editorial varchar(20)
 );

 INSERT INTO libros VALUES ('Uno','Richard Bach','Planeta');
 INSERT INTO libros VALUES ('El aleph','Borges','Emece');
 INSERT INTO libros VALUES ('Alicia en el pais...','Carroll','Planeta');
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Siglo XXI');
 INSERT INTO libros VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI');
 INSERT INTO libros VALUES ('Java desde cero','Mario Molina','Emece');
 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta');

 SELECT top 2 * FROM libros;

 SELECT top 3 titulo,autor 
  FROM libros
  order by autor;

 SELECT top 3 WITH ties titulo,autor 
  FROM libros
  order by autor;

 SELECT top 50 percent
  * FROM libros
  order by autor;

 --———————————————————————————————————————[ Ejercicio #45 ]——————————————————————————————————————————————
  IF object_id('vehiculos') is not null
  DROP TABLE vehiculos;

 CREATE TABLE vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime,
  horasalida datetime,
  PRIMARY KEY(patente,horallegada)
 );

 INSERT INTO vehiculos VALUES('AIC124','a','8:05','12:30');
 INSERT INTO vehiculos VALUES('CAA258','a','8:05',null);
 INSERT INTO vehiculos VALUES('DSE367','m','8:30','18:00');
 INSERT INTO vehiculos VALUES('FGT458','a','9:00',null);
 INSERT INTO vehiculos VALUES('AIC124','a','16:00',null);
 INSERT INTO vehiculos VALUES('LOI587','m','18:05','19:55');

 INSERT INTO vehiculos VALUES('LOI587','m','18:05',null);

 INSERT INTO vehiculos VALUES('LOI587','m','21:30',null);

 UPDATE vehiculos SET horallegada='8:05'
  WHERE patente='AIC124' and horallegada='16:00';

 INSERT INTO vehiculos VALUES('HUO690','m',null,null);

 EXEC sp_columns vehiculos;


 --———————————————————————————————————————[ Ejercicio #47 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  editorial varchar(15),
  precio decimal(6,2)
 );

 INSERT INTO libros (titulo,editorial) VALUES('Martin Fierro','Emece');
 INSERT INTO libros (titulo,editorial) VALUES('Aprenda PHP','Emece');

 EXEC sp_helpconstraint libros;

 DROP TABLE libros;
 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );

 ALTER TABLE libros
   add CONSTRAINT DF_libros_autor
   default 'Desconocido'
   FOR autor;

 EXEC sp_helpconstraint libros;

 INSERT INTO libros (titulo,editorial) VALUES('Martin Fierro','Emece');
 INSERT INTO libros default VALUES;

 SELECT * FROM libros;

 ALTER TABLE libros
   add CONSTRAINT DF_libros_precio
   default 0
   FOR precio;

 EXEC sp_helpconstraint libros;

 --———————————————————————————————————————[ Ejercicio #48 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  preciomin decimal(5,2),
  preciomay decimal(5,2)
 );

 INSERT INTO libros VALUES ('Uno','Bach','Planeta',22,20);
 INSERT INTO libros VALUES ('El quijote','Cervantes','Emece',15,13);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Siglo XXI',48,53);
 INSERT INTO libros VALUES ('Java en 10 minutos','Garcia','Siglo XXI',35,40);

 ALTER TABLE libros
   add CONSTRAINT CK_libros_precios_positivo
   check (preciomin>=0 and preciomay>=0);

 UPDATE libros SET preciomay=48
  WHERE titulo='Aprenda PHP';
 
 DELETE FROM libros WHERE titulo='Java en 10 minutos'; 

 ALTER TABLE libros
   add CONSTRAINT CK_libros_preciominmay
   check (preciomay<=preciomin);

 EXEC sp_helpconstraint libros;

 INSERT INTO libros default VALUES;

 --———————————————————————————————————————[ Ejercicio #49 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2)
 );

 INSERT INTO libros VALUES ('Uno','Bach','Planeta',22);
 INSERT INTO libros VALUES ('El quijote','Cervantes','Emece',15);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Siglo XXI',-40);

 ALTER TABLE libros
 WITH nocheck
 add CONSTRAINT CK_libros_precio_positivo
 check (precio>=0);

 ALTER TABLE libros
  nocheck CONSTRAINT CK_libros_precio_positivo;

 INSERT INTO libros VALUES('Java en 10 minutos',default,'Siglo XXI',-1);

 EXEC sp_helpconstraint libros;

 ALTER TABLE libros
  check CONSTRAINT CK_libros_precio_positivo;

 --———————————————————————————————————————[ Ejercicio #50 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  PRIMARY KEY (codigo)
 );

 EXEC sp_helpconstraint libros;

 DROP TABLE libros;
 CREATE TABLE libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 ALTER TABLE libros
 add CONSTRAINT PK_libros_codigo
 PRIMARY KEY(codigo);

 EXEC sp_helpconstraint libros;

 --———————————————————————————————————————[ Ejercicio #51 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;

 CREATE TABLE alumnos(
  legajo char(4) not null,
  apellido varchar(20),
  nombre varchar(20),
  documento char(8)
 );

 ALTER TABLE alumnos
 add CONSTRAINT PK_alumnos_legajo
 PRIMARY KEY(legajo);

 ALTER TABLE alumnos
 add CONSTRAINT UQ_alumnos_documento
 unique (documento);

 INSERT INTO alumnos VALUES('A111','Lopez','Ana','22222222');
 INSERT INTO alumnos VALUES('A123','Garcia','Maria','23333333');

 EXEC sp_helpconstraint alumnos;

 --———————————————————————————————————————[ Ejercicio #52 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;

 CREATE TABLE alumnos(
  legajo char(4) not null,
  apellido varchar(20),
  nombre varchar(20),
  documento char(8),
  domicilio varchar(30),
  ciudad varchar(30),
  notafinal decimal(4,2)
 );

 ALTER TABLE alumnos
 add CONSTRAINT PK_alumnos_legajo
 PRIMARY KEY(legajo);

 ALTER TABLE alumnos
 add CONSTRAINT UQ_alumnos_documento
 unique (documento);

 ALTER TABLE alumnos
 add CONSTRAINT CK_alumnos_nota
 check (notafinal>=0 and notafinal<=10);

 ALTER TABLE alumnos
 add CONSTRAINT DF_alumnos_ciudad
 default 'Cordoba'
 FOR ciudad;

 EXEC sp_helpconstraint alumnos;

 ALTER TABLE alumnos
  nocheck CONSTRAINT CK_alumnos_nota;

 EXEC sp_helpconstraint alumnos;

 --———————————————————————————————————————[ Ejercicio #53 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );

 ALTER TABLE libros
 add CONSTRAINT PK_libros_codigo
 PRIMARY KEY(codigo);

 ALTER TABLE libros
 add CONSTRAINT CK_libros_precio
 check (precio>=0);

 ALTER TABLE libros
 add CONSTRAINT DF_libros_autor
 default 'Desconocido'
 FOR autor;

 ALTER TABLE libros
 add CONSTRAINT DF_libros_precio
 default 0
 FOR precio;

 EXEC sp_helpconstraint libros;

 ALTER TABLE libros
  DROP DF_libros_autor;

 ALTER TABLE libros
  DROP PK_libros_codigo;

 EXEC sp_helpconstraint libros;

 --———————————————————————————————————————[ Ejercicio #54 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;

 CREATE TABLE empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20),
  fechaingreso datetime,
  fechanacimiento datetime,
  hijos tinyint,
  sueldo decimal(6,2)
 );

 IF object_id ('RG_documento_patron') is not null
   DROP rule RG_documento_patron;
 IF object_id ('RG_empleados_seccion') is not null
   DROP rule RG_empleados_seccion;
 IF object_id ('RG_empleados_fechaingreso') is not null
   DROP rule RG_empleados_fechaingreso;
 IF object_id ('RG_hijos') is not null
   DROP rule RG_hijos;
 IF object_id ('RG_empleados_sueldo') is not null
   DROP rule RG_empleados_sueldo;
 IF object_id ('RG_empleados_sueldo2') is not null
   DROP rule RG_empleados_sueldo2;

 INSERT INTO empleados 
   VALUES('22222222','Ana Acosta','Contaduria','1990-10-10','1972-10-10',2,700);
 INSERT INTO empleados 
   VALUES('23333333','Carlos Costa','Contaduria','1990-12-10','1972-05-04',0,750);
 INSERT INTO empleados 
   VALUES('24444444','Daniel Duarte','Sistemas','1995-05-05','1975-10-06',1,880);
 INSERT INTO empleados 
   VALUES('25555555','Fabiola Fuentes','Secretaria','1998-02-25','1978-02-08',3,550);
 INSERT INTO empleados 
   VALUES('26666666','Gaston Garcia','Secretaria','1999-05-08','1981-01-01',3,670);
 INSERT INTO empleados 
   VALUES('27777777','Ines Irala','Gerencia','2000-04-10','1985-12-12',0,6000);

 CREATE rule RG_documento_patron
 AS @documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]';

 EXEC sp_help;

 sp_helpconstraint empleados;

 INSERT INTO empleados VALUES('ab888888','Juan Juarez','Secretaria','2001-04-11','1986-11-12',0,600);

 EXEC sp_bindrule RG_documento_patron, 'empleados.documento';

 EXEC sp_helpconstraint empleados;

 CREATE rule RG_empleados_seccion
 AS @seccion in ('Secretaria','Contaduria','Sistemas','Gerencia');

 EXEC sp_bindrule RG_empleados_seccion, 'empleados.seccion';

 CREATE rule RG_empleados_fechaingreso
 AS @fecha <= getdate();

 EXEC sp_bindrule RG_empleados_fechaingreso, 'empleados.fechaingreso';
 EXEC sp_bindrule RG_empleados_fechaingreso, 'empleados.fechanacimiento';

 CREATE rule RG_hijos
 AS @hijos between 0 and 20;

 EXEC sp_bindrule RG_hijos, 'empleados.hijos';

 CREATE rule RG_empleados_sueldo
 AS @sueldo>0 and @sueldo<= 5000;

 EXEC sp_bindrule RG_empleados_sueldo, 'empleados.sueldo';

 CREATE rule RG_empleados_sueldo2
 AS @sueldo>0 and @sueldo<= 7000;

 EXEC sp_bindrule RG_empleados_sueldo2, 'empleados.sueldo';

 INSERT INTO empleados VALUES('29999999','Luis Lopez','Secretaria','2002-03-03','1990-09-09',0,6000);

 EXEC sp_help;

 EXEC sp_helpconstraint empleados;

 --———————————————————————————————————————[ Ejercicio #55 ]——————————————————————————————————————————————
  IF object_id ('empleados') is not null
  DROP TABLE empleados;

 IF object_id ('RG_sueldo_100a1000') is not null
   DROP rule RG_sueldo_100a1000;

 CREATE TABLE empleados(
  documento char(8),
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  PRIMARY KEY(documento)
 );

 CREATE rule RG_sueldo_100a1000
 AS @sueldo between 100 and 1000;

 EXEC sp_bindrule RG_sueldo_100a1000, 'empleados.sueldo';

 EXEC sp_helpconstraint empleados;

 EXEC sp_unbindrule 'empleados.sueldo';

 INSERT INTO empleados VALUES ('30111222','Pedro Torres','Contaduria',1200);

 EXEC sp_helpconstraint empleados;

 EXEC sp_help;

 DROP rule RG_sueldo_100a1000;

 --———————————————————————————————————————[ Ejercicio #56 ]——————————————————————————————————————————————
  IF object_id ('empleados') is not null
  DROP TABLE empleados;
 IF object_id ('RG_sueldo') is not null
   DROP rule RG_sueldo;
 IF object_id ('RG_seccion_lista') is not null
   DROP rule RG_seccion_lista;

 CREATE TABLE empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  PRIMARY KEY(documento)
 );

 CREATE rule RG_sueldo
 AS @sueldo between 100 and 1000;

 EXEC sp_bindrule RG_sueldo, 'empleados.sueldo';

 CREATE rule RG_seccion_lista
 AS @seccion in ('Sistemas','Secretaria','Contaduria');

 EXEC sp_help RG_sueldo;

 EXEC sp_helpconstraint empleados;

 EXEC sp_bindrule RG_seccion_lista, 'empleados.seccion';

 EXEC sp_helpconstraint empleados;

 EXEC sp_helptext "RG_seccion_lista";

 EXEC sp_unbindrule 'empleados.sueldo'; 
 DROP rule RG_sueldo;

 EXEC sp_help RG_sueldo;

 SELECT * FROM sysobjects
  WHERE xtype='R' and
  name like '%seccion%';

 --———————————————————————————————————————[ Ejercicio #57 ]——————————————————————————————————————————————
  IF object_id ('empleados') is not null
  DROP TABLE empleados;

 IF object_id ('VP_cero') is not null
   DROP default VP_cero;
 IF object_id ('VP_100') is not null
   DROP default VP_100;
 IF object_id ('VP_datodesconocido') is not null
   DROP default VP_datodesconocido;
 IF object_id ('VP_telefono') is not null
   DROP default VP_telefono;

 CREATE TABLE empleados(
  nombre varchar(30),
  domicilio varchar(30),
  barrio varchar(15),
  telefono char(14),
  sueldo decimal(6,2)
 );

 INSERT INTO empleados default VALUES;
 SELECT * FROM empleados;

 CREATE default VP_datodesconocido
  AS 'Desconocido';

 EXEC sp_bindefault VP_datodesconocido, 'empleados.domicilio';

 EXEC sp_bindefault VP_datodesconocido, 'empleados.barrio';

 INSERT INTO empleados default VALUES;
 SELECT * FROM empleados;

 CREATE default VP_cero
  AS 0;

 EXEC sp_bindefault VP_cero, 'empleados.sueldo';

 INSERT INTO empleados default VALUES;
 SELECT * FROM empleados;

 CREATE default VP_100
  AS 100;

 EXEC sp_bindefault VP_100, 'empleados.sueldo';

 INSERT INTO empleados default VALUES;
 SELECT * FROM empleados;

 EXEC sp_helpconstraint empleados;

 EXEC sp_help;

 CREATE default VP_telefono
 AS '(0000)0-000000';

 EXEC sp_bindefault VP_telefono,'empleados.telefono';

 INSERT INTO empleados default VALUES;
 SELECT * FROM empleados;

 EXEC sp_helpconstraint empleados;

 --———————————————————————————————————————[ Ejercicio #58 ]——————————————————————————————————————————————
  IF object_id ('empleados') is not null
  DROP TABLE empleados;

 IF object_id ('VP_cero') is not null
   DROP default VP_cero;
 IF object_id ('VP_datodesconocido') is not null
   DROP default VP_datodesconocido;

 CREATE TABLE empleados(
  nombre varchar(30),
  domicilio varchar(30),
  barrio varchar(15),
  sueldo decimal(6,2)
 );

 CREATE default VP_cero
  AS 0;

 EXEC sp_bindefault VP_cero, 'empleados.sueldo';

 CREATE default VP_datodesconocido
  AS 'Desconocido';

 EXEC sp_bindefault VP_datodesconocido, 'empleados.domicilio';
 EXEC sp_bindefault VP_datodesconocido, 'empleados.barrio';

 EXEC sp_helpconstraint empleados;

 EXEC sp_unbindefault 'empleados.barrio';

 EXEC sp_helpconstraint empleados;
-- EXEC sp_help;

 EXEC sp_unbindefault 'empleados.domicilio';
 DROP default VP_datodesconocido;

 --———————————————————————————————————————[ Ejercicio #59 ]——————————————————————————————————————————————
  IF object_id ('empleados') is not null
  DROP TABLE empleados;
 IF object_id ('VP_sueldo') is not null
   DROP default VP_sueldo;
 IF object_id ('VP_seccion') is not null
   DROP default Vp_seccion;

 CREATE TABLE empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  PRIMARY KEY(documento)
 );

 CREATE default VP_sueldo
  AS 500;

 EXEC sp_bindefault VP_sueldo, 'empleados.sueldo';

 CREATE default VP_seccion
  AS 'Secretaria';

-- EXEC sp_help;

 EXEC sp_help VP_sueldo;

 EXEC sp_helpconstraint empleados;

 EXEC sp_bindefault VP_seccion, 'empleados.seccion';

 EXEC sp_helpconstraint empleados;

 EXEC sp_helptext VP_seccion;

 EXEC sp_unbindefault'empleados.sueldo'; 
 DROP default VP_sueldo;

 EXEC sp_help VP_sueldo;

 SELECT * FROM sysobjects
  WHERE xtype='D' and
  name like '%seccion%';

 --———————————————————————————————————————[ Ejercicio #62 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 CREATE unique clustered index I_libros_codigo
 ON libros(codigo);

 CREATE nonclustered index I_libros_titulo
 ON libros(titulo);

 EXEC sp_helpindex libros;

 ALTER TABLE libros
  add CONSTRAINT PK_libros_codigo
  PRIMARY KEY nonclustered (codigo);

 EXEC sp_helpindex libros;

 EXEC sp_helpconstraint libros;

 CREATE index I_libros_autoreditorial
 ON libros(autor,editorial);

 SELECT name FROM sysindexes;

 SELECT name FROM sysindexes
  WHERE name like 'I_%';

 --———————————————————————————————————————[ Ejercicio #63 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );
 CREATE nonclustered index I_libros_titulo
 ON libros(titulo);

 EXEC sp_helpindex libros;

 CREATE index I_libros_titulo
  ON libros(titulo,autor)
  WITH drop_existing;

 EXEC sp_helpindex libros;

 CREATE clustered index I_libros_titulo
  ON libros(titulo,autor)
  WITH drop_existing;

 EXEC sp_helpindex libros;

 CREATE clustered index I_libros_titulo
  ON libros(titulo)
  WITH drop_existing;

 EXEC sp_helpindex libros;

 --———————————————————————————————————————[ Ejercicio #64 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 CREATE index I_libros_titulo
  ON libros(titulo);

 EXEC sp_helpindex libros;

 DROP index libros.I_libros_titulo;

 EXEC sp_helpindex libros;

 IF exists (SELECT name FROM sysindexes
  WHERE name = 'I_libros_titulo')
   DROP index libros.I_libros_titulo;


 --———————————————————————————————————————[ Ejercicio #66 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('El aleph','Borges',2,20);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez',1,30);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',3,50);
 INSERT INTO libros VALUES('Java en 10 minutos',default,3,45);

 SELECT * FROM libros;

 SELECT titulo, autor, nombre
  FROM libros
  join editoriales
  ON codigoeditorial=editoriales.codigo;

 SELECT l.codigo,titulo,autor,nombre,precio
  FROM libros AS l
  join editoriales AS e
  ON codigoeditorial=e.codigo;

 SELECT l.codigo,titulo,autor,nombre,precio
  FROM libros AS l
  join editoriales AS e
  ON codigoeditorial=e.codigo
  WHERE e.nombre='Siglo XXI';

 SELECT titulo,autor,nombre
  FROM libros AS l
  join editoriales AS e
  ON codigoeditorial=e.codigo
  order by titulo;

 --———————————————————————————————————————[ Ejercicio #67 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('El aleph','Borges',1,20);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez',1,30);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',2,50);
 INSERT INTO libros VALUES('Java en 10 minutos',default,4,45);

  SELECT titulo,nombre
  FROM editoriales AS e
  left join libros AS l
  ON codigoeditorial = e.codigo;

  SELECT titulo,nombre
  FROM libros AS l
  left join editoriales AS e
  ON codigoeditorial = e.codigo;

 SELECT titulo,nombre
  FROM editoriales AS e
  left join libros AS l
  ON e.codigo=codigoeditorial
  WHERE codigoeditorial is not null;

 SELECT titulo,nombre
  FROM editoriales AS e
  left join libros AS l
  ON e.codigo=codigoeditorial
  WHERE codigoeditorial is null;

 --———————————————————————————————————————[ Ejercicio #68 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('El aleph','Borges',1,20);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez',1,30);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',2,50);
 INSERT INTO libros VALUES('Java en 10 minutos',default,4,45);

 SELECT titulo,nombre
  FROM libros AS l
  right join editoriales AS e
  ON codigoeditorial = e.codigo;

 SELECT titulo,nombre
  FROM libros AS l
  right join editoriales AS e
  ON e.codigo=codigoeditorial
  WHERE codigoeditorial is not null;

 SELECT titulo,nombre
  FROM libros AS l
  right join editoriales AS e
  ON e.codigo=codigoeditorial
  WHERE codigoeditorial is null;

 --———————————————————————————————————————[ Ejercicio #69 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('El aleph','Borges',1,20);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez',1,30);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',2,50);
 INSERT INTO libros VALUES('Java en 10 minutos',default,4,45);

 SELECT titulo,nombre
  FROM editoriales AS e
  full join libros AS l
  ON codigoeditorial = e.codigo;

 --———————————————————————————————————————[ Ejercicio #70 ]——————————————————————————————————————————————
  IF object_id('comidas') is not null
  DROP TABLE comidas;
 IF object_id('postres') is not null
  DROP TABLE postres;

 CREATE TABLE comidas(
  codigo tinyint IDENTITY,
  nombre varchar(30),
  precio decimal(4,2)
 );

 CREATE TABLE postres(
  codigo tinyint IDENTITY,
  nombre varchar(30),
  precio decimal(4,2)
 );

 INSERT INTO comidas VALUES('ravioles',5);
 INSERT INTO comidas VALUES('tallarines',4);
 INSERT INTO comidas VALUES('milanesa',7);
 INSERT INTO comidas VALUES('cuarto de pollo',6);

 INSERT INTO postres VALUES('flan',2.5);
 INSERT INTO postres VALUES('porcion torta',3.5);

 SELECT c.nombre AS 'plato principal',
  p.nombre AS 'postre',
  c.precio+p.precio AS 'total'
  FROM comidas AS c
  cross join postres AS p;

 --———————————————————————————————————————[ Ejercicio #71 ]——————————————————————————————————————————————
  IF object_id('comidas') is not null
  DROP TABLE comidas;

 CREATE TABLE comidas(
  codigo int IDENTITY,
  nombre varchar(30),
  precio decimal(4,2),
  rubro char(6),-- 'plato'=plato principal', 'postre'=postre
  PRIMARY KEY(codigo)
 );

 INSERT INTO comidas VALUES('ravioles',5,'plato');
 INSERT INTO comidas VALUES('tallarines',4,'plato');
 INSERT INTO comidas VALUES('milanesa',7,'plato');
 INSERT INTO comidas VALUES('cuarto de pollo',6,'plato');
 INSERT INTO comidas VALUES('flan',2.5,'postre');
 INSERT INTO comidas VALUES('porcion torta',3.5,'postre');

 SELECT c1.nombre AS 'plato principal',
  c2.nombre AS postre,
  c1.precio+c2.precio AS total
  FROM comidas AS c1
  cross join comidas AS c2;

 SELECT c1.nombre AS 'plato principal',
  c2.nombre AS postre,
  c1.precio+c2.precio AS total
  FROM comidas AS c1
  cross join comidas AS c2
  WHERE c1.rubro='plato' and
  c2.rubro='postre';

 SELECT c1.nombre AS 'plato principal',
  c2.nombre AS postre,
  c1.precio+c2.precio AS total
  FROM comidas AS c1
  join comidas AS c2
  ON c1.codigo<>c2.codigo
  WHERE c1.rubro='plato' and
  c2.rubro='postre';

 --———————————————————————————————————————[ Ejercicio #72 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('El aleph','Borges',1,20);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez',1,30);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',3,50);
 INSERT INTO libros VALUES('Uno','Richard Bach',3,15);
 INSERT INTO libros VALUES('Java en 10 minutos',default,4,45);

 SELECT nombre AS editorial,
  COUNT(*) AS cantidad
  FROM editoriales AS e
  join libros AS l
  ON codigoeditorial=e.codigo
  group by e.nombre;

 SELECT nombre AS editorial,
  max(precio) AS 'mayor precio'
  FROM editoriales AS e
  left join libros AS l
  ON codigoeditorial=e.codigo
  group by nombre;

 --———————————————————————————————————————[ Ejercicio #73 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('autores') is not null
  DROP TABLE autores;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  codigoautor int not null,
  codigoeditorial tinyint not null,
  precio decimal(5,2),
  PRIMARY KEY(codigo)
 );

 CREATE TABLE autores(
  codigo int IDENTITY,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Siglo XXI');
 INSERT INTO editoriales VALUES('Plaza');
 
 INSERT INTO autores VALUES ('Richard Bach');
 INSERT INTO autores VALUES ('Borges');
 INSERT INTO autores VALUES ('Jose Hernandez');
 INSERT INTO autores VALUES ('Mario Molina');
 INSERT INTO autores VALUES ('Paenza');
 
 INSERT INTO libros VALUES('El aleph',2,2,20);
 INSERT INTO libros VALUES('Martin Fierro',3,1,30);
 INSERT INTO libros VALUES('Aprenda PHP',4,3,50);
 INSERT INTO libros VALUES('Uno',1,1,15);
 INSERT INTO libros VALUES('Java en 10 minutos',0,3,45);
 INSERT INTO libros VALUES('Matematica estas ahi',0,0,15);
 INSERT INTO libros VALUES('Java de la A a la Z',4,0,50);

 SELECT titulo,a.nombre,e.nombre,precio
  FROM autores AS a
  join libros AS l
  ON codigoautor=a.codigo
  join editoriales AS e
  ON codigoeditorial=e.codigo;

 SELECT titulo,a.nombre,e.nombre,precio
  FROM autores AS a
  right join libros AS l
  ON codigoautor=a.codigo
  left join editoriales AS e
  ON codigoeditorial=e.codigo;

 --———————————————————————————————————————[ Ejercicio #74 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('El aleph','Borges',2,20);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez',1,30);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',3,50);
 INSERT INTO libros VALUES('Java en 10 minutos',default,3,45);

 UPDATE libros SET precio=precio+(precio*0.1)
  FROM libros 
  join editoriales AS e
  ON codigoeditorial=e.codigo
  WHERE nombre='Planeta';

 SELECT titulo,autor,e.nombre,precio
  FROM libros AS l
  join editoriales AS e
  ON codigoeditorial=e.codigo;

 DELETE libros
  FROM libros
  join editoriales
  ON codigoeditorial = editoriales.codigo
  WHERE editoriales.nombre='Emece';

 SELECT titulo,autor,e.nombre,precio
  FROM libros AS l
  join editoriales AS e
  ON codigoeditorial=e.codigo;

 --———————————————————————————————————————[ Ejercicio #76 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint
 );
 CREATE TABLE editoriales(
  codigo tinyint,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES(1,'Emece');
 INSERT INTO editoriales VALUES(2,'Planeta');
 INSERT INTO editoriales VALUES(3,'Siglo XXI');

 INSERT INTO libros VALUES('El aleph','Borges',1);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez',2);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',2);

 ALTER TABLE libros
 add CONSTRAINT FK_libros_codigoeditorial
  foreign key (codigoeditorial)
  references editoriales(codigo);

 INSERT INTO libros default VALUES;

 EXEC sp_helpconstraint libros;

 EXEC sp_helpconstraint editoriales;

 --———————————————————————————————————————[ Ejercicio #77 ]——————————————————————————————————————————————
  IF object_id('afiliados') is not null
  DROP TABLE afiliados;

 CREATE TABLE afiliados(
  numero int IDENTITY not null,
  documento char(8) not null,
  nombre varchar(30),
  afiliadotitular int,
  PRIMARY KEY (documento),
  unique (numero)
 );

 ALTER TABLE afiliados
  add CONSTRAINT FK_afiliados_afiliadotitular
  foreign key (afiliadotitular)
  references afiliados (numero);

 INSERT INTO afiliados VALUES('22222222','Perez Juan',null);
 INSERT INTO afiliados VALUES('23333333','Garcia Maria',null);
 INSERT INTO afiliados VALUES('24444444','Lopez Susana',null);
 INSERT INTO afiliados VALUES('30000000','Perez Marcela',1);
 INSERT INTO afiliados VALUES('31111111','Morales Luis',1);
 INSERT INTO afiliados VALUES('32222222','Garcia Maria',2);

 DELETE FROM afiliados WHERE numero=5;

 EXEC sp_helpconstraint afiliados;

 --———————————————————————————————————————[ Ejercicio #78 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  PRIMARY KEY (codigo)
 );
 CREATE TABLE editoriales(
  codigo tinyint not null,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES(1,'Emece');
 INSERT INTO editoriales VALUES(2,'Planeta');
 INSERT INTO editoriales VALUES(3,'Siglo XXI');

 INSERT INTO libros VALUES(1,'El aleph','Borges',1);
 INSERT INTO libros VALUES(2,'Martin Fierro','Jose Hernandez',2);
 INSERT INTO libros VALUES(3,'Aprenda PHP','Mario Molina',2);

 ALTER TABLE libros
  add CONSTRAINT FK_libros_codigoeditorial
  foreign key (codigoeditorial)
  references editoriales(codigo)
  ON UPDATE cascade
  ON DELETE cascade;

 UPDATE editoriales SET codigo=10 WHERE codigo=1;

 SELECT titulo, autor, e.codigo,nombre
  FROM libros AS l
  join editoriales AS e
  ON codigoeditorial=e.codigo;

 DELETE FROM editoriales WHERE codigo=2;

 SELECT * FROM libros;

 --———————————————————————————————————————[ Ejercicio #79 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  PRIMARY KEY (codigo)
 );
 CREATE TABLE editoriales(
  codigo tinyint not null,
  nombre varchar(20),
  PRIMARY KEY (codigo)
 );

 INSERT INTO editoriales VALUES(1,'Planeta');
 INSERT INTO editoriales VALUES(2,'Emece');
 INSERT INTO editoriales VALUES(3,'Paidos');

 INSERT INTO libros VALUES(1,'Uno','Richard Bach',1);
 INSERT INTO libros VALUES(2,'El aleph','Borges',2);
 INSERT INTO libros VALUES(3,'Aprenda PHP','Mario Molina',5);

 ALTER TABLE libros
 WITH nocheck
 add CONSTRAINT FK_libros_codigoeditorial
 foreign key (codigoeditorial)
 references editoriales(codigo);

 ALTER TABLE libros
 nocheck CONSTRAINT FK_libros_codigoeditorial;

 EXEC sp_helpconstraint libros;

 EXEC sp_helpconstraint editoriales;

 INSERT INTO libros VALUES(4,'Ilusiones','Richard Bach',6);

 UPDATE editoriales SET codigo=8 WHERE codigo=1;

 DELETE FROM editoriales WHERE codigo=2;

 ALTER TABLE libros
  check CONSTRAINT FK_libros_codigoeditorial;

 EXEC sp_helpconstraint libros;

 ALTER TABLE libros
  DROP CONSTRAINT FK_libros_codigoeditorial;

 EXEC sp_helpconstraint libros;

 EXEC sp_helpconstraint editoriales;

 --———————————————————————————————————————[ Ejercicio #81 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;
 IF object_id('autores') is not null
  DROP TABLE autores;

 CREATE TABLE editoriales(
  codigo tinyint not null,
  nombre varchar(30),
  CONSTRAINT PK_editoriales PRIMARY KEY (codigo)
 );

 CREATE TABLE autores(
  codigo int not null
   CONSTRAINT CK_autores_codigo check (codigo>=0),
  nombre varchar(30) not null,
  CONSTRAINT PK_autores_codigo
   PRIMARY KEY (codigo),
  CONSTRAINT UQ_autores_nombre
    unique (nombre),
 );

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  codigoautor int not null,
  codigoeditorial tinyint not null,
  precio decimal(5,2)
   CONSTRAINT DF_libros_precio default (0),
  CONSTRAINT PK_libros_codigo
   PRIMARY KEY clustered (codigo),
  CONSTRAINT UQ_libros_tituloautor
    unique (titulo,codigoautor),
  CONSTRAINT FK_libros_editorial
   foreign key (codigoeditorial)
   references editoriales(codigo)
   ON UPDATE cascade,
  CONSTRAINT FK_libros_autores
   foreign key (codigoautor)
   references autores(codigo)
   ON UPDATE cascade,
  CONSTRAINT CK_libros_precio_positivo check (precio>=0)
 );

 EXEC sp_helpconstraint editoriales;

 EXEC sp_helpconstraint autores;

 EXEC sp_helpconstraint libros;

 --———————————————————————————————————————[ Ejercicio #82 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;
 IF object_id('profesores') is not null
  DROP TABLE profesores;

 CREATE TABLE profesores(
  documento varchar(8) not null,
  nombre varchar (30),
  domicilio varchar(30),
  PRIMARY KEY(documento)
 );
 CREATE TABLE alumnos(
  documento varchar(8) not null,
  nombre varchar (30),
  domicilio varchar(30),
  PRIMARY KEY(documento)
 );

 INSERT INTO alumnos VALUES('30000000','Juan Perez','Colon 123');
 INSERT INTO alumnos VALUES('30111111','Marta Morales','Caseros 222');
 INSERT INTO alumnos VALUES('30222222','Laura Torres','San Martin 987');
 INSERT INTO alumnos VALUES('30333333','Mariano Juarez','Avellaneda 34');
 INSERT INTO alumnos VALUES('23333333','Federico Lopez','Colon 987');
 INSERT INTO profesores VALUES('22222222','Susana Molina','Sucre 345');
 INSERT INTO profesores VALUES('23333333','Federico Lopez','Colon 987');

 SELECT nombre, domicilio FROM alumnos
  union
   SELECT nombre, domicilio FROM profesores;

 SELECT nombre, domicilio FROM alumnos
  union all
   SELECT nombre, domicilio FROM profesores;

 SELECT nombre, domicilio FROM alumnos
  union
   SELECT nombre, domicilio FROM profesores
  order by domicilio;

 SELECT nombre, domicilio, 'alumno' AS condicion FROM alumnos
  union
   SELECT nombre, domicilio,'profesor' FROM profesores
  order by condicion;

 --———————————————————————————————————————[ Ejercicio #83 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  titulo varchar(30),
  editorial varchar(15),
  edicion datetime,
  precio decimal(6,2)
 );

 INSERT INTO libros (titulo,editorial,precio)
  VALUES ('El aleph','Emece',25.50);

 ALTER TABLE libros
  add cantidad tinyint;

 EXEC sp_columns libros;

 ALTER TABLE libros
  add codigo int IDENTITY;

 ALTER TABLE libros
  add autor varchar(30) not null;

 ALTER TABLE libros
  add autor varchar(20) not null default 'Desconocido';

 ALTER TABLE libros
  DROP column precio;

 EXEC sp_columns libros;

 ALTER TABLE libros
  DROP column autor;

 ALTER TABLE libros
  DROP column editorial,edicion;

 --———————————————————————————————————————[ Ejercicio #84 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2) not null default 0
 );

 INSERT INTO libros
  VALUES('El aleph','Borges','Planeta',20);
 INSERT INTO libros
  VALUES('Java en 10 minutos',null,'Siglo XXI',30);
 INSERT INTO libros
  VALUES('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros
  VALUES('Martin Fierro','Jose Hernandez',null,30);
 INSERT INTO libros
  VALUES('Aprenda PHP','Mario Molina','Emece',25);

 ALTER TABLE libros
  ALTER column titulo varchar(40) not null;

 DELETE FROM libros WHERE autor is null;
 ALTER TABLE libros
  ALTER column autor varchar(30) not null;

 ALTER TABLE libros
  ALTER column codigo smallint;

 EXEC sp_columns libros;

 ALTER TABLE libros
  ALTER column precio decimal(6,2) null;

 --———————————————————————————————————————[ Ejercicio #85 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  autor varchar(30),
  editorial varchar(15)
 );

 ALTER TABLE libros
  add titulo varchar(30) 
  CONSTRAINT UQ_libros_autor unique clustered;

 EXEC sp_columns libros;

 ALTER TABLE libros
  add codigo int IDENTITY not null
  CONSTRAINT PK_libros_codigo PRIMARY KEY nonclustered;

 ALTER TABLE libros
  add precio decimal(6,2)
  CONSTRAINT CK_libros_precio check (precio>=0);

 EXEC sp_helpconstraint libros;

 --———————————————————————————————————————[ Ejercicio #86 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;

 CREATE TABLE empleados(
  documento char(8),
  nombre varchar(10),
  domicilio varchar(30),
  sueldobasico decimal(6,2),
  hijos tinyint not null default 0,
  sueldototal AS sueldobasico + (hijos*100)
 );

 INSERT INTO empleados VALUES('22222222','Juan Perez','Colon 123',300,2);
 INSERT INTO empleados VALUES('23333333','Ana Lopez','Sucre 234',500,0);

 SELECT * FROM empleados;

 UPDATE empleados SET hijos=1 WHERE documento='23333333';

 SELECT * FROM empleados;

 ALTER TABLE empleados
  add salariofamiliar AS hijos*100;

 EXEC sp_columns empleados;

 SELECT * FROM empleados;

 --———————————————————————————————————————[ Ejercicio #87 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;

 IF exists (SELECT * FROM systypes
  WHERE name = 'tipo_documento')
  EXEC sp_droptype tipo_documento;

 EXEC sp_addtype tipo_documento, 'char(8)', 'null';

 EXEC sp_help tipo_documento;

 CREATE TABLE alumnos(
  documento tipo_documento,
  nombre varchar(30)
 );

 INSERT INTO alumnos VALUES('12345678','Ana Acosta');

 --———————————————————————————————————————[ Ejercicio #88 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;
 IF object_id('docentes') is not null
  DROP TABLE docentes;

 IF exists (SELECT *FROM systypes
  WHERE name = 'tipo_documento')
  EXEC sp_droptype tipo_documento;

 EXEC sp_addtype tipo_documento, 'char(8)', 'null';

 EXEC sp_help tipo_documento;

 CREATE TABLE alumnos(
  documento tipo_documento,
  nombre varchar(30)
 );

 IF object_id ('RG_documento') is not null
   DROP rule RG_documento;

 CREATE rule RG_documento
  AS @documento like '[0-5][0-9][0-9][0-9][0-9][0-9][0-9][0-9]';

 EXEC sp_bindrule RG_documento, 'tipo_documento', 'futureonly';

 EXEC sp_helpconstraint alumnos;

 CREATE TABLE docentes(
  documento tipo_documento,
  nombre varchar(30)
 );

 EXEC sp_helpconstraint docentes;

 INSERT INTO alumnos VALUES('a111111','Ana Acosta');

 EXEC sp_unbindrule 'tipo_documento';

 EXEC sp_bindrule RG_documento, 'tipo_documento';

 EXEC sp_helpconstraint docentes;
 EXEC sp_helpconstraint alumnos;

 IF object_id ('RG_documento2') is not null
   DROP rule RG_documento2;

 CREATE rule RG_documento2
  AS @documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]';

 EXEC sp_bindrule RG_documento2, 'tipo_documento';

 EXEC sp_help tipo_documento;

 EXEC sp_helpconstraint alumnos;
 EXEC sp_helpconstraint docentes;

 EXEC sp_bindrule RG_documento, 'alumnos.documento';

 EXEC sp_helpconstraint alumnos;

 EXEC sp_help tipo_documento;

 INSERT INTO alumnos VALUES ('77777777','Juan Lopez');

 INSERT INTO alumnos VALUES ('55555555','Juan Lopez');

 --———————————————————————————————————————[ Ejercicio #89 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;
 IF object_id('docentes') is not null
  DROP TABLE docentes;

 IF exists (SELECT *FROM systypes
  WHERE name = 'tipo_documento')
  EXEC sp_droptype tipo_documento;

 EXEC sp_addtype tipo_documento, 'char(8)', 'null';

 EXEC sp_help tipo_documento;

 CREATE TABLE alumnos(
  documento tipo_documento,
  nombre varchar(30)
 );

 IF object_id ('VP_documento0') is not null
   DROP default VP_documento0;

 CREATE default VP_documento0
  AS '00000000';

 EXEC sp_bindefault VP_documento0, 'tipo_documento', 'futureonly';

 EXEC sp_helpconstraint alumnos;

 CREATE TABLE docentes(
  documento tipo_documento,
  nombre varchar(30)
 );

 EXEC sp_helpconstraint docentes;

 INSERT INTO alumnos default VALUES;
 SELECT * FROM alumnos;

 INSERT INTO docentes default VALUES;
 SELECT * FROM docentes;

 EXEC sp_unbindefault 'tipo_documento';

 EXEC sp_bindefault VP_documento0, 'tipo_documento';

 INSERT INTO alumnos default VALUES;
 SELECT * FROM alumnos;
 INSERT INTO docentes default VALUES;
 SELECT * FROM docentes;

 IF object_id ('VP_documentoDesconocido') is not null
   DROP default VP_documentoDesconocido;

 CREATE default VP_documentoDesconocido
  AS 'SinDatos';

 EXEC sp_bindefault VP_DocumentoDesconocido, 'tipo_documento';

 EXEC sp_help tipo_documento;

 EXEC sp_helpconstraint alumnos;

 EXEC sp_unbindefault 'tipo_documento';

 EXEC sp_helpconstraint alumnos;
 EXEC sp_helpconstraint docentes;

 INSERT INTO alumnos default VALUES;
 SELECT * FROM alumnos;

 ALTER TABLE docentes
 add CONSTRAINT DF_docentes_documento
 default '--------'
 FOR documento;

 INSERT INTO docentes default VALUES;
 SELECT * FROM docentes;

 EXEC sp_bindefault VP_documento0, 'tipo_documento';

 EXEC sp_helpconstraint docentes;

 INSERT INTO docentes default VALUES;
 SELECT * FROM docentes;

 ALTER TABLE docentes
  DROP DF_docentes_documento;

 EXEC sp_helpconstraint docentes;

 EXEC sp_bindefault VP_documento0, 'tipo_documento';

 ALTER TABLE docentes
 add CONSTRAINT DF_docentes_documento
 default '--------'
 FOR documento;

 --———————————————————————————————————————[ Ejercicio #90 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;

 IF exists (SELECT *FROM systypes
  WHERE name = 'tipo_documento')
  EXEC sp_droptype tipo_documento;

 EXEC sp_addtype tipo_documento, 'char(8)', 'null';

 IF object_id ('RG_documento') is not null
   DROP rule RG_documento;

 CREATE rule RG_documento
  AS @documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]';

 EXEC sp_bindrule RG_documento, 'tipo_documento';

 CREATE TABLE alumnos(
  nombre varchar(30),
  documento tipo_documento
 );

 DROP TABLE alumnos;

 EXEC sp_droptype tipo_documento;

 EXEC sp_addtype tipo_documento, 'char(8)', 'null';

 EXEC sp_help tipo_documento;

 EXEC sp_bindrule RG_documento, 'tipo_documento';

 --———————————————————————————————————————[ Ejercicio #92 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2)
 );

 INSERT INTO libros VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00);
 INSERT INTO libros VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Siglo XXI',40.00);
 INSERT INTO libros VALUES('El aleph','Borges','Emece',10.00);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta',15.00);
 INSERT INTO libros VALUES('Java en 10 minutos','Mario Molina','Siglo XXI',50.00);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez','Planeta',20.00);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez','Emece',30.00);
 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',10.00);

 SELECT titulo,precio,
  precio-(SELECT max(precio) FROM libros) AS diferencia
  FROM libros
  WHERE titulo='Uno';

 SELECT titulo,autor, precio
  FROM libros
  WHERE precio=
   (SELECT max(precio) FROM libros);

 UPDATE libros SET precio=45
  WHERE precio=
   (SELECT max(precio) FROM libros);

 DELETE FROM libros
  WHERE precio=
   (SELECT min(precio) FROM libros);

 --———————————————————————————————————————[ Ejercicio #93 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(30),
  PRIMARY KEY (codigo)
 );
 
 CREATE TABLE libros (
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  PRIMARY KEY(codigo),
 CONSTRAINT FK_libros_editorial
   foreign key (codigoeditorial)
   references editoriales(codigo)
   ON UPDATE cascade,
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Paidos');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('Uno','Richard Bach',1);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach',1);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',4);
 INSERT INTO libros VALUES('El aleph','Borges',2);
 INSERT INTO libros VALUES('Puente al infinito','Richard Bach',2);

 SELECT nombre
  FROM editoriales
  WHERE codigo in
   (SELECT codigoeditorial
     FROM libros
     WHERE autor='Richard Bach');

 SELECT codigoeditorial
  FROM libros
  WHERE autor='Richard Bach';

 SELECT distinct nombre
  FROM editoriales AS e
  join libros
  ON codigoeditorial=e.codigo
  WHERE autor='Richard Bach';

 SELECT nombre
  FROM editoriales
  WHERE codigo not in
   (SELECT codigoeditorial
     FROM libros
     WHERE autor='Richard Bach');

 --———————————————————————————————————————[ Ejercicio #94 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(30),
  PRIMARY KEY (codigo)
 );
 
 CREATE TABLE libros (
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  precio decimal(5,2),
  PRIMARY KEY(codigo),
 CONSTRAINT FK_libros_editorial
   foreign key (codigoeditorial)
   references editoriales(codigo)
   ON UPDATE cascade,
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Paidos');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('Uno','Richard Bach',1,15);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach',4,18);
 INSERT INTO libros VALUES('Puente al infinito','Richard Bach',2,20);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',4,40);
 INSERT INTO libros VALUES('El aleph','Borges',2,10);
 INSERT INTO libros VALUES('Antología','Borges',1,20);
 INSERT INTO libros VALUES('Cervantes y el quijote','Borges',3,25);

 SELECT titulo
  FROM libros
  WHERE autor like '%Borges%' and
  codigoeditorial = any
   (SELECT e.codigo
    FROM editoriales AS e
    join libros AS l
    ON codigoeditorial=e.codigo
    WHERE l.autor like '%Bach%');

 SELECT titulo
  FROM libros
  WHERE autor like '%Borges%' and
  codigoeditorial = all
   (SELECT e.codigo
    FROM editoriales AS e
    join libros AS l
    ON codigoeditorial=e.codigo
    WHERE l.autor like '%Bach%');

 SELECT titulo,precio
  FROM libros
  WHERE autor like '%Borges%' and
  precio > any
   (SELECT precio
    FROM libros
    WHERE autor like '%Bach%');

 SELECT titulo,precio
  FROM libros
  WHERE autor like '%Borges%' and
  precio > all
   (SELECT precio
    FROM libros
    WHERE autor like '%Bach%');

 DELETE FROM libros
  WHERE autor like '%Borges%' and
  precio > all
   (SELECT precio
    FROM libros
    WHERE autor like '%Bach%');

 --———————————————————————————————————————[ Ejercicio #95 ]——————————————————————————————————————————————
  IF object_id('detalles') is not null
  DROP TABLE detalles;
 IF object_id('facturas') is not null
  DROP TABLE facturas;

 CREATE TABLE facturas(
  numero int not null,
  fecha datetime,
  cliente varchar(30),
  PRIMARY KEY(numero)
 );

 CREATE TABLE detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  PRIMARY KEY(numerofactura,numeroitem),
   CONSTRAINT FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   ON UPDATE cascade
   ON DELETE cascade,
 );

 INSERT INTO facturas VALUES(1200,'2018-01-15','Juan Lopez');
 INSERT INTO facturas VALUES(1201,'2018-01-15','Luis Torres');
 INSERT INTO facturas VALUES(1202,'2018-01-15','Ana Garcia');
 INSERT INTO facturas VALUES(1300,'2018-01-20','Juan Lopez');

 INSERT INTO detalles VALUES(1200,1,'lapiz',1,100);
 INSERT INTO detalles VALUES(1200,2,'goma',0.5,150);
 INSERT INTO detalles VALUES(1201,1,'regla',1.5,80);
 INSERT INTO detalles VALUES(1201,2,'goma',0.5,200);
 INSERT INTO detalles VALUES(1201,3,'cuaderno',4,90);
 INSERT INTO detalles VALUES(1202,1,'lapiz',1,200);
 INSERT INTO detalles VALUES(1202,2,'escuadra',2,100);
 INSERT INTO detalles VALUES(1300,1,'lapiz',1,300);

 SELECT f.*,
  (SELECT COUNT(d.numeroitem)
    FROM detalles AS d
    WHERE f.numero=d.numerofactura) AS cantidad,
  (SELECT sum(d.precio*cantidad)
    FROM detalles AS d
    WHERE f.numero=d.numerofactura) AS total
 FROM facturas AS f;

 --———————————————————————————————————————[ Ejercicio #96 ]——————————————————————————————————————————————
  IF object_id('detalles') is not null
  DROP TABLE detalles;
 IF object_id('facturas') is not null
  DROP TABLE facturas;

 CREATE TABLE facturas(
  numero int not null,
  fecha datetime,
  cliente varchar(30),
  PRIMARY KEY(numero)
 );

 CREATE TABLE detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  PRIMARY KEY(numerofactura,numeroitem),
   CONSTRAINT FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   ON UPDATE cascade
   ON DELETE cascade
 );

 INSERT INTO facturas VALUES(1200,'2018-01-15','Juan Lopez');
 INSERT INTO facturas VALUES(1201,'2018-01-15','Luis Torres');
 INSERT INTO facturas VALUES(1202,'2018-01-15','Ana Garcia');
 INSERT INTO facturas VALUES(1300,'2018-01-20','Juan Lopez');

 INSERT INTO detalles VALUES(1200,1,'lapiz',1,100);
 INSERT INTO detalles VALUES(1200,2,'goma',0.5,150);
 INSERT INTO detalles VALUES(1201,1,'regla',1.5,80);
 INSERT INTO detalles VALUES(1201,2,'goma',0.5,200);
 INSERT INTO detalles VALUES(1201,3,'cuaderno',4,90);
 INSERT INTO detalles VALUES(1202,1,'lapiz',1,200);
 INSERT INTO detalles VALUES(1202,2,'escuadra',2,100);
 INSERT INTO detalles VALUES(1300,1,'lapiz',1,300);

 SELECT cliente,numero
  FROM facturas AS f
  WHERE exists
   (SELECT *FROM detalles AS d
     WHERE f.numero=d.numerofactura
     and d.articulo='lapiz');

 SELECT cliente,numero
  FROM facturas AS f
  WHERE not exists
   (SELECT *FROM detalles AS d
     WHERE f.numero=d.numerofactura
     and d.articulo='lapiz');

 --———————————————————————————————————————[ Ejercicio #97 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2)
 );

 INSERT INTO libros VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00);
 INSERT INTO libros VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Siglo XXI',40.00);
 INSERT INTO libros VALUES('El aleph','Borges','Emece',10.00);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta',15.00);
 INSERT INTO libros VALUES('Java en 10 minutos','Mario Molina','Siglo XXI',50.00);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez','Planeta',20.00);
 INSERT INTO libros VALUES('Martin Fierro','Jose Hernandez','Emece',30.00);
 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',10.00);

 SELECT distinct l1.titulo
  FROM libros AS l1
  WHERE l1.titulo in
  (SELECT l2.titulo
    FROM libros AS l2 
    WHERE l1.editorial <> l2.editorial);

 SELECT distinct l1.titulo
  FROM libros AS l1
  join libros AS l2
  ON l1.titulo=l2.titulo
  WHERE l1.editorial<>l2.editorial;

 SELECT titulo
  FROM libros
  WHERE titulo<>'El aleph' and
  precio =
   (SELECT precio
     FROM libros
     WHERE titulo='El aleph');

 SELECT l1.titulo
  FROM libros AS l1
  join libros  AS l2
  ON l1.precio=l2.precio
  WHERE l2.titulo='el aleph' and
  l1.titulo<>l2.titulo;

 SELECT l1.titulo,l1.editorial,l1.precio
  FROM libros AS l1
  WHERE l1.precio >
   (SELECT avg(l2.precio) 
   FROM libros AS l2
    WHERE l1.editorial= l2.editorial);

 SELECT l1.editorial,l1.titulo,l1.precio
  FROM libros AS l1
  join libros AS l2
   ON l1.editorial=l2.editorial
   group by l1.editorial, l1.titulo, l1.precio
   having l1.precio > avg(l2.precio);

 --———————————————————————————————————————[ Ejercicio #98 ]——————————————————————————————————————————————
  IF object_id('detalles') is not null
  DROP TABLE detalles;
 IF object_id('facturas') is not null
  DROP TABLE facturas;
 IF object_id('clientes') is not null
  DROP TABLE clientes;

 CREATE TABLE clientes(
  codigo int IDENTITY,
  nombre varchar(30),
  domicilio varchar(30),
  PRIMARY KEY(codigo)
 );

 CREATE TABLE facturas(
  numero int not null,
  fecha datetime,
  codigocliente int not null,
  PRIMARY KEY(numero),
  CONSTRAINT FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   ON UPDATE cascade
 );

 CREATE TABLE detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  PRIMARY KEY(numerofactura,numeroitem),
   CONSTRAINT FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   ON UPDATE cascade
   ON DELETE cascade,
 );

 INSERT INTO clientes VALUES('Juan Lopez','Colon 123');
 INSERT INTO clientes VALUES('Luis Torres','Sucre 987');
 INSERT INTO clientes VALUES('Ana Garcia','Sarmiento 576');

 INSERT INTO facturas VALUES(1200,'2018-01-15',1);
 INSERT INTO facturas VALUES(1201,'2018-01-15',2);
 INSERT INTO facturas VALUES(1202,'2018-01-15',3);
 INSERT INTO facturas VALUES(1300,'2018-01-20',1);

 INSERT INTO detalles VALUES(1200,1,'lapiz',1,100);
 INSERT INTO detalles VALUES(1200,2,'goma',0.5,150);
 INSERT INTO detalles VALUES(1201,1,'regla',1.5,80);
 INSERT INTO detalles VALUES(1201,2,'goma',0.5,200);
 INSERT INTO detalles VALUES(1201,3,'cuaderno',4,90);
 INSERT INTO detalles VALUES(1202,1,'lapiz',1,200);
 INSERT INTO detalles VALUES(1202,2,'escuadra',2,100);
 INSERT INTO detalles VALUES(1300,1,'lapiz',1,300);

 SELECT f.*,
  (SELECT sum(d.precio*cantidad)
    FROM detalles AS d
    WHERE f.numero=d.numerofactura) AS total
 FROM facturas AS f;

 SELECT td.numero,c.nombre,td.total
  FROM clientes AS c
  join (SELECT f.*,
   (SELECT sum(d.precio*cantidad)
    FROM detalles AS d
    WHERE f.numero=d.numerofactura) AS total
  FROM facturas AS f) AS td
  ON td.codigocliente=c.codigo;

 --———————————————————————————————————————[ Ejercicio #99 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('editoriales') is not null
  DROP TABLE editoriales;

 CREATE TABLE editoriales(
  codigo tinyint IDENTITY,
  nombre varchar(30),
  PRIMARY KEY (codigo)
 );
 
 CREATE TABLE libros (
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  precio decimal(5,2),
  PRIMARY KEY(codigo)
 );

 INSERT INTO editoriales VALUES('Planeta');
 INSERT INTO editoriales VALUES('Emece');
 INSERT INTO editoriales VALUES('Paidos');
 INSERT INTO editoriales VALUES('Siglo XXI');

 INSERT INTO libros VALUES('Uno','Richard Bach',1,15);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach',2,20);
 INSERT INTO libros VALUES('El aleph','Borges',3,10);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',4,40);
 INSERT INTO libros VALUES('Poemas','Juan Perez',1,20);
 INSERT INTO libros VALUES('Cuentos','Juan Perez',3,25);
 INSERT INTO libros VALUES('Java en 10 minutos','Marcelo Perez',2,30);

 UPDATE libros SET precio=precio+(precio*0.1)
  WHERE codigoeditorial=
   (SELECT codigo
     FROM editoriales
     WHERE nombre='Emece');

 DELETE FROM libros
  WHERE codigoeditorial in
   (SELECT e.codigo
    FROM editoriales AS e
    join libros
    ON codigoeditorial=e.codigo
    WHERE autor='Juan Perez');

 --———————————————————————————————————————[ Ejercicio #100 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;
 IF object_id('aprobados') is not null
  DROP TABLE aprobados;

 CREATE TABLE alumnos(
  documento char(8) not null,
  nombre varchar(30),
  nota decimal(4,2)
   CONSTRAINT CK_alumnos_nota_valores check (nota>=0 and nota <=10),
  PRIMARY KEY(documento),
 );

 CREATE TABLE aprobados(
  documento char(8) not null,
  nota decimal(4,2)
   CONSTRAINT CK_aprobados_nota_valores check (nota>=0 and nota <=10),
  PRIMARY KEY(documento),
 );

 INSERT INTO alumnos VALUES('30000000','Ana Acosta',8);
 INSERT INTO alumnos VALUES('30111111','Betina Bustos',9);
 INSERT INTO alumnos VALUES('30222222','Carlos Caseros',2.5); 
 INSERT INTO alumnos VALUES('30333333','Daniel Duarte',7.7);
 INSERT INTO alumnos VALUES('30444444','Estela Esper',3.4);

 INSERT INTO aprobados 
  SELECT documento,nota
   FROM alumnos
   WHERE nota>=4;

 SELECT * FROM aprobados;

 --———————————————————————————————————————[ Ejercicio #101 ]——————————————————————————————————————————————
  IF object_id('libros')is not null
  DROP TABLE libros;
 IF object_id('editoriales')is not null
  DROP TABLE editoriales;

 CREATE TABLE libros( 
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  PRIMARY KEY(codigo)
 ); 

 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros VALUES('El aleph','Borges','Emece',25);
 INSERT INTO libros VALUES('Matematica estas ahi','Paenza','Nuevo siglo',18);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Nuevo siglo',45);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta',14);
 INSERT INTO libros VALUES('Java en 10 minutos','Mario Molina','Nuevo siglo',50);

 SELECT distinct editorial AS nombre
  INTO editoriales
  FROM libros;

 SELECT *FROM editoriales;

 IF object_id('cantidadporeditorial') is not null
  DROP TABLE cantidadporeditorial;

 SELECT editorial AS nombre,COUNT(*) AS cantidad
  INTO cantidadporeditorial
  FROM libros
  group by editorial;

 SELECT *FROM cantidadporeditorial;

 IF object_id('ofertas4') is not null
  DROP TABLE ofertas4;

 SELECT top 4 *
  INTO ofertas4
  FROM libros
  order by precio desc;

 SELECT *FROM ofertas4;

 ALTER TABLE editoriales add ciudad varchar(30);

 UPDATE editoriales SET ciudad='Cordoba' WHERE nombre='Planeta';
 UPDATE editoriales SET ciudad='Cordoba' WHERE nombre='Emece';
 UPDATE editoriales SET ciudad='Buenos Aires' WHERE nombre='Nuevo siglo';

 IF object_id('librosdecordoba') is not null
  DROP TABLE librosdecordoba;

 SELECT titulo,autor
  INTO librosdecordoba
  FROM libros
  join editoriales
  ON editorial=nombre 
  WHERE ciudad='Cordoba';

 SELECT *FROM librosdecordoba;

 --———————————————————————————————————————[ Ejercicio #103 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;
 IF object_id('secciones') is not null
  DROP TABLE secciones;

 CREATE TABLE secciones(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  sueldo decimal(5,2)
   CONSTRAINT CK_secciones_sueldo check (sueldo>=0),
  CONSTRAINT PK_secciones PRIMARY KEY (codigo)
 );

 CREATE TABLE empleados(
  legajo int IDENTITY,
  documento char(8)
   CONSTRAINT CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   CONSTRAINT CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   CONSTRAINT CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   CONSTRAINT CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   CONSTRAINT PK_empleados PRIMARY KEY (legajo),
  CONSTRAINT FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   ON UPDATE cascade,
  CONSTRAINT UQ_empleados_documento
   unique(documento)
 );

 INSERT INTO secciones VALUES('Administracion',300);
 INSERT INTO secciones VALUES('Contaduría',400);
 INSERT INTO secciones VALUES('Sistemas',500);

 INSERT INTO empleados VALUES('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 INSERT INTO empleados VALUES('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 INSERT INTO empleados VALUES('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 INSERT INTO empleados VALUES('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 INSERT INTO empleados VALUES('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

 IF object_id('vista_empleados') is not null
  DROP VIEW vista_empleados;

 CREATE VIEW vista_empleados AS
  SELECT (apellido+' '+e.nombre) AS nombre,sexo,
   s.nombre AS seccion, cantidadhijos
   FROM empleados AS e
   join secciones AS s
   ON codigo=seccion;

 SELECT *FROM vista_empleados;

 SELECT seccion,COUNT(*) AS cantidad
  FROM vista_empleados
  group by seccion;

 IF object_id('vista_empleados_ingreso') is not null
  DROP VIEW vista_empleados_ingreso;

 CREATE VIEW vista_empleados_ingreso (fecha,cantidad)
  AS
  SELECT datepart(year,fechaingreso),COUNT(*)
   FROM empleados
   group by datepart(year,fechaingreso);

 SELECT *FROM vista_empleados_ingreso;

 --———————————————————————————————————————[ Ejercicio #104 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;
 IF object_id('secciones') is not null
  DROP TABLE secciones;

 CREATE TABLE secciones(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  sueldo decimal(5,2)
   CONSTRAINT CK_secciones_sueldo check (sueldo>=0),
  CONSTRAINT PK_secciones PRIMARY KEY (codigo)
 );

 CREATE TABLE empleados(
  legajo int IDENTITY,
  documento char(8)
   CONSTRAINT CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   CONSTRAINT CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   CONSTRAINT CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   CONSTRAINT CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   CONSTRAINT PK_empleados PRIMARY KEY (legajo),
  CONSTRAINT FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   ON UPDATE cascade,
  CONSTRAINT UQ_empleados_documento
   unique(documento)
);

 INSERT INTO secciones VALUES('Administracion',300);
 INSERT INTO secciones VALUES('Contaduría',400);
 INSERT INTO secciones VALUES('Sistemas',500);

 INSERT INTO empleados VALUES('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 INSERT INTO empleados VALUES('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 INSERT INTO empleados VALUES('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 INSERT INTO empleados VALUES('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 INSERT INTO empleados VALUES('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

 IF object_id('vista_empleados') is not null
  DROP VIEW vista_empleados;

 CREATE VIEW vista_empleados AS
  SELECT (apellido+' '+e.nombre) AS nombre,sexo,
   s.nombre AS seccion, cantidadhijos
   FROM empleados AS e
   join secciones AS s
   ON codigo=seccion;

 SELECT *FROM vista_empleados;

 EXEC sp_help vista_empleados;

 EXEC sp_helptext vista_empleados;

 EXEC sp_depends vista_empleados;

 EXEC sp_depends empleados;

 SELECT * FROM sysobjects;

 SELECT * FROM sysobjects
  WHERE xtype='V' and-- tipo vista
  name like 'vista%'--búsqueda con comodín ;

 --———————————————————————————————————————[ Ejercicio #105 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;
 IF object_id('secciones') is not null
  DROP TABLE secciones;

 CREATE TABLE secciones(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  sueldo decimal(5,2)
   CONSTRAINT CK_secciones_sueldo check (sueldo>=0),
  CONSTRAINT PK_secciones PRIMARY KEY (codigo)
 );

 CREATE TABLE empleados(
  legajo int IDENTITY,
  documento char(8)
   CONSTRAINT CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   CONSTRAINT CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   CONSTRAINT CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   CONSTRAINT CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   CONSTRAINT PK_empleados PRIMARY KEY (legajo),
  CONSTRAINT FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   ON UPDATE cascade,
  CONSTRAINT UQ_empleados_documento
   unique(documento)
 );

 IF object_id('vista_empleados') is not null
  DROP VIEW vista_empleados;

 CREATE VIEW vista_empleados
  WITH ENCRYPTION
 AS
  SELECT (apellido+' '+e.nombre) AS nombre,sexo,
   s.nombre AS seccion, cantidadhijos
   FROM empleados AS e
   join secciones AS s
   ON codigo=seccion;

 EXEC sp_helptext vista_empleados;

 --———————————————————————————————————————[ Ejercicio #106 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;
 IF object_id('secciones') is not null
  DROP TABLE secciones;

 CREATE TABLE secciones(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  sueldo decimal(5,2)
   CONSTRAINT CK_secciones_sueldo check (sueldo>=0),
  CONSTRAINT PK_secciones PRIMARY KEY (codigo)
 );

 CREATE TABLE empleados(
  legajo int IDENTITY,
  documento char(8)
   CONSTRAINT CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   CONSTRAINT CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   CONSTRAINT CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   CONSTRAINT CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   CONSTRAINT PK_empleados PRIMARY KEY (legajo),
  CONSTRAINT FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   ON UPDATE cascade,
  CONSTRAINT UQ_empleados_documento
   unique(documento)
 );

 INSERT INTO secciones VALUES('Administracion',300);
 INSERT INTO secciones VALUES('Contaduría',400);
 INSERT INTO secciones VALUES('Sistemas',500);

 INSERT INTO empleados VALUES('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 INSERT INTO empleados VALUES('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 INSERT INTO empleados VALUES('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 INSERT INTO empleados VALUES('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 INSERT INTO empleados VALUES('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

 IF object_id('vista_empleados') is not null
  DROP VIEW vista_empleados;

 CREATE VIEW vista_empleados AS
  SELECT (apellido+' '+e.nombre) AS nombre,sexo,
   s.nombre AS seccion, cantidadhijos
   FROM empleados AS e
   join secciones AS s
   ON codigo=seccion;

 SELECT *FROM vista_empleados;

 DROP TABLE empleados;

 sp_help;

 DROP VIEW vista_empleados;

 sp_help vista_empleados;

 --———————————————————————————————————————[ Ejercicio #107 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;
 IF object_id('secciones') is not null
  DROP TABLE secciones;

 CREATE TABLE secciones(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  sueldo decimal(5,2)
   CONSTRAINT CK_secciones_sueldo check (sueldo>=0),
  CONSTRAINT PK_secciones PRIMARY KEY (codigo)
 );

 CREATE TABLE empleados(
  legajo int IDENTITY,
  documento char(8)
   CONSTRAINT CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   CONSTRAINT CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   CONSTRAINT CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   CONSTRAINT CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   CONSTRAINT PK_empleados PRIMARY KEY (legajo),
  CONSTRAINT FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   ON UPDATE cascade,
  CONSTRAINT UQ_empleados_documento
   unique(documento)
 );

 INSERT INTO secciones VALUES('Administracion',300);
 INSERT INTO secciones VALUES('Contaduría',400);
 INSERT INTO secciones VALUES('Sistemas',500);

 INSERT INTO empleados VALUES('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 INSERT INTO empleados VALUES('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 INSERT INTO empleados VALUES('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 INSERT INTO empleados VALUES('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 INSERT INTO empleados VALUES('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

 IF object_id('vista_empleados') is not null
  DROP VIEW vista_empleados;

 CREATE VIEW vista_empleados
 AS
  SELECT apellido, e.nombre, sexo, s.nombre AS seccion
  FROM empleados AS e
  join secciones AS s
  ON seccion=codigo
  WHERE s.nombre='Administracion'
  WITH check option;

 SELECT * FROM vista_empleados;

 UPDATE vista_empleados SET nombre='Beatriz' WHERE nombre='Ana';

 SELECT * FROM empleados;

 --———————————————————————————————————————[ Ejercicio #108 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;
 IF object_id('secciones') is not null
  DROP TABLE secciones;

 CREATE TABLE secciones(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  sueldo decimal(5,2)
   CONSTRAINT CK_secciones_sueldo check (sueldo>=0),
  CONSTRAINT PK_secciones PRIMARY KEY (codigo)
 );

 CREATE TABLE empleados(
  legajo int IDENTITY,
  documento char(8)
   CONSTRAINT CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   CONSTRAINT CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   CONSTRAINT CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   CONSTRAINT CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   CONSTRAINT PK_empleados PRIMARY KEY (legajo),
  sueldo decimal(6,2),
  CONSTRAINT FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   ON UPDATE cascade,
  CONSTRAINT UQ_empleados_documento
   unique(documento)
 );

 INSERT INTO secciones VALUES('Administracion',300);
 INSERT INTO secciones VALUES('Contaduría',400);
 INSERT INTO secciones VALUES('Sistemas',500);

 INSERT INTO empleados VALUES('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10',600);
 INSERT INTO empleados VALUES('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10',650);
 INSERT INTO empleados VALUES('24444444', 'm', 'Garcia', 'Marcos', 'Sarmiento 1234', 2, 3, 'divorciado', '1998-07-12',800);
 INSERT INTO empleados VALUES('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09',900);
 INSERT INTO empleados VALUES('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09',700);

 IF object_id('vista_empleados') is not null
  DROP VIEW vista_empleados;

 CREATE VIEW vista_empleados AS
  SELECT (apellido+' '+e.nombre) AS nombre,sexo,
   s.nombre AS seccion, cantidadhijos
   FROM empleados AS e
   join secciones AS s
   ON codigo=seccion;

 SELECT * FROM vista_empleados;

 IF object_id('vista_empleados2') is not null
  DROP VIEW vista_empleados2;

 CREATE VIEW vista_empleados2
  AS
  SELECT nombre, apellido,fechaingreso,seccion,estadocivil,sueldo
   FROM empleados
  WHERE sueldo>=600
  WITH check option;

 SELECT * FROM vista_empleados2;

 INSERT INTO vista_empleados2 VALUES('Pedro','Perez','2000-10-10',1,'casado',800);

 UPDATE vista_empleados SET seccion='Sistemas' WHERE nombre='Lopez Ana';

 UPDATE vista_empleados2 SET nombre='Beatriz' WHERE nombre='Ana';

 SELECT * FROM empleados;

 DELETE FROM vista_empleados2 WHERE apellido='Lopez';

 --———————————————————————————————————————[ Ejercicio #109 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;
 IF object_id('secciones') is not null
  DROP TABLE secciones;

 CREATE TABLE secciones(
  codigo tinyint IDENTITY,
  nombre varchar(20),
  CONSTRAINT PK_secciones PRIMARY KEY (codigo)
 );

 CREATE TABLE empleados(
  legajo int IDENTITY,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  seccion tinyint not null,
  CONSTRAINT FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   ON UPDATE cascade,
  CONSTRAINT PK_empleados
   PRIMARY KEY (documento)
);

 INSERT INTO secciones VALUES('Administracion');
 INSERT INTO secciones VALUES('Contaduría');
 INSERT INTO secciones VALUES('Sistemas');

 INSERT INTO empleados VALUES('22222222','Lopez Ana','Colon 123',1);
 INSERT INTO empleados VALUES('23333333','Lopez Luis','Sucre 235',1);
 INSERT INTO empleados VALUES('24444444','Garcia Marcos','Sarmiento 1234',2);
 INSERT INTO empleados VALUES('25555555','Gomez Pablo','Bulnes 321',3);
 INSERT INTO empleados VALUES('26666666','Perez Laura','Peru 1254',3);

 IF object_id('vista_empleados') is not null
  DROP VIEW vista_empleados;

 CREATE VIEW vista_empleados
  WITH ENCRYPTION
 AS
  SELECT documento,nombre,seccion
  FROM empleados
  WHERE seccion=1
  WITH check option;

 SELECT *FROM vista_empleados;

 EXEC sp_helptext vista_empleados;

 ALTER VIEW vista_empleados
 AS
  SELECT documento,nombre,seccion, domicilio
  FROM empleados
  WHERE seccion=1;

 SELECT * FROM vista_empleados;

 EXEC sp_helptext vista_empleados;

 UPDATE vista_empleados SET seccion=2 WHERE documento='22222222';

 SELECT * FROM vista_empleados;

 IF object_id('vista_empleados2') is not null
  DROP VIEW vista_empleados2;

 CREATE VIEW vista_empleados2
 AS
  SELECT *FROM empleados;

 SELECT * FROM vista_empleados2;

 ALTER TABLE empleados
 add sueldo decimal(6,2);

 SELECT * FROM vista_empleados2;

 ALTER VIEW vista_empleados2
 AS
  SELECT * FROM empleados;

 SELECT * FROM vista_empleados2; 

 --———————————————————————————————————————[ Ejercicio #110 ]——————————————————————————————————————————————
  IF object_id('alumnos') is not null
  DROP TABLE alumnos;

 CREATE TABLE alumnos(
  nombre varchar(40),
  nota tinyint,
    CONSTRAINT CK_alunos_nota check (nota>=0 and nota<=10)
 );

 INSERT INTO alumnos VALUES('Ana Acosta',8);
 INSERT INTO alumnos VALUES('Carlos Caseres',4);
 INSERT INTO alumnos VALUES('Federico Fuentes',2);
 INSERT INTO alumnos VALUES('Gaston Guzman',3);
 INSERT INTO alumnos VALUES('Hector Herrero',5);
 INSERT INTO alumnos VALUES('Luis Luna',10);
 INSERT INTO alumnos VALUES('Marcela Morales',7);
 INSERT INTO alumnos VALUES('Marcela Morales',null);

 SELECT nombre,nota, condicion=
 case nota
  when 0 then 'libre'
  when 1 then 'libre'
  when 2 then 'libre'
  when 3 then 'libre'
  when 4 then 'regular'
  when 5 then 'regular'
  when 6 then 'regular'
  when 7 then 'promocionado'
  when 8 then 'promocionado'
  when 9 then 'promocionado'
  when 10 then 'promocionado'
 END
 FROM alumnos;

 SELECT nombre, nota, condicion=
  case 
   when nota<4 then 'libre'
   when nota >=4 and nota<7 then 'regular'
   when nota>=7 then 'promocionado'
   else 'sin nota'
  END
 FROM alumnos;

 ALTER TABLE alumnos
  add condicion varchar(20);

 SELECT *FROM alumnos;

 UPDATE alumnos SET condicion=
  case
   when nota<4 then 'libre'
   when nota between 4 and 7 then 'regular'
   when nota >7 then 'promocionado'
  END;

 SELECT *FROM alumnos;

 SELECT condicion, COUNT(*) AS cantidad,resultado=
  case condicion
    when 'libre' then 'repitentes'
    when 'regular' then 'rinden final'
    when 'promocionado' then 'no rinden final'
    else 'sin datos'
  END
 FROM alumnos
 group by condicion
 order by cantidad;

 --———————————————————————————————————————[ Ejercicio #111 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  PRIMARY KEY (codigo)
 );

 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',15,100);
 INSERT INTO libros VALUES('El aleph','Borges','Emece',20,150);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Nuevo siglo',50,200);
 INSERT INTO libros VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,0);
 INSERT INTO libros VALUES('Java en 10 minutos','Mario Molina','Emece',40,200);

 IF exists (SELECT *FROM libros WHERE cantidad=0)
  (SELECT titulo FROM libros WHERE cantidad=0)
 else
  SELECT 'No hay libros sin stock';

 IF exists (SELECT * FROM libros WHERE editorial='Emece')
 BEGIN
  UPDATE libros SET precio=precio-(precio*0.1) WHERE editorial='Emece'
  SELECT 'libros actualizados'
 END
 else
  SELECT 'no hay registros actualizados';

 SELECT * FROM libros WHERE editorial='Emece';

 IF exists (SELECT * FROM libros WHERE cantidad=0)
  DELETE FROM libros WHERE cantidad=0
 else
  SELECT 'No hay registros eliminados';

 IF exists (SELECT * FROM libros WHERE cantidad=0)
  DELETE FROM libros WHERE cantidad=0
 else
  SELECT 'No hay registros eliminados';

 --———————————————————————————————————————[ Ejercicio #112 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  titulo varchar(30),
  autor varchar(25),
  editorial varchar(20),
  precio decimal(5,2)
 );

 INSERT INTO libros VALUES('Uno','Bach Richard','Planeta',15);
 INSERT INTO libros VALUES('El aleph','Borges J. L.','Emece',25);
 INSERT INTO libros VALUES('Matematica estas ahi','Paenza Adrian','Siglo XXI',15);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Siglo XXI',35);
 INSERT INTO libros VALUES('Java en 10 minutos','Mario Molina','Siglo XXI',35);

 declare @valor int
 SELECT @valor;

 declare @nombre varchar(20)
 SET @nombre='Juan'
 SELECT @nombre;

 declare @mayorprecio  decimal(5,2)
 SELECT @mayorprecio=max(precio) FROM libros
 SELECT *FROM libros WHERE precio=@mayorprecio;

 --———————————————————————————————————————[ Ejercicio #113 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  sinopsis text
 );

 INSERT INTO libros VALUES
 ('Ilusiones','Richard Bach','Planeta',15,null);
 INSERT INTO libros VALUES
 ('Aprenda PHP','Mario Molina','Nuevo Siglo',45,'Trata todos los temas necesarios para el aprendizaje de PHP');
 INSERT INTO libros (titulo,autor,editorial) VALUES
 ('Uno','Richard Bach','Planeta');
 INSERT INTO libros VALUES
 ('El aleph','Borges','Emece',18,'Uno de los más célebres libros de este autor');

 SELECT COUNT(*)
  FROM libros
  WHERE sinopsis is not null;

 ALTER TABLE libros
 add CONSTRAINT DF_libros_sinopsis
 default 'No hay datos'
 FOR sinopsis;

 INSERT INTO libros default VALUES;

 SELECT * FROM libros;

IF object_id('libros') is not null
  DROP TABLE libros;

CREATE TABLE libros(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  sinopsis varchar(max)
);

INSERT INTO libros VALUES
 ('Ilusiones','Richard Bach','Planeta',15,null);
INSERT INTO libros VALUES
 ('Aprenda PHP','Mario Molina','Nuevo Siglo',45,'Trata todos los temas necesarios para el aprendizaje de PHP');
INSERT INTO libros (titulo,autor,editorial) VALUES
 ('Uno','Richard Bach','Planeta');
INSERT INTO libros VALUES
 ('El aleph','Borges','Emece',18,'Uno de los más célebres libros de este autor');

SELECT COUNT(*)
  FROM libros
  WHERE sinopsis is not null;

ALTER TABLE libros
 add CONSTRAINT DF_libros_sinopsis
 default 'No hay datos'
 FOR sinopsis;

INSERT INTO libros default VALUES;

SELECT * FROM libros;

 --———————————————————————————————————————[ Ejercicio #114 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  sinopsis text
 );

 INSERT INTO libros VALUES
 ('Ilusiones','Richard Bach','Planeta',15,null);
 INSERT INTO libros VALUES
 ('Aprenda PHP','Mario Molina','Nuevo Siglo',45,'Trata todos los temas necesarios para el aprendizaje de PHP');
 INSERT INTO libros (titulo,autor,editorial) VALUES
 ('Uno','Richard Bach','Planeta');

 SELECT titulo, textptr(sinopsis) AS direccion FROM libros;

 SELECT titulo,
  textvalid('libros.sinopsis', textptr(sinopsis)) AS 'Puntero valido'
  FROM libros;

 declare @puntero varbinary(16)
 SELECT @puntero = textptr(sinopsis) FROM libros
  WHERE titulo= 'Ilusiones'
 SELECT textvalid('libros.sinopsis', @puntero);

 declare @puntero varbinary(16)
 SELECT @puntero = textptr(sinopsis) FROM libros
 SELECT textvalid('libros.sinopsis', @puntero);

 --———————————————————————————————————————[ Ejercicio #115 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  sinopsis text
 );

 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',null);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo Siglo','Contiene todos los temas necesarios para el aprendizaje de PHP');
 INSERT INTO libros (titulo,autor,editorial) VALUES ('Uno','Richard Bach','Planeta');
 INSERT INTO libros VALUES ('El Aleph','Borges','Emece','Uno de los libros más célebres de este autor.');

 declare @puntero varbinary(16)
 SELECT @puntero=textptr(sinopsis) 
  FROM libros
  WHERE codigo=2
 readtext libros.sinopsis @puntero 9 50;

 declare @puntero varbinary(16)
 SELECT @puntero=textptr(sinopsis) 
  FROM libros WHERE codigo=3
 IF (textvalid('libros.sinopsis', @puntero)=1)
  readtext libros.sinopsis @puntero 0 0
 else SELECT 'puntero invalido';

 declare @puntero varbinary(16)
 SELECT @puntero=textptr(sinopsis) 
  FROM libros WHERE codigo=4
 IF (textvalid('libros.sinopsis', @puntero)=1)
  readtext libros.sinopsis @puntero 0 0
 else SELECT 'puntero invalido';

 --———————————————————————————————————————[ Ejercicio #116 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  sinopsis text
 );

 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',null);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo Siglo',
   'Contiene todos los temas necesarios para el aprendizaje de PHP');
 INSERT INTO libros (titulo,autor,editorial) VALUES ('Uno','Richard Bach','Planeta');
 INSERT INTO libros VALUES ('El Aleph','Borges','Emece','Uno de los libros más célebres de este autor.');

 declare @puntero binary(16)
 SELECT @puntero = textptr (sinopsis)
  FROM libros
  WHERE codigo=2
 writetext libros.sinopsis @puntero 'Este es un nuevo libro acerca de PHP escrito por el profesor 
Molina que aborda todos los temas necesarios para el aprendizaje desde cero de este lenguaje.';

 declare @puntero binary(16)
 SELECT @puntero = textptr (sinopsis)
  FROM libros
  WHERE codigo=2
 readtext libros.sinopsis @puntero 0 0;

 declare @puntero varbinary(16)
 SELECT @puntero=textptr(sinopsis) 
  FROM libros WHERE codigo=1
 IF (textvalid('libros.sinopsis', @puntero)=1)
  writetext libros.sinopsis @puntero 'Trata de una gaviota que vuela más alto que las demás.'
 else SELECT 'puntero invalido, no se actualizó el registro';

 UPDATE libros SET sinopsis='xx' WHERE codigo=1;

 declare @puntero varbinary(16)
 SELECT @puntero=textptr(sinopsis) 
  FROM libros WHERE codigo=1
 IF (textvalid('libros.sinopsis', @puntero)=1)
  writetext libros.sinopsis @puntero 'Trata de una gaviota que vuela más alto que las demás.'
 else SELECT 'puntero invalido, no se actualizó el registro';

 declare @puntero binary(16)
 SELECT @puntero = textptr (sinopsis)
  FROM libros
  WHERE codigo=1
 readtext libros.sinopsis @puntero 0 0;

 INSERT INTO libros VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Planeta','');

 declare @puntero varbinary(16)
 SELECT @puntero=textptr(sinopsis) 
  FROM libros WHERE codigo=5
 IF (textvalid('libros.sinopsis', @puntero)=1)
  writetext libros.sinopsis @puntero 'Trata de las aventuras de una niña en un país muy extraño.'
 else SELECT 'puntero invalido, no se actualizó el registro';

 declare @puntero binary(16)
 SELECT @puntero = textptr (sinopsis)
  FROM libros
  WHERE codigo=5
 readtext libros.sinopsis @puntero 0 0;

 --———————————————————————————————————————[ Ejercicio #117 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;
 IF object_id('ofertas') is not null
  DROP TABLE ofertas;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  sinopsis text
 );

 CREATE TABLE ofertas(
  titulo varchar(40),
  sinopsis text
 );

 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',null);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo Siglo','Para aprender PHP a paso');
 INSERT INTO libros VALUES ('Uno','Richard Bach','Planeta','');
 INSERT INTO libros VALUES ('El Aleph','Borges','Emece','Uno de los libros más célebres de este autor.');

 INSERT INTO ofertas VALUES ('Aprenda PHP','');

 SELECT *FROM libros;
 SELECT *FROM ofertas;

 declare @puntero binary(16)
 SELECT @puntero = textptr(sinopsis)
  FROM libros
  WHERE titulo='Aprenda PHP'
  IF (textvalid('libros.sinopsis',@puntero)=1)
   updatetext libros.sinopsis @puntero 18 0 'paso '
  else
   SELECT 'Puntero inválido';

 declare @puntero binary(16)
 SELECT @puntero = textptr (sinopsis)
  FROM libros
  WHERE titulo='Aprenda PHP'
 
 readtext libros.sinopsis @puntero 0 0;

 declare @puntero1 binary(16)
 SELECT @puntero1 = textptr(sinopsis)
  FROM libros
  WHERE titulo='Aprenda PHP'

 declare @puntero2 binary(16)
 SELECT @puntero2 = textptr(sinopsis)
  FROM ofertas
  WHERE titulo='Aprenda PHP'

  updatetext ofertas.sinopsis @puntero2 0 null
   libros.sinopsis @puntero1;

 declare @puntero binary(16)
 SELECT @puntero = textptr (sinopsis)
  FROM ofertas
  WHERE titulo='Aprenda PHP'
 
 readtext ofertas.sinopsis @puntero 0 0;

 --———————————————————————————————————————[ Ejercicio #118 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  sinopsis text
 );

 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',null);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo Siglo','Para aprender PHP paso a paso');
 INSERT INTO libros VALUES ('Programación elemental en PHP','Mario Molina','Planeta','Contiene conceptos básicos de PHP');

 SELECT titulo, datalength(sinopsis) AS longitud
  FROM libros
  order by titulo;

 SELECT titulo
  FROM libros
  WHERE patindex('%PHP%', sinopsis)>0;

 SELECT titulo, patindex('%PHP%', sinopsis) AS posicion
  FROM libros;

 SELECT titulo,substring(sinopsis,1,10) AS sinopsis
  FROM libros;

 --———————————————————————————————————————[ Ejercicio #120 ]——————————————————————————————————————————————
  IF object_id('pa_crear_libros') is not null
  DROP procedure pa_crear_libros;

 CREATE procedure pa_crear_libros 
 AS
  IF object_id('libros')is not null
   DROP TABLE libros
 
  CREATE TABLE libros(
   codigo int IDENTITY,
   titulo varchar(40),
   autor varchar(30),
   editorial varchar(20),
   precio decimal(5,2),
   cantidad smallint,
   PRIMARY KEY(codigo)
  )

  INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',15,5)
  INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta',18,50)
  INSERT INTO libros VALUES('El aleph','Borges','Emece',25,9)
  INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Nuevo siglo',45,100)
  INSERT INTO libros VALUES('Matematica estas ahi','Paenza','Nuevo siglo',12,50)
  INSERT INTO libros VALUES('Java en 10 minutos','Mario Molina','Paidos',35,300);

 EXEC pa_crear_libros;

 SELECT *FROM libros;

 EXEC sp_help pa_crear_libros;

 IF object_id('pa_libros_limite_stock') is not null
  DROP procedure pa_libros_limite_stock;
 
 CREATE proc pa_libros_limite_stock
  AS
   SELECT *FROM libros
   WHERE cantidad <=10;

 EXEC sp_help pa_libros_limite_stock;

 EXEC pa_libros_limite_stock;

 UPDATE libros SET cantidad=2 WHERE codigo=4;
 EXEC pa_libros_limite_stock;

 --———————————————————————————————————————[ Ejercicio #121 ]——————————————————————————————————————————————
  IF object_id('pa_crear_libros') is not null
  DROP procedure pa_crear_libros;

 EXEC sp_help pa_crear_libros;

 CREATE procedure pa_crear_libros 
 AS
  IF object_id('libros')is not null
   DROP TABLE libros
  CREATE TABLE libros(
   codigo int IDENTITY,
   titulo varchar(40),
   autor varchar(30),
   editorial varchar(20),
   precio decimal(5,2),
   cantidad smallint,
   PRIMARY KEY(codigo)
  )
  INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',15,5)
  INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta',18,50)
  INSERT INTO libros VALUES('El aleph','Borges','Emece',25,9)
  INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Nuevo siglo',45,100)
  INSERT INTO libros VALUES('Matematica estas ahi','Paenza','Nuevo siglo',12,50)
  INSERT INTO libros VALUES('Java en 10 minutos','Mario Molina','Paidos',35,300);

 EXEC sp_help pa_crear_libros;

 DROP proc pa_crear_libros;

 EXEC sp_help pa_crear_libros;

 DROP proc pa_crear_libros;

 IF object_id('pa_crear_libros') is not null
  DROP proc pa_crear_libros
 else 
  SELECT 'No existe el procedimiento "pa_crear_libros"';

 --———————————————————————————————————————[ Ejercicio #122 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  PRIMARY KEY(codigo) 
 );

 INSERT INTO libros VALUES ('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',12);
 INSERT INTO libros VALUES ('El aleph','Borges','Emece',25);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 INSERT INTO libros VALUES ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 INSERT INTO libros VALUES ('Puente al infinito','Bach Richard','Sudamericana',14);
 INSERT INTO libros VALUES ('Antología','J. L. Borges','Paidos',24);
 INSERT INTO libros VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 INSERT INTO libros VALUES ('Cervantes y el quijote','Borges- Casares','Planeta',34);

 IF object_id('pa_libros_autor') is not null
  DROP procedure pa_libros_autor;

 CREATE procedure pa_libros_autor
  @autor varchar(30) 
 AS
  SELECT titulo, editorial,precio
   FROM libros
   WHERE autor= @autor;

 EXEC pa_libros_autor 'Richard Bach';

 EXEC pa_libros_autor @autor='Borges';

 IF object_id('pa_libros_autor_editorial') is not null
  DROP procedure pa_libros_autor_editorial;

 CREATE procedure pa_libros_autor_editorial
  @autor varchar(30),
  @editorial varchar(20) 
 AS
  SELECT titulo, precio
   FROM libros
   WHERE autor= @autor and
   editorial=@editorial;

 EXEC pa_libros_autor_editorial 'Richard Bach','Planeta';

 EXEC pa_libros_autor_editorial @autor='Borges',@editorial='Emece';

 IF object_id('pa_libros_autor_editorial2') is not null
  DROP procedure pa_libros_autor_editorial2;

 CREATE procedure pa_libros_autor_editorial2
  @autor varchar(30)='Richard Bach',
  @editorial varchar(20)='Planeta' 
 AS
  SELECT titulo,autor,editorial,precio
   FROM libros
   WHERE autor= @autor and
   editorial=@editorial;

 EXEC pa_libros_autor_editorial2;

 EXEC pa_libros_autor_editorial2 'Planeta';

 EXEC pa_libros_autor_editorial2 @editorial='Planeta';

 EXEC pa_libros_autor_editorial2 @editorial='Nuevo siglo',@autor='Paenza';

 IF object_id('pa_libros_autor_editorial3') is not null
  DROP procedure pa_libros_autor_editorial3;
 
 CREATE proc pa_libros_autor_editorial3
  @autor varchar(30) = '%',
  @editorial varchar(30) = '%'
 AS 
  SELECT titulo,autor,editorial,precio
   FROM libros
   WHERE autor like @autor and
   editorial like @editorial;

 EXEC pa_libros_autor_editorial3 'P%';

 EXEC pa_libros_autor_editorial3 @editorial='P%';

 EXEC pa_libros_autor_editorial3 default, 'P%';

 --———————————————————————————————————————[ Ejercicio #123 ]——————————————————————————————————————————————
  IF object_id('pa_promedio') is not null
  DROP proc pa_promedio;

 CREATE procedure pa_promedio
  @n1 decimal(4,2),
  @n2 decimal(4,2),
  @resultado decimal(4,2) output
  AS 
   SELECT @resultado=(@n1+@n2)/2;

 declare @variable decimal(4,2)
 execute pa_promedio 5,6, @variable output
 SELECT @variable

 execute pa_promedio 5.3,4.7, @variable output
 SELECT @variable

 execute pa_promedio 9,10, @variable output
 SELECT @variable;

 IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  PRIMARY KEY(codigo) 
 );

 INSERT INTO libros VALUES ('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',12);
 INSERT INTO libros VALUES ('El aleph','Borges','Emece',25);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 INSERT INTO libros VALUES ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 INSERT INTO libros VALUES ('Puente al infinito','Richard Bach','Sudamericana',14);
 INSERT INTO libros VALUES ('Antología','J. L. Borges','Paidos',24);
 INSERT INTO libros VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 INSERT INTO libros VALUES ('Antología','Borges','Planeta',34);

 IF object_id('pa_autor_sumaypromedio') is not null
  DROP proc pa_autor_sumaypromedio;

 CREATE procedure pa_autor_sumaypromedio
  @autor varchar(30)='%',
  @suma decimal(6,2) output,
  @promedio decimal(6,2) output
  AS 
   SELECT titulo,editorial,precio
   FROM libros
   WHERE autor like @autor
  SELECT @suma=sum(precio)
   FROM libros
   WHERE autor like @autor
  SELECT @promedio=avg(precio)
   FROM libros
   WHERE autor like @autor;

 declare @s decimal(6,2), @p decimal(6,2)
 execute pa_autor_sumaypromedio 'Richard Bach', @s output, @p output
 SELECT @s AS total, @p AS promedio

 execute pa_autor_sumaypromedio 'Borges', @s output, @p output
 SELECT @s AS total, @p AS promedio

 execute pa_autor_sumaypromedio 'Mario Molina', @s output, @p output
 SELECT @s AS total, @p AS promedio;

 declare @s decimal(6,2), @p decimal(6,2)
 execute pa_autor_sumaypromedio @suma=@s output,@promedio= @p output
 SELECT @s AS total, @p AS promedio;

 --———————————————————————————————————————[ Ejercicio #124 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  PRIMARY KEY(codigo) 
 );

 INSERT INTO libros VALUES ('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',12);
 INSERT INTO libros VALUES ('El aleph','Borges','Emece',25);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 INSERT INTO libros VALUES ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 INSERT INTO libros VALUES ('Puente al infinito','Richard Bach','Sudamericana',14);
 INSERT INTO libros VALUES ('Antología','J. L. Borges','Paidos',24);
 INSERT INTO libros VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 INSERT INTO libros VALUES ('Antología','Borges','Planeta',34);

 IF object_id('pa_libros_autor') is not null
  DROP procedure pa_libros_autor;

 CREATE procedure pa_libros_autor
  @autor varchar(30)=null
 AS 
 IF @autor is null
 BEGIN 
  SELECT 'Debe indicar un autor'
  return
 END
 SELECT titulo FROM  libros WHERE autor = @autor;

 EXEC pa_libros_autor 'Borges';

 EXEC pa_libros_autor;

 IF object_id('pa_libros_ingreso') is not null
  DROP procedure pa_libros_ingreso;

 CREATE procedure pa_libros_ingreso
  @titulo varchar(40)=null,
  @autor varchar(30)=null,
  @editorial varchar(20)=null,
  @precio decimal(5,2)=null
 AS 
 IF (@titulo is null) or (@autor is null)
  return 0
 else 
 BEGIN
  INSERT INTO libros VALUES (@titulo,@autor,@editorial,@precio)
  return 1
 END;

 declare @retorno int
 EXEC @retorno=pa_libros_ingreso 'Alicia en el pais...','Lewis Carroll'
 SELECT 'Ingreso realizado=1' = @retorno;

 SELECT *FROM libros;

 declare @retorno int
 EXEC @retorno=pa_libros_ingreso
 SELECT 'Ingreso realizado=1' = @retorno;

 SELECT *FROM libros;

 declare @retorno int
 EXEC @retorno=pa_libros_ingreso 'El gato con botas','Anónimo'
 IF @retorno=1 SELECT 'Registro ingresado'
 else SELECT 'Registro no ingresado porque faltan datos';

 SELECT *FROM libros;

 declare @retorno int
 EXEC @retorno=pa_libros_ingreso
 IF @retorno=1 SELECT 'Registro ingresado'
 else SELECT 'Registro no ingresado porque faltan datos';

 SELECT *FROM libros;

 --———————————————————————————————————————[ Ejercicio #125 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  PRIMARY KEY(codigo) 
 );

 INSERT INTO libros VALUES ('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',12);
 INSERT INTO libros VALUES ('El aleph','Borges','Emece',25);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 INSERT INTO libros VALUES ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 INSERT INTO libros VALUES ('Puente al infinito','Richard Bach','Sudamericana',14);
 INSERT INTO libros VALUES ('Antología','J. L. Borges','Paidos',24);
 INSERT INTO libros VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 INSERT INTO libros VALUES ('Antología','Borges','Planeta',34);

 IF object_id('pa_autor_promedio') is not null
  DROP proc pa_autor_promedio;

 CREATE procedure pa_autor_promedio
  @autor varchar(30)='%',
  @promedio decimal(6,2) output
  AS 
  SELECT @promedio=avg(precio)
   FROM libros
   WHERE autor like @autor;

 EXEC sp_help pa_autor_promedio;

 EXEC sp_helptext pa_autor_promedio;

 EXEC sp_stored_procedures;

 EXEC sp_stored_procedures 'pa_%';

 EXEC sp_depends pa_autor_promedio;

 EXEC sp_depends libros;

 SELECT * FROM sysobjects;

 SELECT * FROM sysobjects
  WHERE xtype='P' and-- tipo procedimiento
  name like 'pa%'--búsqueda con comodín;

 DROP proc pa_autor_promedio;

 EXEC sp_depends libros;

 --———————————————————————————————————————[ Ejercicio #126 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  PRIMARY KEY(codigo) 
 );

 IF object_id('pa_libros_autor') is not null
  DROP procedure pa_libros_autor;

 CREATE procedure pa_libros_autor
  @autor varchar(30)=null
  WITH ENCRYPTION
  AS
   SELECT *FROM libros
    WHERE autor=@autor;

 EXEC sp_helptext pa_libros_autor;

 --———————————————————————————————————————[ Ejercicio #127 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  PRIMARY KEY(codigo) 
 );

 INSERT INTO libros VALUES ('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',12);
 INSERT INTO libros VALUES ('El aleph','Borges','Emece',25);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 INSERT INTO libros VALUES ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 INSERT INTO libros VALUES ('Puente al infinito','Richard Bach','Sudamericana',14);
 INSERT INTO libros VALUES ('Antología','J. L. Borges','Paidos',24);
 INSERT INTO libros VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 INSERT INTO libros VALUES ('Antología','Borges','Planeta',34);

 IF object_id('pa_libros_autor') is not null
  DROP procedure pa_libros_autor;

 CREATE procedure pa_libros_autor
  @autor varchar(30)=null
  WITH ENCRYPTION
  AS
   SELECT titulo FROM libros
    WHERE autor like @autor;

 EXEC pa_libros_autor 'Richard Bach';

 EXEC sp_helptext pa_libros_autor;

 ALTER procedure pa_libros_autor
  @autor varchar(30)=null
  AS
   SELECT titulo, editorial, precio FROM libros
    WHERE autor like @autor;

 EXEC pa_libros_autor 'Borges';

 EXEC sp_helptext pa_libros_autor;

 ALTER procedure pa_libros_autor
  @autor varchar(30)='%'
  AS
   SELECT titulo, editorial, precio FROM libros
    WHERE autor like @autor;

 EXEC pa_libros_autor;

 --———————————————————————————————————————[ Ejercicio #128 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  PRIMARY KEY(codigo) 
 );

 INSERT INTO libros VALUES ('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros VALUES ('Ilusiones','Richard Bach','Planeta',12);
 INSERT INTO libros VALUES ('El aleph','Borges','Emece',25);
 INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 INSERT INTO libros VALUES ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 INSERT INTO libros VALUES ('Puente al infinito','Richard Bach','Sudamericana',14);
 INSERT INTO libros VALUES ('Antología','J. L. Borges','Paidos',24);
 INSERT INTO libros VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 INSERT INTO libros VALUES ('Antología','Borges','Planeta',34);

 IF object_id('ofertas') is not null
  DROP TABLE ofertas;

 CREATE TABLE ofertas(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2)
 );

 IF object_id('pa_ofertas') is not null
  DROP procedure pa_ofertas;

 CREATE proc pa_ofertas
  AS
  SELECT titulo,autor,editorial,precio
   FROM libros
   WHERE precio<=30;

 INSERT INTO ofertas EXEC pa_ofertas;

 SELECT * FROM ofertas;

 IF object_id('libros_por_editorial') is not null
  DROP TABLE libros_por_editorial;

 CREATE TABLE libros_por_editorial(
  editorial varchar(20),
  cantidad int
 );

 IF object_id('pa_libros_por_editorial') is not null
  DROP procedure pa_libros_por_editorial;

 CREATE proc pa_libros_por_editorial
  AS
  SELECT editorial,COUNT(*)
   FROM libros
   group by editorial;

 INSERT INTO libros_por_editorial EXEC pa_libros_por_editorial;

 SELECT * FROM libros_por_editorial;

 --———————————————————————————————————————[ Ejercicio #129 ]——————————————————————————————————————————————
  IF object_id('pa_multiplicar') is not null
  DROP proc pa_multiplicar;
 IF object_id('pa_factorial') is not null
  DROP proc pa_factorial;

 CREATE procedure pa_multiplicar
  @numero1 int,
  @numero2 int,
  @producto int output
  AS
   SELECT @producto=@numero1*@numero2;

  declare @x int
  EXEC pa_multiplicar 3,9, @x output
  SELECT @x AS '3*9'
  EXEC pa_multiplicar 50,8, @x output
  SELECT @x AS '50*8';

 CREATE procedure pa_factorial
  @numero int
 AS
  IF @numero>=0 and @numero<=12
  BEGIN
   declare @resultado int
   declare @num int
   SET @resultado=1 
   SET @num=@numero 
   while (@num>1)
   BEGIN
     EXEC pa_multiplicar @resultado,@num, @resultado output
     SET @num=@num-1
   END
   SELECT rtrim(convert(char,@numero))+'!='+convert(char,@resultado)
  END
  else SELECT 'Debe ingresar un número entre 0 y 12';

 EXEC pa_factorial 5;
 EXEC pa_factorial 10;

 EXEC sp_depends pa_multiplicar;

 EXEC sp_depends pa_factorial;

 --———————————————————————————————————————[ Ejercicio #131 ]——————————————————————————————————————————————
  IF (object_id('inscriptos')) is not null
  DROP TABLE inscriptos;
 IF (object_id('deportes')) is not null
  DROP TABLE deportes;
 IF (object_id('cursos')) is not null
  DROP TABLE cursos;
 IF (object_id('profesores')) is not null
  DROP TABLE profesores;
 IF (object_id('socios')) is not null
  DROP TABLE socios;

 CREATE TABLE deportes(
  codigo tinyint IDENTITY,
  nombre varchar(30),
  PRIMARY KEY (codigo)
 );

 CREATE TABLE profesores(
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  PRIMARY KEY (documento)
 );

 CREATE TABLE socios(
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  PRIMARY KEY (documento)
 );

 CREATE TABLE cursos(
  numero tinyint IDENTITY,
  codigodeporte tinyint not null,
  documentoprofesor char(8) not null,
  dia varchar(15),
  CONSTRAINT PK_cursos_numero
   PRIMARY KEY clustered (numero),
  CONSTRAINT FK_cursos_documentoprofesor
   foreign key (documentoprofesor)
   references profesores(documento)
   ON UPDATE cascade,
  CONSTRAINT FK_cursos_codigodeporte
   foreign key (codigodeporte)
   references deportes(codigo)
 );

 CREATE TABLE inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1) --'s'=paga 'n'=impaga,
  CONSTRAINT PK_inscriptos_documentosocio_numero
   PRIMARY KEY(documentosocio,numero),
  CONSTRAINT FK_inscriptos_documentosocio
   foreign key (documentosocio)
   references socios(documento),
  CONSTRAINT FK_inscriptos_numero
   foreign key (numero)
   references cursos(numero)
 );

 INSERT INTO deportes VALUES('tenis');
 INSERT INTO deportes VALUES('natacion');
 INSERT INTO deportes VALUES('basquet');
 INSERT INTO deportes VALUES('futbol');
 
 INSERT INTO profesores VALUES('22222222','Ana Acosta','Colon 123');
 INSERT INTO profesores VALUES('23333333','Carlos Caseres','Sarmiento 847');
 INSERT INTO profesores VALUES('24444444','Daniel Duarte','Avellaneda 284');
 INSERT INTO profesores VALUES('25555555','Fabiola Fuentes','Caseros 456');
 INSERT INTO profesores VALUES('26666666','Gaston Garcia','Bulnes 345');

 INSERT INTO cursos VALUES(1,'22222222','jueves');
 INSERT INTO cursos VALUES(1,'22222222','viernes');
 INSERT INTO cursos VALUES(1,'23333333','miercoles');
 INSERT INTO cursos VALUES(2,'22222222','miercoles');
 INSERT INTO cursos VALUES(2,'23333333','lunes');
 INSERT INTO cursos VALUES(2,'23333333','martes');
 INSERT INTO cursos VALUES(3,'24444444','lunes');
 INSERT INTO cursos VALUES(3,'24444444','jueves');
 INSERT INTO cursos VALUES(3,'25555555','martes');
 INSERT INTO cursos VALUES(3,'25555555','viernes');
 INSERT INTO cursos VALUES(4,'24444444','martes');
 INSERT INTO cursos VALUES(4,'24444444','miercoles');
 INSERT INTO cursos VALUES(4,'24444444','viernes');

 INSERT INTO socios VALUES('31111111','Luis Lopez','Colon 464');
 INSERT INTO socios VALUES('30000000','Nora Nores','Bulnes 234');
 INSERT INTO socios VALUES('33333333','Mariano Morales','Sucre 464');
 INSERT INTO socios VALUES('32222222','Patricia Perez','Peru 1234');
 INSERT INTO socios VALUES('34444444','Susana Suarez','Salta 765');

 INSERT INTO inscriptos VALUES('30000000',1,'s');
 INSERT INTO inscriptos VALUES('30000000',4,'n');
 INSERT INTO inscriptos VALUES('31111111',1,'s');
 INSERT INTO inscriptos VALUES('31111111',4,'s');
 INSERT INTO inscriptos VALUES('31111111',7,'s');
 INSERT INTO inscriptos VALUES('31111111',13,'s');
 INSERT INTO inscriptos VALUES('32222222',1,'s');
 INSERT INTO inscriptos VALUES('32222222',4,'s');

 IF (object_id('pa_inscriptos')) is not null
  DROP proc pa_inscriptos;

  CREATE procedure pa_inscriptos
  AS
   SELECT s.nombre, d.nombre, dia, p.nombre, matricula
   FROM socios AS s
   join inscriptos AS i
   ON s.documento=i.documentosocio
   join cursos AS c
   ON c.numero=i.numero
   join deportes AS d
   ON c.codigodeporte=d.codigo
   join profesores AS p
   ON c.documentoprofesor=p.documento;

 EXEC pa_inscriptos;

 IF (object_id('pa_documentovalido')) is not null
  DROP proc pa_documentovalido;

 CREATE procedure pa_documentovalido
  @documento char(8)=null
  AS
   IF @documento is null return 1
   else 
    IF len(@documento)<8 return 2
    else
     IF not exists (SELECT *FROM socios WHERE documento=@documento) return 3
     else
     BEGIN
      IF exists (SELECT *FROM inscriptos
                WHERE documentosocio=@documento and
                matricula='n') return 4
      else return 0
     END;

 IF (object_id('pa_deportediavalido')) is not null
  DROP proc pa_deportediavalido;

 CREATE procedure pa_deportediavalido
  @deporte varchar(30)=null,
  @dia varchar (15)=null
  AS
   IF @deporte is null or @dia is null return 1
   else
    IF @dia not in ('lunes','martes','miercoles','jueves','viernes','sabado') return 2
    else
    BEGIN
     declare @coddep tinyint
     SELECT @coddep= codigo FROM deportes WHERE nombre=@deporte
     IF @coddep is null return 3
     else
      IF not exists(SELECT *FROM cursos WHERE codigodeporte=@coddep and dia=@dia) return 4
      else return 0
    END;

 IF (object_id('pa_ingreso')) is not null
  DROP proc pa_ingreso;

 CREATE procedure pa_ingreso
  @documento char(8)=null,
  @deporte varchar(20)=null,
  @dia varchar(20)=null,
  @matricula char(1)=null
  AS
   --verificamos el documento
   declare @doc int
   EXEC @doc=pa_documentovalido @documento
   IF @doc=1 SELECT 'Ingrese un documento'
   else
    IF @doc=2 SELECT 'Documento debe tener 8 digitos'
    else
     IF @doc=3 SELECT @documento+' no es socio'
     else
      IF @doc=4 SELECT 'Socio '+ @documento+' debe matriculas'
  --verificamos el deporte y el dia
   declare @depdia int
   EXEC @depdia=pa_deportediavalido @deporte, @dia
   IF @depdia=1 SELECT 'Ingrese deporte y dia'
   else
    IF @depdia=2 SELECT 'Ingrese día válido'
    else
     IF @depdia=3 SELECT @deporte+' no se dicta'
     else
      IF @depdia=4 SELECT @deporte+' no se dicta el '+ @dia
   
   --verificamos que el socio no esté inscripto ya en el deporte el día solicitado
   IF @doc=0 and @depdia=0
   BEGIN
     declare @codcurs int
     SELECT @codcurs=c.numero FROM cursos AS c
                     join deportes AS d
                     ON c.codigodeporte=d.codigo
	             WHERE @deporte=d.nombre and
                     @dia=c.dia
     IF exists (SELECT *FROM inscriptos AS i
                join cursos AS c
                ON i.numero=c.numero
                WHERE @codcurs=i.numero and 
                i.documentosocio=@documento)
            SELECT 'Ya está inscripto en '+@deporte+' el '+ @dia
     else
       IF @matricula is null or @matricula='s' or @matricula='n'
       BEGIN
        INSERT INTO inscriptos VALUES(@documento,@codcurs,@matricula)
        print 'Inscripción del socio '+@documento+' para '+@deporte+' el '+@dia+' realizada'  
       END
       else SELECT 'Matricula debe ser s, n o null'
   END;

 EXEC pa_ingreso '22222222';

 EXEC pa_ingreso '30000000';

 EXEC pa_ingreso '31111111';

 EXEC pa_ingreso '31111111','tenis','sabado';

 EXEC pa_ingreso '31111111','tenis','jueves';

 EXEC pa_ingreso '33333333','tenis','jueves';

 EXEC pa_inscriptos;

 IF (object_id('pa_profesor')) is not null
  DROP proc pa_profesor;

 CREATE proc pa_profesor
  @documento char(8)=null
 AS
  IF @documento is null or len(@documento)<8
    SELECT 'Ingrese un documento válido'
  else
  BEGIN
   declare @nombre varchar(30)
   SELECT @nombre=nombre FROM profesores WHERE documento=@documento
   IF @nombre is null SELECT 'No es profesor'
   else
     IF not exists(SELECT *FROM cursos WHERE documentoprofesor=@documento)
       SELECT 'El profesor '+@nombre+' no tiene cursos asignados'
     else
       SELECT d.nombre,c.dia
        FROM cursos AS c
        join deportes AS d
        ON c.codigodeporte=d.codigo
        WHERE c.documentoprofesor=@documento
  END;

 EXEC pa_profesor '34343434';

 EXEC pa_profesor '22222222';

 IF (object_id('pa_inscriptos_por_curso')) is not null
  DROP proc pa_inscriptos_por_curso;

 CREATE procedure pa_inscriptos_por_curso
  @deporte varchar(20)=null
 AS
  IF @deporte is null
    SELECT c.numero,d.nombre,dia,p.nombre,
     (SELECT COUNT(*)
     FROM inscriptos AS i
     WHERE i.numero=c.numero) AS cantidad
     FROM cursos AS c
     join deportes AS d
     ON c.codigodeporte=d.codigo
     join profesores AS p 
     ON p.documento=c.documentoprofesor
  else
    SELECT c.numero,dia,p.nombre,
     (SELECT COUNT(*)
     FROM inscriptos AS i
     WHERE i.numero=c.numero) AS cantidad
     FROM cursos AS c
     join deportes AS d
     ON c.codigodeporte=d.codigo
     join profesores AS p 
     ON p.documento=c.documentoprofesor
     WHERE d.nombre=@deporte;    

 EXEC pa_inscriptos_por_curso;

 EXEC pa_inscriptos_por_curso 'tenis';

 EXEC pa_inscriptos_por_curso 'voley';

 EXEC sp_depends socios;

 EXEC sp_depends profesores;

 EXEC sp_depends cursos;

 EXEC sp_depends deportes;

 EXEC sp_depends inscriptos;

 EXEC sp_depends pa_documentovalido;

 EXEC sp_depends pa_inscriptos;

 EXEC sp_depends pa_deportediavalido;

 EXEC sp_depends pa_ingreso;

 EXEC sp_depends pa_profesor;

 EXEC sp_depends pa_inscriptos_por_curso;

 --———————————————————————————————————————[ Ejercicio #135 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;

 CREATE TABLE empleados(
  documento char(8) not null,
  nombre varchar(30),
  fechaingreso datetime,
  mail varchar(50),
  telefono varchar(12)
 );

 INSERT INTO empleados VALUES('22222222', 'Ana Acosta','1985/10/10','anaacosta@gmail.com','4556677');
 INSERT INTO empleados VALUES('23333333', 'Bernardo Bustos', '1986/02/15',null,'4558877');
 INSERT INTO empleados VALUES('24444444', 'Carlos Caseros','1999/12/02',null,null);
 INSERT INTO empleados VALUES('25555555', 'Diana Dominguez',null,null,'4252525');

 IF object_id('dbo.f_fechaCadena') is not null
  DROP function dbo.f_fechaCadena;

 CREATE function f_fechaCadena
 (@fecha varchar(25))
  returns varchar(25)
  AS
  BEGIN
    declare @nombre varchar(25)
    SET @nombre='Fecha inválida'   
    IF (isdate(@fecha)=1)
    BEGIN
      SET @fecha=cast(@fecha AS datetime)
      SET @nombre=
      case datename(month,@fecha)
       when 'January' then 'Enero'
       when 'February' then 'Febrero'
       when 'March' then 'Marzo'
       when 'April' then 'Abril'
       when 'May' then 'Mayo'
       when 'June' then 'Junio'
       when 'July' then 'Julio'
       when 'August' then 'Agosto'
       when 'September' then 'Setiembre'
       when 'October' then 'Octubre'
       when 'November' then 'Noviembre'
       when 'December' then 'Diciembre'
      END--case
      SET @nombre=rtrim(cast(datepart(day,@fecha) AS char(2)))+' de '+@nombre
      SET @nombre=@nombre+' de '+ rtrim(cast(datepart(year,@fecha)AS char(4)))
    END--si es una fecha válida
    return @nombre
 END;

 SELECT nombre, dbo.f_fechaCadena(fechaingreso) AS ingreso FROM empleados;

 SELECT dbo.f_fechaCadena(getdate());

 --———————————————————————————————————————[ Ejercicio #136 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros; 

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2)
 );

 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',15);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta',10);
 INSERT INTO libros VALUES('El aleph','Borges','Emece',25);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Siglo XXI',55);
 INSERT INTO libros VALUES('Alicia en el pais','Lewis Carroll','Paidos',35);
 INSERT INTO libros VALUES('Matematica estas ahi','Paenza','Nuevo siglo',25);

 IF object_id('f_ofertas') is not null
  DROP function f_ofertas; 

 CREATE function f_ofertas
 (@minimo decimal(6,2)
 )
 returns @ofertas TABLE-- nombre de la tabla
 --formato de la tabla
 (codigo int,
  titulo varchar(40),
  autor varchar(30),
  precio decimal(6,2)
 )
 AS
 BEGIN
   INSERT @ofertas
    SELECT codigo,titulo,autor,precio
    FROM libros
    WHERE precio<@minimo
   return
 END;

 SELECT *FROM f_ofertas(30);

 SELECT l.titulo,l.autor,l.editorial
  FROM libros AS l
  join dbo.f_ofertas(25) AS o
  ON l.codigo=o.codigo
  WHERE l.autor='Richard Bach';

 SELECT titulo,precio FROM f_ofertas(40)
  WHERE autor like '%B%';

 IF object_id('f_listadolibros') is not null
  DROP function f_listadolibros; 

 CREATE function f_listadolibros
 (@opcion varchar(10)
 )
 returns @listado TABLE
 (titulo varchar(40),
 detalles varchar(60)
 )
 AS 
 BEGIN
  IF @opcion not in ('autor','editorial')
    SET @opcion='autor'
  IF @opcion='editorial'
   INSERT @listado 
    SELECT titulo,
   (editorial+'-'+autor) FROM libros
   order by 2
  else
    IF @opcion='autor'
     INSERT @listado
     SELECT titulo,
     (autor+'-'+editorial) FROM libros  
     order by 2
  return
END;

 SELECT *FROM dbo.f_listadolibros('autor');

 SELECT *FROM dbo.f_listadolibros('editorial');

 SELECT *FROM dbo.f_listadolibros('precio');

 --———————————————————————————————————————[ Ejercicio #137 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros
 (
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20)
 );

 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta');
 INSERT INTO libros VALUES('El aleph','Borges','Emece');
 INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta');
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Nuevo siglo');
 INSERT INTO libros VALUES('Matematica estas ahi','Paenza','Nuevo siglo');

 IF object_id('f_libros') is not null
  DROP function f_libros;

 CREATE function f_libros
 (@autor varchar(30)='Borges')
 returns TABLE
 AS
 return 
 (
  SELECT titulo,editorial
  FROM libros
  WHERE autor like '%'+@autor+'%'
 );

 SELECT *FROM f_libros('Bach');

 IF object_id('f_libros_autoreditorial') is not null
  DROP function f_libros_autoreditorial;

 CREATE function f_libros_autoreditorial
 (@autor varchar(30)='Borges',
 @editorial varchar(20)='Emece')
 returns TABLE
 AS
 return 
 (
  SELECT titulo,autor,editorial
  FROM libros
  WHERE autor like '%'+@autor+'%' and
  editorial like '%'+@editorial+'%'
 );

 SELECT *FROM f_libros_autoreditorial('','Nuevo siglo');

 SELECT *FROM f_libros_autoreditorial(default,default);

 --———————————————————————————————————————[ Ejercicio #138 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros
 (
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20)
 );

 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta');
 INSERT INTO libros VALUES('El aleph','Borges','Emece');
 INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta');
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Nuevo siglo');
 INSERT INTO libros VALUES('Matematica estas ahi','Paenza','Nuevo siglo');

 IF object_id('f_libros') is not null
  DROP function f_libros;

 CREATE function f_libros
 (@autor varchar(30)='Borges')
 returns TABLE
 AS
 return 
 (
  SELECT titulo,editorial
  FROM libros
  WHERE autor like '%'+@autor+'%'
 );

 SELECT *FROM f_libros('Bach');

 ALTER function f_libros
 (@autor varchar(30)='Borges')
 returns TABLE
 AS
 return 
 (
  SELECT codigo,titulo,editorial
  FROM libros
  WHERE autor like '%'+@autor+'%'
 );

 SELECT *FROM f_libros('Bach');

 --———————————————————————————————————————[ Ejercicio #142 ]——————————————————————————————————————————————
  IF object_id('ventas') is not null
  DROP TABLE ventas;
 IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  precio decimal(6,2), 
  stock int,
  CONSTRAINT PK_libros PRIMARY KEY(codigo)
 );

 CREATE TABLE ventas(
  numero int IDENTITY,
  fecha datetime,
  codigolibro int not null,
  precio decimal (6,2),
  cantidad int,
  CONSTRAINT PK_ventas PRIMARY KEY(numero),
  CONSTRAINT FK_ventas_codigolibro
   foreign key (codigolibro) references libros(codigo)
 );

 INSERT INTO libros VALUES('Uno','Richard Bach',15,100);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach',18,50);
 INSERT INTO libros VALUES('El aleph','Borges',25,200);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina',45,200);

 CREATE TRIGGER DIS_ventas_insertar
  ON ventas
  FOR INSERT
  AS
   declare @stock int
   SELECT @stock= stock FROM libros
		 join inserted
		 ON inserted.codigolibro=libros.codigo
		 WHERE libros.codigo=inserted.codigolibro
  IF (@stock>=(SELECT cantidad FROM inserted))
    UPDATE libros SET stock=stock-inserted.cantidad
     FROM libros
     join inserted
     ON inserted.codigolibro=libros.codigo
     WHERE codigo=inserted.codigolibro
  else
  BEGIN
    RAISERROR ('Hay menos libros en stock de los solicitados para la venta', 16, 1)
    ROLLBACK TRANSACTION
  END

 INSERT INTO ventas VALUES('2018/04/01',1,15,1);

 SELECT *FROM ventas;
 SELECT *FROM libros WHERE codigo=1;

 INSERT INTO ventas VALUES('2018/04/01',2,18,100);

 INSERT INTO ventas VALUES('2018/04/01',5,18,1);

 --———————————————————————————————————————[ Ejercicio #143 ]——————————————————————————————————————————————
  IF object_id('ventas') is not null
  DROP TABLE ventas;
 IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros(
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2), 
  stock int,
  CONSTRAINT PK_libros PRIMARY KEY(codigo)
 );

 CREATE TABLE ventas(
  numero int IDENTITY,
  fecha datetime,
  codigolibro int not null,
  precio decimal (6,2),
  cantidad int,
  CONSTRAINT PK_ventas PRIMARY KEY(numero),
  CONSTRAINT FK_ventas_codigolibro
   foreign key (codigolibro) references libros(codigo)
   ON DELETE no action
 );

 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',15,100);
 INSERT INTO libros VALUES('Ilusiones','Richard Bach','Planeta',18,50);
 INSERT INTO libros VALUES('El aleph','Borges','Emece',25,200);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Emece',45,200);

 INSERT INTO ventas VALUES('2018/01/01',1,15,1);
 INSERT INTO ventas VALUES('2018/01/01',2,18,2);

 CREATE TRIGGER DIS_ventas_borrar
  ON ventas
  FOR DELETE 
 AS
   UPDATE libros SET stock= libros.stock+deleted.cantidad
   FROM libros
   join deleted
   ON deleted.codigolibro=libros.codigo;

 DELETE FROM ventas WHERE numero=2; 

 SELECT *FROM libros WHERE codigo=2;

 SELECT *FROM ventas;

 CREATE TRIGGER DIS_libros_borrar
  ON libros
  FOR DELETE
  AS
   IF (SELECT COUNT(*) FROM deleted) > 1
   BEGIN
    RAISERROR('No puede eliminar más de un libro',16,1)
    ROLLBACK TRANSACTION
   END;

 DELETE FROM libros WHERE editorial='Emece';

 DELETE FROM libros WHERE codigo=4;

 SELECT *FROM libros;

 --———————————————————————————————————————[ Ejercicio #144 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros
 (
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2), 
  stock int,
  CONSTRAINT PK_libros PRIMARY KEY(codigo)
 );

 INSERT INTO libros VALUES('Uno','Richard Bach','Planeta',15,100);
 INSERT INTO libros VALUES('Alicia en el pais...','Lewis Carroll','Planeta',18,50);
 INSERT INTO libros VALUES('El aleph','Borges','Emece',25,200);
 INSERT INTO libros VALUES('Aprenda PHP','Mario Molina','Nuevo siglo',45,200);

 CREATE TRIGGER DIS_libros_actualizar
  ON libros
  FOR UPDATE
  AS
    RAISERROR('Los datos de la tabla "libros" no pueden modificarse', 10, 1)
    ROLLBACK TRANSACTION;

 UPDATE libros SET titulo='Alicia en el pais de las maravillas' WHERE codigo=2;

 DROP TRIGGER DIS_libros_actualizar;

 CREATE TRIGGER DIS_libros_actualizar_precio
  ON libros
  FOR UPDATE
  AS
   IF UPDATE(precio)
   BEGIN
    RAISERROR('El precio de un libro no puede modificarse.', 10, 1)
    ROLLBACK TRANSACTION
   END;

 UPDATE libros SET precio=30 WHERE codigo=2;

 UPDATE libros SET titulo='Alicia en el pais de las maravillas' WHERE codigo=2;

 SELECT *FROM libros;

 UPDATE libros SET precio=30,editorial='Emece' WHERE codigo=1;

 SELECT *FROM libros;

 DROP TRIGGER DIS_libros_actualizar_precio;

 CREATE TRIGGER DIS_libros_actualizar2
  ON libros
  FOR UPDATE
  AS
   IF (UPDATE(titulo) or UPDATE(autor) or UPDATE(editorial)) and
    not (UPDATE(precio) or UPDATE(stock))
   BEGIN
    SELECT (d.titulo+'-'+ d.autor+'-'+d.editorial) AS 'registro anterior',
    (i.titulo+'-'+ i.autor+'-'+i.editorial) AS 'registro actualizado'
     FROM deleted AS d
     join inserted AS i
     ON d.codigo=i.codigo
   END
   else
   BEGIN
    RAISERROR('El precio y stock no pueden modificarse. La actualización no se realizó.', 10, 1)
    ROLLBACK TRANSACTION
   END;

 UPDATE libros SET editorial='Paidos', autor='Desconocido' WHERE codigo>3;

 UPDATE libros SET editorial='Paidos', precio=30 WHERE codigo>3;

 UPDATE libros SET codigo=9 WHERE codigo>=3; 

 --———————————————————————————————————————[ Ejercicio #145 ]——————————————————————————————————————————————
  IF object_id('inscriptos') is not null
  DROP TABLE inscriptos;
 IF object_id('socios') is not null
  DROP TABLE socios;
 IF object_id('morosos') is not null
  DROP TABLE morosos;

 CREATE TABLE socios
 (
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  CONSTRAINT PK_socios PRIMARY KEY(documento)
 );

 CREATE TABLE inscriptos
 (
  numero int IDENTITY,
  documento char(8) not null,
  deporte varchar(20),
  matricula char(1),
  CONSTRAINT FK_inscriptos_documento
   foreign key (documento)
   references socios(documento),
  CONSTRAINT CK_inscriptos_matricula check (matricula in ('s','n')),
  CONSTRAINT PK_inscriptos PRIMARY KEY(documento,deporte)
 );
 
 CREATE TABLE morosos
 (
  documento char(8) not null
 );

 INSERT INTO socios VALUES('22222222','Ana Acosta','Avellaneda 800');
 INSERT INTO socios VALUES('23333333','Bernardo Bustos','Bulnes 345');
 INSERT INTO socios VALUES('24444444','Carlos Caseros','Colon 382');
 INSERT INTO socios VALUES('25555555','Mariana Morales','Maipu 234');

 INSERT INTO inscriptos VALUES('22222222','tenis','s');
 INSERT INTO inscriptos VALUES('22222222','natacion','n');
 INSERT INTO inscriptos VALUES('23333333','tenis','n');
 INSERT INTO inscriptos VALUES('24444444','futbol','s');
 INSERT INTO inscriptos VALUES('24444444','natacion','s');

 INSERT INTO morosos VALUES('22222222');
 INSERT INTO morosos VALUES('23333333');

 CREATE TRIGGER dis_inscriptos_insert_delete
  ON inscriptos
  FOR INSERT,DELETE
  AS
   IF exists (SELECT *FROM inserted join morosos 
              ON morosos.documento=inserted.documento)
   BEGIN
     RAISERROR('El socio es moroso, no puede inscribirse en otro curso', 16, 1)
     ROLLBACK TRANSACTION
   END
   else
     IF exists (SELECT *FROM deleted join morosos
	        ON morosos.documento=deleted.documento)
     BEGIN
       RAISERROR('El socio debe matriculas, no puede borrarse su inscripcion', 16, 1)
       ROLLBACK TRANSACTION
     END
     else
      IF (SELECT matricula FROM inserted)='n'
       INSERT INTO morosos SELECT documento FROM inserted;

 INSERT INTO inscriptos VALUES('25555555','tenis','s');

 INSERT INTO inscriptos VALUES('25555555','natacion','n');

 SELECT *FROM inscriptos;
 SELECT *FROM morosos;

 INSERT INTO inscriptos VALUES('25555555','basquet','s');

 DELETE inscriptos WHERE numero=4;

 SELECT *FROM inscriptos;

 DELETE inscriptos WHERE numero=6;

 --———————————————————————————————————————[ Ejercicio #146 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;
 IF object_id('clientes') is not null
  DROP TABLE clientes;

 CREATE TABLE empleados
 (
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  CONSTRAINT PK_empleados PRIMARY KEY(documento)
 );

 CREATE TABLE clientes
 (
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  CONSTRAINT PK_clientes PRIMARY KEY(documento)
 );

 IF object_id('vista_empleados_clientes') is not null
  DROP VIEW vista_empleados_clientes;

 CREATE VIEW vista_empleados_clientes
 AS
  SELECT documento,nombre, domicilio, 'empleado' AS condicion FROM empleados
  union
   SELECT documento,nombre, domicilio,'cliente' FROM clientes;

 CREATE TRIGGER DIS_empl_clie_insertar
  ON vista_empleados_clientes
  instead of INSERT
  AS
    INSERT INTO empleados 
     SELECT documento,nombre,domicilio
     FROM inserted WHERE condicion='empleado'

    INSERT INTO clientes
     SELECT documento,nombre,domicilio
     FROM inserted WHERE condicion='cliente';

 INSERT INTO vista_empleados_clientes VALUES('22222222','Ana Acosta', 'Avellaneda 345','empleado');
 INSERT INTO vista_empleados_clientes VALUES('23333333','Bernardo Bustos', 'Bulnes 587','cliente');

 SELECT *FROM empleados;
 SELECT *FROM clientes;

 CREATE TRIGGER DIS_empl_clie_actualizar
  ON vista_empleados_clientes
  instead of UPDATE
  AS
   declare @condicion varchar(10)
   SET @condicion = (SELECT condicion FROM inserted)
   IF UPDATE(documento)
   BEGIN
    RAISERROR('Los documentos no pueden modificarse', 10, 1)
    ROLLBACK TRANSACTION
   END
   else
   BEGIN
    IF @condicion ='empleado'
    BEGIN
     UPDATE empleados SET empleados.nombre=inserted.nombre, empleados.domicilio=inserted.domicilio
     FROM empleados
     join inserted
     ON empleados.documento=inserted.documento
    END
    else
     IF @condicion ='cliente'
     BEGIN
      UPDATE clientes SET clientes.nombre=inserted.nombre, clientes.domicilio=inserted.domicilio
      FROM clientes
      join inserted
      ON clientes.documento=inserted.documento
     END
   END;

 UPDATE vista_empleados_clientes SET nombre= 'Ana Maria Acosta' WHERE documento='22222222';

 SELECT *FROM empleados;

 UPDATE vista_empleados_clientes SET domicilio='Bulnes 1234' WHERE documento='23333333';

 SELECT *FROM clientes;

 --———————————————————————————————————————[ Ejercicio #149 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;

 CREATE TABLE empleados
 (
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  CONSTRAINT PK_empleados PRIMARY KEY(documento),
 );

 INSERT INTO empleados VALUES('22000000','Ana Acosta','Avellaneda 56');
 INSERT INTO empleados VALUES('23000000','Bernardo Bustos','Bulnes 188');
 INSERT INTO empleados VALUES('24000000','Carlos Caseres','Caseros 364');
 INSERT INTO empleados VALUES('25555555','Diana Duarte','Colon 1234');
 INSERT INTO empleados VALUES('26666666','Diana Duarte','Colon 897');
 INSERT INTO empleados VALUES('27777777','Matilda Morales','Colon 542');

 CREATE TRIGGER dis_empleados_borrar
  ON empleados
  FOR DELETE
 AS
  IF (SELECT COUNT(*) FROM deleted)>1
  BEGIN
    RAISERROR('No puede eliminar más de un 1 empleado', 16, 1)
    ROLLBACK TRANSACTION
  END;

 DELETE FROM empleados WHERE documento ='22000000';

 DELETE FROM empleados WHERE documento like '2%';

 ALTER TRIGGER dis_empleados_borrar
  ON empleados
  FOR DELETE
  AS 
   IF (SELECT COUNT(*) FROM deleted)>3--antes era 1
   BEGIN
    RAISERROR('No puede borrar más de 3 empleados',16, 1)
    ROLLBACK TRANSACTION
   END;

 DELETE FROM empleados WHERE documento like '2%';

 DELETE FROM empleados WHERE domicilio like 'Colon%';

 --———————————————————————————————————————[ Ejercicio #150 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;

 CREATE TABLE empleados
 (
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  seccion varchar(20),
  CONSTRAINT PK_empleados PRIMARY KEY(documento),
 );

 INSERT INTO empleados VALUES('22222222','Ana Acosta','Bulnes 56','Secretaria');
 INSERT INTO empleados VALUES('23333333','Bernardo Bustos','Bulnes 188','Contaduria');
 INSERT INTO empleados VALUES('24444444','Carlos Caseres','Caseros 364','Sistemas');
 INSERT INTO empleados VALUES('25555555','Diana Duarte','Colon 1234','Sistemas');
 INSERT INTO empleados VALUES('26666666','Diana Duarte','Colon 897','Sistemas');
 INSERT INTO empleados VALUES('27777777','Matilda Morales','Colon 542','Gerencia');

 CREATE TRIGGER dis_empleados_borrar
  ON empleados
  FOR DELETE
 AS
  IF (SELECT COUNT(*) FROM deleted)>1
  BEGIN
    RAISERROR('No puede eliminar más de un 1 empleado', 16, 1)
    ROLLBACK TRANSACTION
  END;

 CREATE TRIGGER dis_empleados_actualizar
  ON empleados
  FOR UPDATE
 AS
  IF UPDATE(documento)
  BEGIN
    RAISERROR('No puede modificar el documento de los empleados', 16, 1)
    ROLLBACK TRANSACTION
  END;

 CREATE TRIGGER dis_empleados_insertar
  ON empleados
  FOR INSERT
 AS
  IF (SELECT seccion FROM inserted)='Gerencia'
  BEGIN
    RAISERROR('No puede ingresar empleados en la sección "Gerencia".', 16, 1)
    ROLLBACK TRANSACTION
  END;

 DELETE FROM empleados WHERE domicilio like 'Bulnes%';

  ALTER TABLE empleados
  DISABLE TRIGGER dis_empleados_borrar;

 DELETE FROM empleados WHERE domicilio like 'Bulnes%';

 SELECT *FROM empleados;

 UPDATE empleados SET documento='23030303' WHERE documento='23333333';

 INSERT INTO empleados VALUES('28888888','Juan Juarez','Jamaica 123','Gerencia');

 ALTER TABLE empleados
  DISABLE TRIGGER dis_empleados_actualizar, dis_empleados_insertar;

 UPDATE empleados SET documento='20000444' WHERE documento='24444444';

 SELECT *FROM empleados;

 INSERT INTO empleados VALUES('28888888','Juan Juarez','Jamaica 123','Gerencia');

 SELECT *FROM empleados;

 ALTER TABLE empleados
  ENABLE TRIGGER all;

 UPDATE empleados SET documento='30000000' WHERE documento='28888888';

 --———————————————————————————————————————[ Ejercicio #151 ]——————————————————————————————————————————————
  IF object_id('empleados') is not null
  DROP TABLE empleados;

 CREATE TABLE empleados
 (
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  seccion varchar(20),
  CONSTRAINT PK_empleados PRIMARY KEY(documento),
 );

 CREATE TRIGGER DIS_empleados_insertar
  ON empleados
  WITH ENCRYPTION
  AFTER INSERT
 AS
  IF (SELECT seccion FROM inserted)='Gerencia'
  BEGIN
    RAISERROR('No puede ingresar empleados en la sección "Gerencia".', 16, 1)
    ROLLBACK TRANSACTION
  END;

 sp_helptext dis_empleados_insertar;

 ALTER TRIGGER dis_empleados_insertar
  ON empleados
  AFTER INSERT
 AS
  IF (SELECT seccion FROM inserted)='Gerencia'
  BEGIN
    RAISERROR('No puede ingresar empleados en la sección "Gerencia".', 16, 1)
    ROLLBACK TRANSACTION
  END;

 sp_helptext dis_empleados_insertar;

 --———————————————————————————————————————[ Ejercicio #152 ]——————————————————————————————————————————————
  IF object_id('libros') is not null
  DROP TABLE libros;

 CREATE TABLE libros
 (
  codigo int IDENTITY,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  stock int,
  CONSTRAINT pk_libros PRIMARY KEY (codigo)
 ); 

 INSERT INTO libros VALUES('Uno','R. Bach','Planeta',50);
 INSERT INTO libros VALUES('Ilusiones','R. Bach','Planeta',15);
 INSERT INTO libros VALUES('El aleph','Borges','Emece',10);
 INSERT INTO libros VALUES('Aprenda PHP','M. Molina','Nuevo siglo',5);

 CREATE TRIGGER dis_libros_actualizar
 ON libros
 AFTER UPDATE
 AS
  IF exists (SELECT *FROM inserted WHERE stock<0)
  BEGIN
   UPDATE libros SET stock=deleted.stock
   FROM libros
   join deleted
   ON deleted.codigo=libros.codigo
   join inserted
   ON inserted.codigo=libros.codigo
   WHERE inserted.stock<0
  END;

 UPDATE libros SET stock=stock-15;

 SELECT *FROM libros;