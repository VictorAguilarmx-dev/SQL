-- ¿Cuántos clientes tienen apellidos que acaban con “ez”?

USE jugos_ventas;

SELECT * FROM
    tabla_de_clientes
WHERE
    NOMBRE LIKE '%ez';
