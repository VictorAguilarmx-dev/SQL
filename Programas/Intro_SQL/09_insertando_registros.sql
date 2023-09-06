USE jugos;

INSERT INTO tb_productos(
    PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO
) VALUE (
    '838819', 'Clean', 'botella pet', '1.5 litros', 'naranja', 12.01
);

INSERT INTO tb_productos(
    PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO
) VALUE (
    '1037797', 'Clean', 'botella pet', '2 litros', 'naranja', 16.01
);

INSERT INTO tb_productos(
    PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO
) VALUE (
    '812829', 'Clean', 'lata', '0.350 litros', 'naranja', 2.81
);

SELECT * FROM tb_productos;