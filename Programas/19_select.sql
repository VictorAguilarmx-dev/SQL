USE jugos;

-- Visualizamos toda la tabla
SELECT * FROM tb_clientes;

-- Visualizamos algunos campos.
SELECT DNI, NOMBRE FROM tb_clientes;

-- Podemos colocar alias a los campos
SELECT NOMBRE AS Nombre_CompletO, SEXO AS Genero, EDAD AS Años FROM tb_clientes;

-- Visualizar los primeros n registros
SELECT NOMBRE, SEXO, EDAD FROM tb_clientes LIMIT 6;