-- ¿Cuál (o cuáles) fue (fueron) la(s) mayor(es) venta(s) del producto “Refrescante, 1 Litro, Frutilla/Limón”, en cantidad? (Obtenga este resultado utilizando 2 comandos SQL).

USE jugos_ventas;

SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos
WHERE
    NOMBRE_DEL_PRODUCTO = 'Refrescante' AND TAMANO = '1 Litro' AND SABOR = 'Frutilla/Limón';

SELECT * FROM items_facturas WHERE 
    CODIGO_DEL_PRODUCTO = '1101035' ORDER BY CANTIDAD DESC;