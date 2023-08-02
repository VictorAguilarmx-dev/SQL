# Filtros compuestos

## Índice
- [IN](#in)
- [Filtros comparativos](#filtros-comparativos)
- [Filtro entre un rango](#filtro-entre-un-rango)
- [Filtro con fechas](#filtros-con-fechas)
    - [Filtro con año](#filtro-con-el-año)
    - [Filtro con el mes](#filtro-con-el-mes)
    - [Filtro con el dia](#filtro-con-el-día)
- [Filtros condicionales](#filtros-condicionales)
    - [AND](#and)
    - [OR](#or)
    - [AND y OR](#and-y-or)
    - [NOR / NOT OR](#nor--not-or)
    - [NAND / NOT AND](#nand--not-and)
***
Los filtros compuestos se utilizan para tener más precisión a la hora de hacer consultas

## IN 
Esta operación se utiliza cuando queremos filtrar por una lista de valores

`SELECT * FROM "nombre_tabla" WHERE "campo" IN ("valor_1", "valor_2", ...);`

Ejemplo:

```SQL
SELECT * FROM productos WHERE SABOR IN ("mango", "uva", "limón");
```

Esto nos mostrará los productos que tengan sabor mango, uva y limón.

## Filtros comparativos (<, >, =, <=, >=, <>)
Podemos utilizar los comparativos matemáticos (<, >, =, <=, >=, <>) para realizar filtros

`SELECT * FROM "nombre_tabla" WHERE "campo" "comparativo_mat" "valor"`

Para colocar el símbolo diferente escribimos <>

Ejemplo:

```SQL
SELECT * FROM usuarios WHERE EDAD > 27;
SELECT * FROM usuarios WHERE EDAD < 27;
SELECT * FROM usuarios WHERE EDAD = 27;
SELECT * FROM usuarios WHERE EDAD <= 27;
SELECT * FROM usuarios WHERE EDAD >= 27;
SELECT * FROM usuarios WHERE EDAD <> 27;
```

También podemos utlizar estos comparativos en registros no numéricos, en este casos sql los tomará de forma alfabeticamente, por ejemplo

```SQL
SELECT * FROM ususario WHERE NOMBRE < 'Erika';
SELECT * FROM ususario WHERE NOMBRE <= 'Erika';
SELECT * FROM ususario WHERE NOMBRE > 'Erika';
SELECT * FROM ususario WHERE NOMBRE >= 'Erika';
SELECT * FROM ususario WHERE NOMBRE = 'Erika';
SELECT * FROM ususario WHERE NOMBRE <> 'Erika';
```

En estos casos tenemos que 
- Nos mostrará los usuarios antes de Erika.
- Nos mostrará los usuarios antes e incluyendo a Erika.
- Nos mostrará los usuarios después de Erika.
- Nos mostrará los usuarios después e incluyendo a Erika.
- Nos mostrará todos los usuarios con nombre Erika.
- nos mostrará todos los usuarios excepto aquellos que se llamen Erika

## Filtro entre un rango
`SELECT * FROM "nombre_tabla" WHERE "campo" BETWEEN "valor_lim_inf" AND "valor_lim_sup";`

Ejemplo

```SQL
SELECT * FROM usuarios WHERE EDAD BETWEEN 15 AND 35;
```
En este caso estamos pidiendo que nos muestre todos los usuarios que tengan edad entre 15 y 35.

## Filtros con fechas.
Para filtrar usando fechas tenemos funciones para especificar año, mes y día.

Es importante el uso de comparativos matemáticos para el filtrado de fechas.

### Filtro con el año
`SELECT * FROM "nombre_tabla" WHERE YEAR("campo_fecha") = valor`

Ejemplo:

```SQL
SELECT * FROM usuarios WHERE YEAR(FECHA_NACIMIENTO) = 1995
```

En este caso queremos los usuarios que hayan nacido en 1995

### Filtro con el mes
`SELECT * FROM "nombre_tabla" WHERE MONTH("campo_fecha") = valor`

Ejemplo:

```SQL
SELECT * FROM usuarios WHERE MONTH(FECHA_NACIMIENTO) <= 5
```

En este caso queremos ver los usuarios que hayan nacido en mayo o antes de mayo.

### Filtro con el día
`SELECT * FROM "nombre_tabla" WHERE DAY("campo_fecha") = valor`

Ejemplo:

```SQL
SELECT * FROM usuarios WHERE DAY(FECHA_NACIMIENTO) <> 21
```

En este caso queremos ver los usuarios que no hayan nacido el día 21 de cualquier mes.

## Filtros condicionales
Podemos filtrar aún mas nuestra tabla agregando más condiciones en nuestro filtro, para ello utilizaremos operadores lógicos.

Podemos ver el resultado de las operación en la siguiente tabla:

Considere *Verdadero* = 1 y *Falso* = 0, entonces:

| A | B | OR | AND | NOT OR | NOT AND |
| --- | --- | --- | --- | --- | --- |
| 0 | 0 | 0 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 0 | 1 | 
| 1 | 0 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 0 | 0 |

### AND
Podemos traducir `AND` como ‘‘y’’. El resultado de la operación es verdadero si todas sus condiciones son verdaderas

`SELECT * FROM "nombre_tabla" WHERE "condición_1" AND "condición_2"`

Ejemplo:

```SQL
SELECT * FROM productos WHERE SABOR = 'limón' AND ENVASE = 'botella vidrio';
```

En este caso nos mostrará todos los productos que tengan sabor limón y envase de botella de vidrio.

### OR
Podemos tradución `OR` como ‘‘o’’. El resultado de la operación es verdadero si alguna de sus condiciones es verdadera

`SELECT * FROM "nombre_tabla" WHERE "condición_1" OR "condición_2"`

Ejemplo:

```SQL
SELECT * FROM productos WHERE SABOR = 'limón' OR ENVASE = 'botella vidrio';
```

En este caso nos mostrará todos los productos que tengan sabor limón o que tengan envase de botella de vidrio.

### AND Y OR
Podemos combinar el uso de `AND` y `OR` según sea el caso

Ejemplo:

```SQL
SELECT * FROM productos WHERE (SABOR = 'naranja' AND VOLUMEN = '600 ml') OR (SABOR = 'limón' AND ENVASE = 'botella pet') 
```

En este caso nos mostrará los productos que tengan sabor naranja que tengan un volúmen de 600 ml o los productos que tengan sabor limón y tengan un envase de botella de pet.

### NOR / NOT OR
Es la negación de la operación OR.

`SELECT * FROM "nombre_tabla" WHERE NOT ("condición_1) OR "condición 2" ...;`

Ejemplo:

```SQL
SELECT * FROM productos WHERE NOT (SABOR = 'mango') OR VOLUMEN = '600 ml'
```

### NAND / NOT AND
Es la negación de la operación AND.

`SELECT * FROM "nombre_tabla" WHERE NOT ("condición_1) AND "condición 2" ...;`

Ejemplo: 

```SQL
SELECT * FROM productos WHERE NOT (SABOR = 'mango' AND VOLUMEN = '600 ml')
```

En este caso nos mostrará los productos que no tengan sabor mango y que no tengan un volúmen de 600 ml.
