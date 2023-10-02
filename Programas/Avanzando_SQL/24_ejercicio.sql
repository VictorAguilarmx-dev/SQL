-- Cuál sería la consulta utilizando la subconsulta que sería equivalente a:
USE jugos_ventas;

SELECT DNI, COUNT(*) FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI
HAVING COUNT(*) > 2000;

SELECT X.DNI, X.CONTADOR FROM (
    SELECT DNI, COUNT(*) AS CONTADOR FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI
) X WHERE X.CONTADOR > 2000;