USE jugos;

SELECT * FROM tb_productos;

-- Filtro de valores entre un rango
SELECT * FROM tb_productos WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;

SELECT * FROM tb_productos WHERE PRECIO_LISTA >= 28.49 AND PRECIO_LISTA <= 28.52;

-- Filtro usando OR
SELECT * FROM tb_productos WHERE ENVASE = 'Lata' OR ENVASE <= 'Botella PET';

-- Filtro usando AND
SELECT * FROM tb_productos WHERE PRECIO_LISTA >= 15 AND PRECIO_LISTA <= 25;

-- Filtro usando AND y OR
SELECT * FROM tb_productos WHERE (PRECIO_LISTA >= 15 AND PRECIO_LISTA <= 25) OR (ENVASE = 'Lata' OR ENVASE = 'Botella PET');