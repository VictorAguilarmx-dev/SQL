USE jugos_ventas;

-- Consulta de toda la tabla por columnas
SELECT 
    NOMBRE, DIRECCION_1, DIRECCION_2, BARRIO, CIUDAD, ESTADO,
CP, FECHA_DE_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO, VOLUMEN_DE_COMPRA, PRIMERA_COMPRA 
FROM tabla_de_clientes;

-- Consulta de toda la tabla
SELECT * FROM tabla_de_clientes;

-- Consulta por columnas
SELECT
DNI, NOMBRE
FROM 
    tabla_de_clientes;

-- Consulta con alias
SELECT 
    DNI AS IDENTIFICACIÓN,
    NOMBRE AS CLIENTE
FROM tabla_de_clientes;

-- Consulta de toda la tabla
SELECT * FROM tabla_de_productos;

-- Consulta con un valor en específico
SELECT * FROM tabla_de_productos WHERE SABOR = 'uva';

SELECT * FROM tabla_de_productos WHERE SABOR = 'mango';

SELECT * FROM tabla_de_productos WHERE ENVASE = 'Botella PET';

-- Consulta con operadores de orden
SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA > 16;

SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA <= 17;

-- Consulta con valores en un rango
SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA BETWEEN 16 AND 16.02;