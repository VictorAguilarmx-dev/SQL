-- Nuestro sistema de ventas solicita la creación de una tabla más para los vendedores.

-- Información importante:

-- El nombre de la tabla debe ser TABLA_DE_VENDEDORES.

-- El vendedor tiene el número interno de la matrícula, que será almacenado en el campo MATRÍCULA, que debe ser un string de 5 posiciones.

-- El nombre del vendedor deberá ser almacenado en el campo NOMBRE, y debe ser un string de 100 posiciones.

-- Crear el campo PORCENTAJE_COMISION que representa el porcentaje de comisión que el vendedor gana sobre cada venta.

-- Crear esta tabla en la base de datos jugos.

-- ------- Solución ------------
USE jugos;

CREATE TABLE tabla_de_vendedores(
    MATRICULA VARCHAR(5),
    NOMBRE VARCHAR(100),
    PORCENTAJE_COMISION FLOAT
);