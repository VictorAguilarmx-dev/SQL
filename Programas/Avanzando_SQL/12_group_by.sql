USE jugos_ventas;

SELECT
    ESTADO, 
    SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL 
FROM 
    tabla_de_clientes
GROUP BY 
    ESTADO;

SELECT
    ENVASE,
    PRECIO_DE_LISTA 
FROM 
    tabla_de_productos;

SELECT
    ENVASE,
    MAX(PRECIO_DE_LISTA) AS MAYOR_PRECIO 
FROM
    tabla_de_productos 
GROUP BY 
    ENVASE;

SELECT 
    ENVASE, 
    COUNT(*) FROM tabla_de_productos 
GROUP BY 
    ENVASE;

SELECT 
    BARRIO, 
    SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM 
    tabla_de_clientes
GROUP BY 
    BARRIO;

SELECT 
    BARRIO, 
    SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM 
    tabla_de_clientes 
WHERE 
    CIUDAD = 'Ciudad de México' 
GROUP BY BARRIO;

SELECT 
    BARRIO, 
    MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM 
    tabla_de_clientes 
WHERE 
    CIUDAD = 'Ciudad de México' 
GROUP BY BARRIO;

SELECT 
    BARRIO, 
    MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM 
    tabla_de_clientes 
WHERE 
    CIUDAD = 'Ciudad de México' 
GROUP BY ESTADO, BARRIO;

SELECT 
    ESTADO, 
    BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM 
    tabla_de_clientes 
WHERE 
    CIUDAD = 'Ciudad de México' 
GROUP BY ESTADO, BARRIO;

SELECT 
    ESTADO, 
    BARRIO, 
    MAX(LIMITE_DE_CREDITO) as LIMITE, 
    EDAD 
FROM 
    tabla_de_clientes 
WHERE 
    EDAD >= 20 
GROUP BY 
    ESTADO, 
    BARRIO 
ORDER BY 
    EDAD;