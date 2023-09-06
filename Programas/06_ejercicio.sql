-- Eliminar la tabla TABLA_DE_VENDEDORES2 usando script SQL.

-- Para crear la tabla antes de eliminarla, ejecute:

-- CREATE TABLE TABLA_DE_VENDEDORES2 (
--     MATRICULA varchar(5), 
--     NOMBRE varchar(100), 
--     PORCENTAJE_COMISION float);

------ Solución 
USE jugos;

CREATE TABLE tabla_de_vendedores2 (
    MATRICULA VARCHAR(5),
    NOMBRE VARCHAR(100),
    PORCENTAJE_COMISION FLOAT
);

DROP TABLE tabla_de_vendedores2;