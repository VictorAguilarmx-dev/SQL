-- ¿Cuáles son los barrios en Ciudad de México que tienen clientes?
USE jugos_ventas;

SELECT DISTINCT
    BARRIO
FROM
    tabla_de_clientes
WHERE
    CIUDAD = 'Ciudad de México';