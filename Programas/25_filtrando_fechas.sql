USE jugos;

SELECT * FROM tb_clientes;

-- Filtro por fecha exacta
SELECT * FROM tb_clientes WHERE FECHA_NACIMIENTO = '1995-01-13'

-- Filtro por una fecha anterior
SELECT * FROM tb_clientes WHERE FECHA_NACIMIENTO < '1995-01-13'

-- Filtro por una fechas posterior
SELECT * FROM tb_clientes WHERE FECHA_NACIMIENTO >= '1995-01-13'

-- Filtro por año
SELECT * FROM tb_clientes WHERE YEAR(FECHA_NACIMIENTO) = 1995;

-- Filtro por día de la fecha 
SELECT * FROM tb_clientes WHERE DAY(FECHA_NACIMIENTO) = 20;