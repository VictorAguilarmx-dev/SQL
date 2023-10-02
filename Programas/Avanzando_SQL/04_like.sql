USE jugos_ventas;

SELECT * FROM
    tabla_de_productos
WHERE
    SABOR  LIKE '%Manzana';

SELECT * FROM
    tabla_de_productos
WHERE
    SABOR  LIKE 'Manzana%';

SELECT * FROM
    tabla_de_productos
WHERE
    SABOR  LIKE '%Manzana%';

SELECT * FROM
    tabla_de_productos
WHERE
    SABOR LIKE '%Manzana' AND ENVASE = 'Botella PET';