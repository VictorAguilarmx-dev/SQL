# Comandos

## Índice
- [LIKE](#like)
- [DISTINCT](#distinct)
- [LIMIT](#limit)
- [ORDER BY](#order-by)
- [GROUP BY](#group-by)
- [HAVING](#having)
- [CASE](#case)

## LIKE
Para el uso de un filtro con `LIKE` es necesario el uso de % para representar cualquier registro genérico antes o después de la condición.

`SELECT * FROM "tabla" WHERE "campo" LIKE '%"condición"';`

`SELECT * FROM "tabla" WHERE "campo" LIKE '"condición"%';`

`SELECT * FROM "tabla" WHERE "campo" LIKE '%"condición"%';`

Ejemplo:
Considere la siguiente tabla:

| nombre | 
| :---: | 
| Miguel Suárez Díaz | 
| Raúl José Suárez |
| Manuel Días Avendaño |
| Mario García Rojas |
| Daniela Suárez |

y aplicamos la siguiente consulta:

```SQL
SELECT * FROM usuarios WHERE NOMBRE LIKE '%suárez%'
```

En este caso veremos todos los usuarios que tengan por apellido Suárez, es decir:

| nombre |
| :---: |
| Miguel Suárez Díaz |
| Raúl José Suárez |
| Daniela Suárez |

En cambio si escribimos

```SQL
SELECT * FROM usuarios WHERE NOMBRE LIKE '%suárez'
```

Sólo veremos los registros que terminán con Suárez, es decir:

| nombre |
| :---: |
| Raúl José Suárez |
| Daniela Suárez |

Y si escribimos:

```SQL
SELECT * FROM usuarios WHERE NOMBRE LIKE 'ma%'
```

En este caso veremos todos los registros que inicien con ‘‘ma’’, es decir:

| nombre |
| :---: |
| Manuel Días Avendaño |
| Mario García Rojas |

También podemos combinar el uso del like con otro tipo de filtros. Por ejemplo:

```SQL
SELECT * FROM usuarios WHERE NOMBRE LIKE '%suárez%' AND EDAD < 25;
```

En este caso veremos todos los usuarios que tengan el apellido Suárez y que tengan edad menor a 25.

## DISTINCT
Este comando retorno registros con valores diferentes

`SELECT DISTINCT * FROM "tabla";`

Este comando siempre va después del `SELECT`

Ejemplo:

Considere la siguiente tabla

| CAMPO 1 | CAMPO 2 | 
| --- | --- |
| A | B |
| Z | C |
| Z | Q |
| A | B |
| Z | Q |

Entonces al aplicar el comando, este nos devolvería

| CAMPO 1 | CAMPO 2 | 
| --- | --- |
| A | B |
| Z | C |
| Z | Q |

Pues los demás registros están repetidos 

Ejemplos:

```SQL
SELECT DISTINCT ENVASE, TAMANHO FROM productos
```

En este caso nos regresa los tipos de envase y tamaño que tienen los productos sin repetir.

También podemos combinar este comando con filtros simples o compuestos

```SQL
SELECT DISTINCT ENVASE TAMANHO, SABOR FROM productos WHERE SABOR = 'naranja';
```

En este caso veremos los diferentes envases y tamaños de los productos que tienen sabor naranja.

## LIMIT
Limita el número de registros exhibidos

`SELECT * FROM "tabla" LIMIT "n"`

Ejemplo:
Considere la siguiente tabla

| NOMBRE | 
| --- |
| Miguel Suárez Díaz |
| Raúl José Suárez |
| Mario García Avendaño |
| Pedro González |
| Pablo Restrepo Villa |
| José Manuel Sánchez |

Aplicando el comando

```SQL
SELECT * FROM tabla LIMIT 2;
```

tenemos el siguiente resultado:

| NOMBRE | 
| --- |
| Miguel Suárez Díaz |
| Raúl José Suárez |


También podemos controlar el índice de los elementos exhibidos.

`SELECT * FROM "tabla" LIMIT "índice", "n"`

Por ejemplo.

De la tabla de nombres si aplicamos el comando

```SQL
SELECT * FROM tabla LIMIT 1, 2;
```

veremos el siguiente resultado:

| NOMBRE | 
| --- |
| Mario García Avendaño |
| Pedro González |


Es necesario recordar que las tablas inician con un índice 0

## ORDER BY
Presenta el resultado de la consulta ordenado poe el campo determinado al ejecutar ORDER BY

`SELECT * FROM "tabla" ORDER BY "campo";`

Este comando ordena de forma alfabéticamente ascendente.

Ejemplo:

Considere la siguiente tabla de nombres:

| NOMBRE | 
| --- |
| Miguel Suárez Díaz |
| Raúl José Suárez |
| Mario García Avendaño |
| Pedro González |
| Pablo Restrepo Villa |
| José Manuel Sánchez |

Al aplicar el comando 

```SQL
SELECT * FROM tabla ORDER BY NOMBRE;
```

La tabla quedaría de la siguiente forma:

| NOMBRE | 
| --- |
| José Manuel Sánchez |
| Mario García Avendaño |
| Miguel Suárez Díaz |
| Pablo Restrepo Villa |
| Pedro González |
| Raúl José Suárez |

También podríamos escribir: 

```SQL
SELECT * FROM tabla ORDER BY NOMBRE ASC;
```

Y generaríamos el mismo resultado.

También podemos hacer que el ordensea descendente

`SELECT * FROM "tabla" ORDER BY "campo" DESC;`

Por ejemplo en la tabla anterior si aplicamos el comando

```SQL
SELECT * FROM tabla ORDER BY NOMBRE DESC;
```

Obtenemos

| NOMBRE | 
| --- |
| Raúl José Suárez |
| Pedro González |
| Pablo Restrepo Villa |
| Miguel Suárez Díaz |
| Mario García Avendaño |
| José Manuel Sánchez |

Se pueden emplear $n$ campos al mismo tiempo como criterio de selección

`SELECT * FROM "tabla" ORDER BY "campo_1" DESC, "campo_2" ASC;`

Ejemplo:

Considere la siguiente tabla:

| LETRA | NUMERO | 
| --- | --- |
| A | 3 |
| Z | 5 |
| Z | 1 |
| A | 1 |
| E | 4 |
| T | 1 |

Aplicando el comando 

```SQL
SELECT * FROM tabla ORDER BY LETRA DESC, NUMERO ASC;
```

Obetenemos:

| LETRA | NUMERO | 
| --- | --- |
| Z | 1 |
| Z | 5 |
| T | 1 |
| E | 4 |
| A | 1 |
| A | 3 |

## GROUP BY
Presenta el resultado agrupando valores numéricos empleando una clave de criterio.

`SELECT "campo_1", "campo_2",..., "función(campo_n)" FROM "tabla" GROUP BY "campo";`

Siempre que utilizemos este comando tenemos que aplicar una función a uno de los campos

Ejemplo:

Considere la siguiente tabla:

| LETRAS | NUMEROS |
| --- | --- |
| A | 3 |
| Z | 5 |
| Z | 1 |
| A | 1 |
| E | 4 |
| T | 3 |
| Z | 8 |
| Z | 2 |
| T | 1 |

Si aplicamos el comando

```SQL
SELECT X, SUM(Y) FROM tabla GROUP BY X;
```

Tenemos la siguiente tabla

| LETRAS | NUMEROS |
| --- | --- |
| A | 4 |
| E | 4 |
| T | 4 |
| Z | 16 |

En este caso tenemos la suma sobre los valores del campo NUMEROS.

Algunas funciones que podemos utilizar son las siguientes:

- `SUM()` --> Suma
- `MAX()` --> Máximo
- `MIN()` --> Mínimo
- `AVG()` --> Promedio
- `COUNT()` --> Contador

También podemos combinar el uso de GROUP BY con filtros compuestos:

```SQL
SELECT ESTADO, BARRIO, MAX(LIMITE_CREDITO) AS LIMITE, EDAD FROM clientes WHERE EDAD >= 20 GROUP BY ESTADO, BARRIO ORDER BY EDAD;
```
Este comando nos muestra a los clientes mayores de 20 años agrupados por estado y el barrio y ordenados por la edad del cliente.

## HAVING
Este comando nos sirve para ser aún más especifico con nuestras consultas.

`SELECT "campo_1", "función(campo_2)" FROM "tabla" GROUP BY "campo_1" HAVING "función(campo_2)";`

Por ejemplo:

Considere la siguiente tabla:

| LETRAS | NUMEROS |
| --- | --- |
| A | 3 |
| Z | 5 |
| Z | 1 |
| A | 1 |
| E | 4 |
| T | 3 |
| Z | 8 |
| Z | 2 |
| T | 1 |

Queremos visualizar los campos cuya suma sea mayor que 4, entonces escribimos

```SQL
SELECT LETRAS, SUM(NUMEROS) FROM tabla GROUP BY LETRAS HAVING SUM(NUMEROS) > 4;
```

Eso nos devuelve la siguiente tabla:

| LETRAS | NUMEROS |
| --- | --- |
| Z | 16 |

## CASE
Realiza un test en uno o más campos y dependiendo del resultado, obtendremos un valor específico

`CASE
    WHEN "condición_1" THEN "valor_1"
    WHEN "condición_2" THEN "valor_2"
    ...
    WHEN "condición_n" THEN "valor_n"
    ELSE "valor_else"
END`

Ejemplo;

Considere la siguiente tabla

| Cliente | CALIFICACION | 
| --- | --- |
| Cliente_1 | 8 |
| Cliente_2 | 6 |
| Cliente_3 | 3 |
| Cliente_4 | 10 |
| Cliente_5 | 5 |
| Cliente_6 | 7 |
| Cliente_7 | 1 |
| Cliente_8 | 2 |
| Cliente_9 | 1 |

Queremos calificar el cliente por muy bueno, bueno, regular y malo, entonces escribimos

```SQL
SELECT CLIENTE 
CASE
    WHEN CALIFICACION >= 8 AND CALIFICACION <= 10 THEN "Muy bueno"
    WHEN CALIFICACION >= 7 AND CALIFICACION < 8 THEN "Bueno"
    WHEN CALIFICACION >= 5 AND CALIFICACION < 7 THEN "Regular"
    ELSE "Malo"
END
FROM tabla;
```

Este comando nos regresa la siguiente tabla

| Cliente | CALIFICACION | 
| --- | --- |
| Cliente_1 | Muy bueno |
| Cliente_2 | Regular |
| Cliente_3 | Malo |
| Cliente_4 | Muy bueno |
| Cliente_5 | 5Regular |
| Cliente_6 | Bueno |
| Cliente_7 | Malo |
| Cliente_8 | Malo |
| Cliente_9 | Malo |

También podemos combinar el comando `CASE` con el uso de filtros aún más complejos

Por ejemplo:

```SQL
SELECT ENVASE, SABOR,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO, MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
FROM tabla_de_productos
WHERE TAMANO = '700 ml'
GROUP BY ENVASE,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END
ORDER BY ENVASE;
```
