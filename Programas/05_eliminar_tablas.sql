-- Eliminar una tabla

USE jugos;

-- Creamos una tabla tb_cleintes2
CREATE TABLE tb_clientes2(
    DNI VARCHAR(20),
    NOMBRE VARCHAR(150),
    DIRECCION1 VARCHAR(150),
    DIRECCION2 VARCHAR(150),
    BARRIO VARCHAR(50),
    CIUDAD VARCHAR(50),
    ESTADO VARCHAR(50),
    CP VARCHAR(10),
    EDAD SMALLINT,
    SEXO VARCHAR(1),
    LIMITE_CREDITO FLOAT,
    VOLUMNE_COMPRA FLOAT,
    PRIMERA_COMPRA BIT(1)
);

-- Eliminamos la tabla tb_clientes2
DROP TABLE tb_clientes2;
