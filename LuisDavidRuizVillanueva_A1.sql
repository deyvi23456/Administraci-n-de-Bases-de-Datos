Use AkirasBoutiques

CREATE TABLE Empleados (
    IdEmpleado INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(200),
    Telefono VARCHAR(15),
    Edad INT,
    Correo VARCHAR(100),
    Contrasena VARCHAR(100),
    IdSucursal INT
);

INSERT INTO Empleados
(Nombre, Direccion, Telefono, Edad, Correo, Contrasena, IdSucursal)
VALUES

-- Sucursal 1
('Sonia Alejandra Fernández Moreno','Calle Roble #507','4447831225',35,'sonia@akira.com','Akira123',1),
('Juan Pérez López','Calle Morelos 100','4441112233',28,'juan.perez@akira.com','Juan123',1),
('María González Ruiz','Av. Universidad 220','4441112234',24,'maria.gonzalez@akira.com','Maria123',1),
('Carlos Hernández Torres','Calle Hidalgo 56','4441112235',31,'carlos.hernandez@akira.com','Carlos123',1),
('Ana Martínez Silva','Calle Juárez 89','4441112236',26,'ana.martinez@akira.com','Ana123',1),
('Luis Ramírez Castro','Av. Carranza 412','4441112237',29,'luis.ramirez@akira.com','Luis123',1),

-- Sucursal 2
('Fernando Calderón Ayala','Dr. Jesús Díaz de León 438','4493780921',42,'fernando@akira.com','Akira123',2),
('Paola Sánchez Moreno','Av. Convención 100','4491112233',25,'paola.sanchez@akira.com','Paola123',2),
('Jorge Medina Flores','Calle Colón 210','4491112234',30,'jorge.medina@akira.com','Jorge123',2),
('Karla Navarro Díaz','Av. Madero 320','4491112235',27,'karla.navarro@akira.com','Karla123',2),
('Ricardo Torres Lara','Calle Zaragoza 90','4491112236',33,'ricardo.torres@akira.com','Ricardo123',2),
('Daniela Ruiz Gómez','Av. Independencia 555','4491112237',22,'daniela.ruiz@akira.com','Daniela123',2),

-- Sucursal 3
('Daniela Fernanda Díaz Ordaz','Av. Marina 6204','6692932059',38,'daniela@akira.com','Akira123',3),
('Miguel Valdez Ramos','Av. del Mar 210','6691112233',29,'miguel.valdez@akira.com','Miguel123',3),
('Fernanda López Vega','Calle Gaviotas 88','6691112234',24,'fernanda.lopez@akira.com','Fernanda123',3),
('José Romero Salas','Av. Camarón Sábalo 300','6691112235',31,'jose.romero@akira.com','Jose123',3),
('Patricia Cruz Soto','Calle Bahía 112','6691112236',27,'patricia.cruz@akira.com','Patricia123',3),
('Héctor García Luna','Av. Delfines 505','6691112237',35,'hector.garcia@akira.com','Hector123',3),

-- Sucursal 4
('Mario Alberto Jiménez Salcido','Av. Clouthier 525','3337841230',40,'mario@akira.com','Akira123',4),
('Alejandra Flores Ruiz','Av. Patria 123','3331112233',28,'alejandra.flores@akira.com','Ale123',4),
('Roberto Chávez Díaz','Calle México 400','3331112234',32,'roberto.chavez@akira.com','Roberto123',4),
('Laura Mendoza Torres','Av. Guadalupe 250','3331112235',26,'laura.mendoza@akira.com','Laura123',4),
('Eduardo Castañeda Soto','Calle Libertad 98','3331112236',34,'eduardo.castaneda@akira.com','Eduardo123',4),
('Gabriela Núñez Pérez','Av. Vallarta 780','3331112237',23,'gabriela.nunez@akira.com','Gabriela123',4),

-- Sucursal 5
('Yesenia Guadalupe Campos Rojo','Av. Melchor Ocampo 2528','6143906721',37,'yesenia@akira.com','Akira123',5),
('Arturo Vega Hernández','Av. Tecnológico 145','6141112233',29,'arturo.vega@akira.com','Arturo123',5),
('Natalia Pérez Silva','Calle Segunda 88','6141112234',25,'natalia.perez@akira.com','Natalia123',5),
('Manuel López Ramos','Av. Universidad 340','6141112235',33,'manuel.lopez@akira.com','Manuel123',5),
('Verónica Salazar Díaz','Calle Victoria 67','6141112236',27,'veronica.salazar@akira.com','Veronica123',5),
('Cristian Torres Ruiz','Av. Colón 502','6141112237',24,'cristian.torres@akira.com','Cristian123',5),

-- Sucursal 6
('Tamara Alejandra Bernal Ramos','Calle Constitución 106','6181962954',39,'tamara@akira.com','Akira123',6),
('Omar Reyes Gómez','Av. 20 de Noviembre 111','6181112233',28,'omar.reyes@akira.com','Omar123',6),
('Diana Castillo Flores','Calle Negrete 90','6181112234',26,'diana.castillo@akira.com','Diana123',6),
('Pedro Moreno Salas','Av. Fanny Anitúa 210','6181112235',35,'pedro.moreno@akira.com','Pedro123',6),
('Andrea Vázquez Torres','Calle Juárez 345','6181112236',24,'andrea.vazquez@akira.com','Andrea123',6),
('Marco Antonio León','Av. Laureano Roncal 780','6181112237',31,'marco.leon@akira.com','Marco123',6),

-- Sucursal 7
('Samuel Enrique Barrios Enciso','Av. Hidalgo 338','4929301250',41,'samuel@akira.com','Akira123',7),
('Brenda Ortega Ruiz','Calle Allende 120','4921112233',27,'brenda.ortega@akira.com','Brenda123',7),
('Sergio Navarro Flores','Av. González Ortega 210','4921112234',30,'sergio.navarro@akira.com','Sergio123',7),
('Mónica Herrera Díaz','Calle Tacuba 56','4921112235',25,'monica.herrera@akira.com','Monica123',7),
('Iván Rojas Salcido','Av. Juárez 450','4921112236',34,'ivan.rojas@akira.com','Ivan123',7),
('Claudia Mendoza Vega','Calle Morelos 95','4921112237',29,'claudia.mendoza@akira.com','Claudia123',7);


CREATE TABLE Sucursales (
    IdSucursal INT PRIMARY KEY,
    NombreSucursal VARCHAR(100) NOT NULL,
    Encargado INT,
    Direccion VARCHAR(200),
    Telefono VARCHAR(15),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50)
);

INSERT INTO Sucursales
VALUES
(1,'Akira''s Boutique: Las Mercedes',NULL,
'Calle Roble #507 Fracc. Las Mercedes',
'4447831225','San Luis Potosí','San Luis Potosí'),

(2,'Akira''s Boutique: Obraje',NULL,
'Calle Dr. Jesús Díaz de León #438 Col. Obraje',
'4493780921','Aguascalientes','Aguascalientes'),

(3,'Akira''s Boutique: Galerías Mazatlán',NULL,
'Av. de la Marina #6204 Marina Local 35',
'6692932059','Mazatlán','Sinaloa'),

(4,'Akira''s Boutique: Zapopan',NULL,
'Av. Manuel J. Clouthier 525 Col. Benito Juárez',
'3337841230','Zapopan','Jalisco'),

(5,'Akira''s Boutique: Melchor',NULL,
'Av. Melchor Ocampo #2528 Zona Centro',
'6143906721','Chihuahua','Chihuahua'),

(6,'Akira''s Boutique: Constitución',NULL,
'Calle Constitución #106 Zona Centro',
'6181962954','Durango','Durango'),

(7,'Akira''s Boutique: Centro',NULL,
'Av. Hidalgo #338 Zacatecas Centro',
'4929301250','Zacatecas','Zacatecas');

ALTER TABLE Empleados
ADD CONSTRAINT FK_Empleado_Sucursal
FOREIGN KEY (IdSucursal)
REFERENCES Sucursales(IdSucursal);

ALTER TABLE Sucursales
ADD CONSTRAINT FK_Sucursal_Encargado
FOREIGN KEY (Encargado)
REFERENCES Empleados(IdEmpleado);

UPDATE Sucursales
SET Encargado = 1
WHERE IdSucursal = 1;

UPDATE Sucursales
SET Encargado = 7
WHERE IdSucursal = 2;

UPDATE Sucursales
SET Encargado = 13
WHERE IdSucursal = 3;

UPDATE Sucursales
SET Encargado = 19
WHERE IdSucursal = 4;

UPDATE Sucursales
SET Encargado = 25
WHERE IdSucursal = 5;

UPDATE Sucursales
SET Encargado = 31
WHERE IdSucursal = 6;

UPDATE Sucursales
SET Encargado = 37
WHERE IdSucursal = 7;

/*Mostrar todos los empleados*/
Select * From Empleados

/*Mostrar todas las sucursales*/
Select * From Sucursales

/* Mostrar empleados con su sucursal*/
SELECT
    E.IdEmpleado,
    E.Nombre,
    S.NombreSucursal
FROM Empleados E
INNER JOIN Sucursales S
ON E.IdSucursal = S.IdSucursal;

/*Mostrar sucursal y nombre del encargado*/
SELECT
    S.NombreSucursal,
    E.Nombre AS Encargado,
    S.Ciudad,
    S.Estado
FROM Sucursales S
INNER JOIN Empleados E
ON S.Encargado = E.IdEmpleado;

ALTER TABLE Factura
ADD IdSucursal INT;

ALTER TABLE Factura
ADD CONSTRAINT FK_Factura_Sucursal
FOREIGN KEY (IdSucursal)
REFERENCES Sucursales(IdSucursal);




