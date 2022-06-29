/*Crear la base de datos directorio*/
CREATE DATABASE accesos_empleados;

/*Crear la tabla*/
CREATE TABLE trabajador(
	documento nvarchar(30) NOT NULL,
	primerNombre nvarchar(30) NOT NULL,
	segundoNombre nvarchar(50) NOT NULL,
	primerApellido nvarchar(50) NOT NULL,
	segundoApellido nvarchar(50) NOT NULL,
	edad nvarchar(50) NOT NULL,
	telefono nvarchar(50) NOT NULL,
	primary key(documento)
);

/*Crear la tabla*/
CREATE TABLE accesos(
	codigo_acceso int NOT NULL identity,
	fecha_ingreso date NOT NULL,
	hora_ingreso time NOT NULL,
	fecha_Salida date,
	hora_Salida time,
	fk_trabajador nvarchar(30) NOT NULL,
	primary key(codigo_acceso),
	FOREIGN KEY (fk_trabajador) REFERENCES trabajador(documento)
);

INSERT INTO accesos (fecha_ingreso, hora_ingreso, fecha_Salida, hora_Salida, fk_trabajador) VALUES('2022-06-28','8:52','2022-106-28','10:30');
INSERT INTO accesos (fecha_ingreso, hora_ingreso, fk_trabajador) VALUES('2022-06-28','8:52:00','1000366173');
SELECT * FROM accesos WHERE fk_trabajador = '100366173' AND fecha_Salida IS NULL;
INSERT INTO trabajador VALUES('100366173','sebastian','','pabon','lopez','21','3223142488');