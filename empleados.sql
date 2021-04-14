
DROP DATABASE IF EXISTS Empleados;
CREATE DATABASE Empleados CHARACTER SET utf8mb4; 
USE Empleados;

CREATE TABLE Departamento (
codigo INT PRIMARY KEY, 
nombre VARCHAR(100) NOT NULL,
presupuesto DOUBLE NOT NULL,
gastos DOUBLE NOT NULL
);
CREATE TABLE Empleado (
codigo INT PRIMARY KEY, 
nif VARCHAR(9) NOT NULL UNIQUE,
nombre VARCHAR(100) NOT NULL, 
apellido1 VARCHAR(100) NOT NULL,
apellido2 VARCHAR(100), 
codigo_departamento INT,
FOREIGN KEY (codigo_departamento) REFERENCES Departamento(codigo)
);

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000); 
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000); 
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamento VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamento VALUES(7, 'Publicidad', 0, 1000);

INSERT INTO empleado VALUES(1, '32481596F', 'Aar�n', 'Rivero', 'G�mez', 1);
INSERT INTO empleado VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'D�az', 2);
INSERT INTO empleado VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES(4, '77705545E', 'Adri�n', 'Su�rez', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203C', 'Marcos', 'Loyola', 'M�ndez', 5); 
INSERT INTO empleado VALUES(6, '38382980M', 'Mar�a', 'Santana', 'Moreno', 1); 
INSERT INTO empleado VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES(9, '56399183D', 'Juan', 'G�mez', 'L�pez', 2);
INSERT INTO empleado VALUES(10, '46384486H', 'Diego','Flores', 'Salas', 5); 
INSERT INTO empleado VALUES(11, '67389283A', 'Marta','Herrera', 'Gil', 1); 
INSERT INTO empleado VALUES(12, '41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES(13, '82635162B', 'Juan Antonio','S�ez', 'Guerrero', NULL);
