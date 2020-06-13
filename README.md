# Tarea4_BD_JoseLuis

CREATE DATABASE Tarea4_BD_JoseLuis
GO
 --—————————————————————————————————————————————————————————————————————————————————————
USE Tarea4_BD_JoseLuis
GO
 --—————————————————————————————————————————————————————————————————————————————————————
if object_id('usuarios') is not null
DROP TABLE usuarios;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE usuarios
(
  nombre varchar(30),
  clave varchar(10)
);

exec sp_tables @table_owner='dbo';
exec sp_columns usuarios;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE usuarios
(
	nombre varchar(30),
	clave varchar(10)
);

DROP TABLE usuarios;

exec sp_tables @table_owner='dbo';

if object_id('usuarios') is not null

DROP TABLE usuarios;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE usuarios
(
	nombre varchar(30),
	clave varchar(10)
);
 --—————————————————————————————————————————————————————————————————————————————————————
INSERT INTO usuarios (nombre, clave) VALUES ('Mariano','payaso');

SELECT * FROM usuarios;

INSERT INTO usuarios (clave, nombre) VALUES ('River','Juan');

SELECT * FROM usuarios;

INSERT INTO usuarios (nombre,clave) VALUES ('Boca','Luis');

SELECT * FROM usuarios;

if object_id('libros') is not null
DROP TABLE libros;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE libros
(
	titulo varchar(20),
	autor varchar(15),
	editorial varchar(10),
	precio float,
	cantidad integer
);
 --—————————————————————————————————————————————————————————————————————————————————————
exec sp_columns libros;

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

if object_id('libros') is not null
DROP TABLE libros;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE libros
(
	titulo varchar(50),
	autor varchar(40),
	editorial varchar(20),
	precio float,
	cantidad integer
);

exec sp_columns libros;

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

if object_id('usuarios') is not null
	DROP TABLE usuarios;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE usuarios
(
	nombre varchar(30),
	clave varchar(10)
);

exec sp_columns usuarios;

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

if object_id('libros') is not null
	DROP TABLE libros;
 --—————————————————————————————————————————————————————————————————————————————————————
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

if object_id('usuarios') is not null
	DROP TABLE usuarios;
 --—————————————————————————————————————————————————————————————————————————————————————
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

if object_id('usuarios') is not null
	DROP TABLE usuarios;
 --—————————————————————————————————————————————————————————————————————————————————————
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

if object_id('libros') is not null
	DROP TABLE libros;
 --—————————————————————————————————————————————————————————————————————————————————————
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

if object_id('libros') is not null
	DROP TABLE libros;
 --—————————————————————————————————————————————————————————————————————————————————————
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

exec sp_columns libros;

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

if object_id('usuarios') is not null
	DROP TABLE usuarios;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE usuarios
(
	nombre varchar(20),
	clave varchar(10),
	 primary key(nombre)
);

exec sp_columns usuarios;

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

if object_id('libros') is not null
	DROP TABLE libros;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE libros
(
  codigo int identity,
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
 --—————————————————————————————————————————————————————————————————————————————————————
exec sp_columns libros;

DELETE FROM libros
	WHERE autor='Lewis Carroll';

INSERT INTO libros (titulo, autor, editorial, precio)
	 VALUES('Martin Fierro','Jose Hernandez','Paidos',25); 

SELECT * FROM libros;

if object_id('libros') is not null
	DROP TABLE libros;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE libros
(
	codigo int identity(100,2),
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

SET identity_insert libros on;

INSERT INTO libros (codigo,titulo,autor)
	VALUES (100,'Matematica estas ahi','Paenza');

INSERT INTO libros (codigo,titulo,autor)
	VALUES (1,'Ilusiones','Richard Bach');

INSERT INTO libros (titulo,autor)
	VALUES ('Uno','Richard Bach');

SET identity_insert libros off;

INSERT INTO libros (codigo,titulo,autor)
	VALUES (300,'Uno','Richard Bach');

if object_id('libros') is not null
	DROP TABLE libros;
 --—————————————————————————————————————————————————————————————————————————————————————
CREATE TABLE libros
(
	codigo int identity,
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

truncate table libros;

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
