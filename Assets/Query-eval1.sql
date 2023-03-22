create database db_prueba;

use db_prueba;

CREATE TABLE Puesto (
IdPuesto INT PRIMARY KEY NOT NULL,
NombrePuesto VARCHAR(40) NOT NULL
)

insert Puesto  values (1, 'Jefe de centro de Computo');
insert Puesto  values (2, 'Jefe del Área Verificada');

CREATE TABLE Usuarios (
IdUsuario INT IDENTITY(1,1) PRIMARY KEY,
Usuario VARCHAR(20) NOT NULL,
Contrasena VARCHAR(20) NOT NULL,
IdPuesto INT FOREIGN KEY REFERENCES Puesto(IdPuesto)
);

CREATE TABLE Reporte (
IdReporte INT IDENTITY(1,1) PRIMARY KEY,
Equipo VARCHAR(50) NOT NULL,
Accion VARCHAR(100) NOT NULL,
Atencion VARCHAR(50) NOT NULL
)

INSERT INTO Reporte (Equipo, Accion, Atencion) VALUES ('testeq', 'testaccion', 'testaten');

SELECT * from Reporte;

SELECT Usuario from Usuarios;

INSERT INTO Usuarios (Usuario, Contrasena, IdPuesto) 
VALUES ('HadidGar', 'passwordsample', 1);

INSERT INTO Usuarios (Usuario, Contrasena, IdPuesto) 
VALUES ('JuanSan', 'passwordsample', 2);


SELECT * FROM Usuarios;