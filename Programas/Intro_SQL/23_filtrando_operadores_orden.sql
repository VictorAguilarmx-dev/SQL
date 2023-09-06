USE jugos;

SELECT * FROM tb_clientes;

-- Mayor que
SELECT * FROM tb_clientes WHERE EDAD > 27;

-- Mayor o igual que
SELECT * FROM tb_clientes WHERE EDAD >= 27;

-- Menor que
SELECT * FROM tb_clientes WHERE EDAD < 27;

-- Menor o igual que
SELECT * FROM tb_clientes WHERE EDAD <= 27;

-- Diferente que
SELECT * FROM tb_clientes WHERE EDAD <> 26;

-- Nombres después de Erica alfabéticamente
SELECT * FROM tb_clientes WHERE NOMBRE > 'Erica Carvajo';

-- Nombres antes de Erica alfabéticamente
SELECT * FROM tb_clientes WHERE NOMBRE < 'Erica Carvajo';

-- Registros entre un rango de valores.
SELECT * FROM tb_productoS WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;