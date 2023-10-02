USE jugos_ventas;

SELECT LTRIM("    MySQL es fácil") AS RESULTADO;

SELECT RTRIM("MySQL es fácil    ") AS RESULTADO;

SELECT TRIM("    MySQL es fácil    ") AS RESULTADO;

-- Cocatenamos una cantidad de strings
SELECT CONCAT("MySQL es fácil,", " no lo crees?") AS RESULTADO;

-- Transformamos un strings a letras mayúsculas
SELECT UPPER("mysql es una base de datos interesante.") AS RESULTADO;

-- Transformamos un strings a letras minúsculas
SELECT LOWER("MYSQL ES UNA BASE DE DATOS INTERESANTE.") AS RESULTADO;

-- Seleccionamos una parte de un string desde un caracter hasta una longitud
SELECT SUBSTRING("mysql es una base de datos interesante.", 14,4) AS RESULTADO;

-- Concatenamos columnas de una tabla en una nueva columna
SELECT CONCAT(NOMBRE, " ", DNI) AS RESULTADO FROM tabla_de_clientes;