USE jugos;
-- Creamos la tabla tb_productos
CREATE TABLE tb_productos(
    PRODUCTO VARCHAR(50),
    NOMBRE VARCHAR(50),
    ENVASE VARCHAR(50),
    VOLUMEN VARCHAR(50),
    SABOR VARCHAR(50),
    PRECIO FLOAT
)

-- Insertamos los valores de la tabla
INSERT INTO tb_productos(
    PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) 
    VALUES 
    ('773912', 'Clean', 'botella pet', '1 litro', 'naranja', 8.01);

-- Mostramos la tabla.
SELECT * FROM tb_productos;