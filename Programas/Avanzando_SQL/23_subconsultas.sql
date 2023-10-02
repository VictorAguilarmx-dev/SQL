USE jugos_ventas;

-- Vemos los diferentes barrios en donde se encuentran los vendedores
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- Vemos todos los clientes que se encuentran en los barrios Condesa, Del VAlle, Contadero y Oblatos.
SELECT * FROM tabla_de_clientes
WHERE BARRIO IN ('Condesa', 'Del Valle', 'Contadero', 'Oblatos');

-- Obtenemos los clientes que se encuentran en los diferentes barrios de los vendedores
SELECT * FROM tabla_de_clientes
WHERE BARRIO IN (SELECT DISTINCT BARRIO FROM tabla_de_vendedores);

-- Vemos el envase y el precio maximo de los productos y los agrupamos por el envase
SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO 
FROM tabla_de_productos
GROUP BY ENVASE;

SELECT X.ENVASE, X.PRECIO_MAXIMO FROM (
    SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO 
FROM tabla_de_productos
GROUP BY ENVASE
) X
WHERE X.PRECIO_MAXIMO > 10;