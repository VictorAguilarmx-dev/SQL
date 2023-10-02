USE jugos_ventas;

SELECT * FROM 
    tabla_de_productos;

SELECT * FROM 
    tabla_de_productos
WHERE 
    SABOR = 'mango' AND TAMANO = '470 ml';

SELECT * FROM 
    tabla_de_productos
WHERE 
    SABOR = 'mango' OR TAMANO = '470 ml';

SELECT * FROM 
    tabla_de_productos
WHERE 
    NOT(SABOR = 'mango' AND TAMANO = '470 ml');

SELECT * FROM 
    tabla_de_productos
WHERE 
    SABOR = 'mango' AND NOT(TAMANO = '470 ml');

SELECT * FROM 
    tabla_de_productos
WHERE 
    SABOR IN ('mango', 'uva');

SELECT * FROM 
    tabla_de_productos
WHERE 
    SABOR = 'mango' OR SABOR = 'uva';

SELECT * FROM
    tabla_de_clientes
WHERE
    CIUDAD IN ('Ciudad de México', 'Guadalajara');

SELECT * FROM
    tabla_de_clientes
WHERE
    CIUDAD IN ('Ciudad de México', 'Guadalajara')
    AND EDAD > 21;

SELECT * FROM
    tabla_de_clientes
WHERE
    CIUDAD IN ('Ciudad de México', 'Guadalajara')
    AND EDAD BETWEEN 20 AND 25;
