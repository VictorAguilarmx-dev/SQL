-- Queremos obtener las 10 primeras ventas del día 01/01/2017. ¿Cuál sería el comando SQL para obtener este resultado?

USE jugos_ventas;

SELECT * FROM facturas WHERE FECHA_VENTA = '2017-01-01' LIMIT 10;