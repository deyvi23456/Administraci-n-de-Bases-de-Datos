USE AkirasBoutiques

/*Seleccionar los clientes del año 2021 en base a la fecha de la factura*/
SELECT C.Nombre, C.Apellido, F.Fecha
FROM Cliente C
INNER JOIN Factura F ON C.Id_Cliente = F.Id_Cliente
WHERE YEAR(F.Fecha) = 2021;

/*Seleccionar los clientes de 2022 (hasta el momento) en base a la fecha de la 
factura*/
SELECT C.Nombre, C.Apellido, F.Fecha
FROM Cliente C
INNER JOIN Factura F ON C.Id_Cliente = F.Id_Cliente
WHERE YEAR(F.Fecha) = 2022;

/*Seleccionar los clientes de diciembre de 2021*/
SELECT C.Nombre, C.Apellido, F.Fecha
FROM Cliente C
INNER JOIN Factura F ON C.Id_Cliente = F.Id_Cliente
WHERE YEAR(F.Fecha) = 2021
  AND MONTH(F.Fecha) = 12;


/*Compras de clientes específicos*/
SELECT C.Nombre, C.Apellido, P.Nombre AS Producto,
       D.Cantidad, D.Precio, F.Fecha
FROM Cliente C
INNER JOIN Factura F  ON C.Id_Cliente  = F.Id_Cliente
INNER JOIN Detalle  D  ON F.Id_Detalle  = D.Id_Detalle
INNER JOIN Producto P  ON D.Id_Producto = P.Id_Producto
WHERE 
  (CAST(C.Nombre AS VARCHAR(100)) = 'Valentina Anastasia' AND CAST(C.Apellido AS VARCHAR(100)) = 'Huerta Corral')
  OR (CAST(C.Nombre AS VARCHAR(100)) = 'Zayra Manuela'    AND CAST(C.Apellido AS VARCHAR(100)) = 'Gómez López')
  OR (CAST(C.Nombre AS VARCHAR(100)) = 'Dante Eduardo'    AND CAST(C.Apellido AS VARCHAR(100)) = 'Dolores Meza')
  OR (CAST(C.Nombre AS VARCHAR(100)) = 'Ana Maribel'      AND CAST(C.Apellido AS VARCHAR(100)) = 'Cedillo Núñez')
  OR (CAST(C.Nombre AS VARCHAR(100)) = 'Rodrigo Ismael'   AND CAST(C.Apellido AS VARCHAR(100)) = 'Silva Ugarte');

/*Seleccionar el producto que más ventas ha tenido*/
SELECT TOP 1 CAST(P.Nombre AS VARCHAR(100)) AS Nombre, 
             SUM(D.Cantidad) AS Total_Vendido
FROM Detalle D
INNER JOIN Producto P ON D.Id_Producto = P.Id_Producto
GROUP BY CAST(P.Nombre AS VARCHAR(100))
ORDER BY Total_Vendido DESC;

/*Qué producto tienen más cantidad en stock */
SELECT TOP 1 Nombre, Stock
FROM Producto
ORDER BY Stock DESC;

/*Ordenar, de la más antigua a la más reciente, las compras que ha habido en la tienda*/
SELECT C.Nombre, C.Apellido, P.Nombre AS Producto, F.Fecha
FROM Factura F
INNER JOIN Cliente C  ON F.Id_Cliente  = C.Id_Cliente
INNER JOIN Detalle  D  ON F.Id_Detalle  = D.Id_Detalle
INNER JOIN Producto P  ON D.Id_Producto = P.Id_Producto
ORDER BY F.Fecha ASC;

/*Ordenar alfabéticamente los nombres de todos los clientes de la tienda.*/
SELECT CAST(Nombre AS VARCHAR(100)) AS Nombre, 
       CAST(Apellido AS VARCHAR(100)) AS Apellido
FROM Cliente
ORDER BY CAST(Nombre AS VARCHAR(100)) ASC, 
         CAST(Apellido AS VARCHAR(100)) ASC;

/*Seleccionar cuáles productos pertenecen a cada categoría*/
SELECT CAST(Cat.Nombre AS VARCHAR(100)) AS Categoria, 
       CAST(P.Nombre AS VARCHAR(100)) AS Producto
FROM Producto P
INNER JOIN Categoria Cat ON P.Id_Categoria = Cat.Id_Categoria
WHERE CAST(Cat.Nombre AS VARCHAR(100)) IN ('Falda','Pantalón','Chamarra','Zapatos','Accesorios')
ORDER BY CAST(Cat.Nombre AS VARCHAR(100)), CAST(P.Nombre AS VARCHAR(100));

/*Seleccionar los encargados de las sucursales de la tienda Akira’s Boutique*/

SELECT S.NombreSucursal AS Sucursal, 
       E.Nombre
FROM Sucursales S
INNER JOIN Empleados E ON S.Encargado = E.IdEmpleado;

/*Seleccionar los empleados que trabajan en la sucursal de Akira’s Boutique: Constitución*/
SELECT E.IdEmpleado,E.Nombre
FROM Empleados E
INNER JOIN Sucursales S ON E.IdSucursal = S.IdSucursal
WHERE E.IdEmpleado= '31';

/*¿Qué clientes son mayores de 30 años? */
SELECT Nombre, Apellido,
       DATEDIFF(YEAR, Fec_Nac, GETDATE()) AS Edad
FROM Cliente
WHERE DATEDIFF(YEAR, Fec_Nac, GETDATE()) > 30
ORDER BY Edad DESC;

