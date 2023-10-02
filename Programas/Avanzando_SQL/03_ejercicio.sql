-- ¿Cuál sería el comando SQL para seleccionar todos los ítems de facturas cuya cantidad sea mayor que 60 y precio menor o igual a 3?

USE jugos_ventas;

SELECT * FROM
    items_facturas
WHERE
    CANTIDAD > 60 AND PRECIO <= 3;
