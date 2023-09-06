-- Vamos a crear un vendedor en la tabla de vendedores. La información es la siguiente:

-- Matrícula: 00233

-- Nombre: Joan Geraldo de la Fonseca

-- Comisión: 10%

USE JUGOS;

INSERT INTO tabla_de_vendedores(
    MATRICULA, NOMBRE, PORCENTAJE_COMISION
) VALUES ('00233', 'Joan Geraldo de la Fonseca', 0.10);

SELECT * FROM tabla_de_vendedores