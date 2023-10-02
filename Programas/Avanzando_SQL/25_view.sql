USE jugos_ventas;

-- El siguiente comando muestra los envases por precio maximo y los agrupa por el tipo de envase
SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO
FROM tabla_de_productos
GROUP BY ENVASE;

-- Creamos o pedimos que reemplace el view con el comando anterior
CREATE VIEW ‘vw_envases_grandes’
AS SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE;

-- Hacemos una consulta sobre la view creada
SELECT X.ENVASE, X.PRECIO_MAXIMO
FROM vw_envases_grandes as X
WHERE PRECIO_MAXIMO >= 10;

-- Hacemos un inner join con la view
SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA, B.PRECIO_MAXIMO
FROM tabla_de_productos A
INNER JOIN vw_envases_grandes B
ON A.ENVASE = B.ENVASE;