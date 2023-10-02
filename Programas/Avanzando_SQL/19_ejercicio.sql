-- Obtén la facturación anual de la empresa. Ten en cuenta que el valor financiero de las ventas consiste en multiplicar la cantidad por el precio.
USE jugos_ventas;

SELECT YEAR(FECHA_VENTA), SUM(CANTIDAD * PRECIO) AS FACTURACION
FROM facturas F 
INNER JOIN 
items_facturas IFa 
ON F.NUMERO = IFa.NUMERO
GROUP BY YEAR(FECHA_VENTA);