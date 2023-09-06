-- Vamos a incluir nuevos campos en la tabla de vendedores. Ellos serán la fecha de admisión. (Nombre del campo FECHA_ADMISION), y si el vendedor está o no de vacaciones. (Nombre del campo DE_VACACIONES). No olvides recrear la clave primaria y después incluye la siguiente información:

-- Matrícula - 00235
-- Nombre: Márcio Almeida Silva
-- Comision: 8%
-- Fecha de admisión: 15/08/2014
-- ¿Está de vacaciones? No
-- Matrícula - 00236
-- Nombre: Cláudia Morais
-- Comision: 8%
-- Fecha de admisión: 17/09/2013
-- ¿Está de vacaciones? Si
-- Matrícula - 00237
-- Nombre: Roberta Martins
-- Comision: 11%
-- Fecha de admisión: 18/03/2017
-- ¿Está de vacaciones? Si
-- Matrícula - 00238
-- Nombre: Péricles Alves
-- Comision: 11%
-- Fecha de admisión: 21/08/2016
-- ¿Está de vacaciones? No
-- Tips:

-- Elimina la tabla.
-- Crea la tabla nuevamente incluyendo los nuevos campos.
-- Crea la clave primaria.
-- Incluye los comandos de INSERT.
-- *******

-- Especificamos la base de datos a usar
USE jugos;

-- Eliminamos la tabla tb_vendedores
DROP TABLE tb_vendedores;

-- Creamos la tabla tb_vendedores
CREATE TABLE tb_vendedores(
    MATRICULA VARCHAR(50),
    NOMBRE VARCHAR(150),
    PORCENTAJE_COMISION FLOAT,
    FECHA_ADMISION DATE,
    DE_VACACIONES BIT
);

-- Asignamos la llave primaria.
ALTER TABLE tb_vendedores ADD PRIMARY KEY(MATRICULA);

-- Insertamos los registros a la tabla tb_vendedores
INSERT INTO tb_vendedores(
    MATRICULA, NOMBRE, PORCENTAJE_COMISION, FECHA_ADMISION, DE_VACACIONES
) VALUES(
    '00235', 'Márcio Almeida Silva', 0.08, '2014-08-15', 0
),(
    '00236', 'Cláudia Morais', 0.08, '2013-09-17', 1
), (
    '00237', 'Roberta Martins', 0.11, '2017-03-18', 1
), (
    '00238', 'Péricles Alves', 0.11, '2016-08-21', 0
);

-- Visualizamos la tabla
SELECT * FROM tb_vendedores;

-- Comprobamos el funcionamiento de la llave primaria.
INSERT INTO tb_vendedores(
    MATRICULA, NOMBRE, PORCENTAJE_COMISION, FECHA_ADMISION, DE_VACACIONES
) VALUES(
    '00235', 'Márcio Almeida Silva', 0.08, '2014-08-15', 0
);