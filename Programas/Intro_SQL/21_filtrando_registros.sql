USE jugos;

SELECT * FROM tb_productos;

SELECT * FROM tb_productos
WHERE SABOR = 'maracuyá';

SELECT * FROM tb_productos
WHERE ENVASE = 'Botella de vidrio';

UPDATE tb_productos SET SABOR = 'Cítrico' WHERE SABOR = 'Limón';

SELECT * FROM tb_productos
WHERE SABOR = 'Cítrico';