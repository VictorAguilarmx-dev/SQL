use jugos_ventas;

SELECT COUNT(*) FROM tabla_de_clientes;

-- Queremos saber la cantidad de clientes que ha comprado.
SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM tabla_de_clientes A
INNER JOIN
facturas B
ON A.DNI = B.DNI;

-- Esta consulta muestra que de un total de 15 clientes 12 han comprado.

-- Ahora queremos saber cuales clientes no han comprado
SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI FROM tabla_de_clientes A
LEFT JOIN
facturas B
ON A.DNI = B.DNI
WHERE B.DNI IS NULL;

-- Podemos conseguir el mismo resultado utilizando RIGHT JOIN
SELECT DISTINCT A.DNI, B.NOMBRE, B.CIUDAD, B.DNI FROM facturas A RIGHT JOIN tabla_de_clientes B
ON A.DNI = B.DNI
WHERE A.DNI IS NULL;