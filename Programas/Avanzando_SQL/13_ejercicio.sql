use jugos_ventas;

SELECT MAX(CANTIDAD) AS CANTIDAD_MAXIMA FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = '1101035';

SELECT COUNT(*) FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = '1101035' AND CANTIDAD = 99;