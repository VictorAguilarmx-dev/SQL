USE jugos_ventas;

-- Operaciones matemáticas
SELECT (34+346-67)/15 * 29 AS RESULTADO;

-- Función techo
SELECT CEILING (23.1222);

-- Función piso
SELECT FLOOR (23.999999);

-- Número aleatorio
SELECT RAND() AS RESULTADO;

-- Redondeo entre dos números a dos decimales
SELECT ROUND(254.545,2);

-- Redondeo entre dos números a un decimal
SELECT ROUND(254.545,1);

SELECT NUMERO, CANTIDAD, PRECIO, 
CANTIDAD * PRECIO AS FACTURACIÓN FROM items_facturas;

SELECT NUMERO, CANTIDAD, PRECIO, 
ROUND(CANTIDAD * PRECIO,2) AS FACTURACIÓN FROM items_facturas;