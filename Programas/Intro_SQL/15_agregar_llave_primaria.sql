USE jugos;

INSERT INTO tb_productos(
    PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO
) VALUES (
    '773912', 'Clean', 'botella pet', '1 litro', 'naranja', 8.01
);

ALTER TABLE tb_productos ADD PRIMARY KEY(PRODUCTO);

SELECT * FROM tb_productos;