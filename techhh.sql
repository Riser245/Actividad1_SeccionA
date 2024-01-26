CREATE DATABASE Tech;
USE Tech;

Drop database Tech

create table Cargo(
id_cargo INT AUTO_INCREMENT PRIMARY KEY,
cargo VARCHAR(40),
descripcion VARCHAR(40)
); 



create table Empleado(
id_empleado INT AUTO_INCREMENT PRIMARY KEY,
id_cargo INT Not Null,
id_departamento INT Not Null,
nombre_empleado varchar (40),
apellido_empleado varchar (40),
salario_empleado varchar (40),
fecha_inicio date,
Foreign Key (id_cargo) REFERENCES Cargo(id_cargo),
Foreign Key (id_departamento) REFERENCES Departamento(id_departamento)
); 

create table Asignaciones(
id_Asignacion INT AUTO_INCREMENT PRIMARY KEY,
id_empleado INT,
id_proyecto INT, 
descripcion VARCHAR(40),
Foreign Key (id_empleado) REFERENCES Empleado(id_empleado),
Foreign Key (id_proyecto) REFERENCES Proyecto(id_proyecto)
); 


create table Departamento(
id_departamento INT AUTO_INCREMENT PRIMARY KEY,
id_empleado INT,
descripcion VARCHAR(40)
); 




create table Proyecto(
id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
id_empleado INT,
descripcion VARCHAR(40),
Foreign Key (id_empleado) REFERENCES Empleado(id_empleado)
); 