USE jugos_ventas;

-- Visualizamos los datos de las tablas
SELECT * FROM tabla_de_vendedores;
SELECT * FROM facturas;

-- Conectamos las dos tablas por el un campo en común (MATRICULA)
SELECT * FROM tabla_de_vendedores A INNER JOIN facturas B ON A.MATRICULA = B.MATRICULA;

-- Podemos agrupar el resultado de la consulta que conecta una o más tablas
SELECT * FROM tabla_de_vendedores A INNER JOIN facturas B ON A.MATRICULA = B.MATRICULA GROUP BY A.NOMBRE, B.MATRICULA;

-- Podemos ver la cantidad de ventas realizadas por vendedores
SELECT A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A INNER JOIN facturas B ON A.MATRICULA = B.MATRICULA GROUP BY A.NOMBRE, B.MATRICULA;


-- Se pueden perder datos a la hora de hacer un inner join
SELECT COUNT(*) FROM tabla_de_clientes; -- tenemos 15 clientes.

-- Realizamos un join con la tabla de facturas para ver cuántos clientes poseen facturas emitidas.
SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM tabla_de_clientes A INNER JOIN facturas B ON A.DNI = B.DNI;

-- teneos 12 registros, es decir, existen tres clientes que están registrados pero nunca se les emitió facturas.


