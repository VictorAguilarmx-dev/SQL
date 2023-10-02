USE jugos_ventas;

SELECT * FROM tabla_de_clientes;
SELECT * FROM tabla_de_vendedores;

-- Queremos saber que clientes son atendidos por los vendedores según el barrio
SELECT tabla_de_clientes.NOMBRE AS NOMBRE_CLIENTE, tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE AS NOMBRE_VENDEDORES FROM tabla_de_clientes
INNER JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

-- Veamos cuales clientes no son atendidos
SELECT tabla_de_clientes.NOMBRE AS NOMBRE_CLIENTE, tabla_de_clientes.CIUDAD,  tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE AS NOMBRE_VENDEDORES FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

-- Veamos el resultado con right join
SELECT tabla_de_clientes.NOMBRE AS NOMBRE_CLIENTE, tabla_de_clientes.CIUDAD,  tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE AS NOMBRE_VENDEDORES , tabla_de_vendedores.VACACIONES FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

-- Veamos que sudede con full join
-- SELECT tabla_de_clientes.NOMBRE AS NOMBRE_CLIENTE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE AS NOMBRE_VENDEDOR, VACACIONES
-- FROM tabla_de_clientes
-- FULL JOIN
-- tabla_de_vendedores
-- ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

-- Como podemos ver marca un error.

-- Ahora veamos un cross join
SELECT tabla_de_clientes.NOMBRE AS NOMBRE_CLIENTE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE AS NOMBRE_VENDEDOR, VACACIONES
FROM tabla_de_clientes, tabla_de_vendedores
WHERE tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;