USE jugos;

INSERT INTO tb_productos(
    PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO
) VALUE
('695594', 'Festival de sabores', 'botella pet', '1.5 litros', 'Asaí', 18.51);

INSERT INTO tb_productos(
    PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO
) VALUE
('1041119', 'Línea Citrus', 'botella de vidrio', '700 ml', 'Líma/Limón', 4.90);

UPDATE tb_productos SET VOLUMEN = '350 ml'
WHERE PRODUCTO = '812829';

UPDATE tb_productos SET PRECIO = 28.51
WHERE PRODUCTO = '695594';

SELECT * FROM tb_productos;