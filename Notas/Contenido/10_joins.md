# JOINS

## Índice
- [INNER JOIN](#inner-join)
- [LEFT JOIN](#left-join)
- [RIGHT JOIN](#right-join)
- [FULL JOIN](#full-join)
- [CROSS JOIN](#cross-join)
***
Los JOINS permiten unir 2 o más tablas a través de un campo en común

Ejemplo:
Consideremos las siguientes tablas

| NOMBRE | ID |
| --- | --- |
| Alejandro | 2 |
| Zaida | 7 |
| Ximena | 8 |
| Elías | 10 |
| Tatiana | 15 |
| Penélope | 9 |

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |
| 8 | Fotografía |
| 9 | Hipismo |

La idea es unir la primera tabla con la segunda

## INNER JOIN
Devuelve únicamente los registros con llaves correspondientes

Este tipo de JOIN es el más utilizado

`SELECT "campo_tabla_1", "campo_tabla_2" FROM "tabla_1" INNER JOIN "tabla_2" ON "campo_común_tabla_1" = "campo_común_tabla_2";`

Ejemplo:
Consideremos las siguientes tablas

| NOMBRE | ID |
| --- | --- |
| Alejandro | 2 |
| Zaida | 7 |
| Ximena | 8 |
| Elías | 10 |
| Tatiana | 15 |
| Penélope | 9 |

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |
| 8 | Fotografía |
| 9 | Hipismo |

Queremos obtener los datos de nombre y hobby que correspondan según el id de ambas tablas

```SQL
SELECT A.NOMBRE, B.HOBBY FROM tabla_1 A INNER JOIN tabla_2 B ON A.ID = B.ID;
```
Aplicando el código anterior obtenemos

| NOMBRE | HOBBY |
| --- | --- |
| Zaida | Alpinismo |
| Ximena | Fotografía |
| Penélope | Hipismo |

## LEFT JOIN
Mantiene todos los registros de la tabla de la izquierda y devuelve únicamente los correspondientes de la tabla de la derecha.

`SELECT "campo_tabla_1", "campo_tabla_2" FROM "tabla_1" LEFT JOIN "tabla_2" ON "campo_común_tabla_1" = "campo_común_tabla_2";`

Ejemplo:
Consideremos las siguientes tablas

| NOMBRE | ID |
| --- | --- |
| Alejandro | 2 |
| Zaida | 7 |
| Ximena | 8 |
| Elías | 10 |
| Tatiana | 15 |
| Penélope | 9 |

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |
| 8 | Fotografía |
| 9 | Hipismo |

```SQL
SELECT A.NOMBRE, B.HOBBY FROM tabla_1 LEFT JOIN tabla_2 B ON A.ID = B.ID;
```

Obtenemos:

| NOMBRE | HOBBY |
| --- | --- |
| Alejandro | NULL |
| Zaida | Alpinismo |
| Ximena | Fotografía |
| Elías | NULL |
| Tatiana | NULL |
| Penélope | Hipismo |

## RIGHT JOIN
Mantiene todos los registros de la tabla de la derecha y devuelve únicamente los correspondientes de la tabla de la izquierda.

`SELECT "campo_tabla_1", "campo_tabla_2" FROM "tabla_1" RIGHT JOIN "tabla_2" ON "campo_común_tabla_1" = "campo_común_tabla_2";`

Ejemplo:
Consideremos las siguientes tablas

| NOMBRE | ID |
| --- | --- |
| Alejandro | 2 |
| Zaida | 7 |
| Ximena | 8 |
| Elías | 10 |
| Tatiana | 15 |
| Penélope | 9 |

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |
| 8 | Fotografía |
| 9 | Hipismo |

```SQL
SELECT A.NOMBRE, B.HOBBY FROM tabla_1 LEFT JOIN tabla_2 B ON A.ID = B.ID;
```

Obtenemos:

| NOMBRE | HOBBY |
| --- | --- |
| NULL | Lectura |
| NULL | Fútbol |
| NULL | Tenis |
| Zaida | Alpinismo |
| Ximena | Fotografía |
| Penélope | Hipismo |

## FULL JOIN
Mantiene y devuelve todos los registros de las tablas.

`SELECT "campo_tabla_1", "campo_tabla_2" FROM "tabla_1" FULL JOIN "tabla_2" ON "campo_común_tabla_1" = "campo_común_tabla_2";`

Ejemplo:
Consideremos las siguientes tablas

| NOMBRE | ID |
| --- | --- |
| Alejandro | 2 |
| Zaida | 7 |
| Ximena | 8 |
| Elías | 10 |
| Tatiana | 15 |
| Penélope | 9 |

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |
| 8 | Fotografía |
| 9 | Hipismo |

```SQL
SELECT A.NOMBRE, B.HOBBY FROM tabla_1 FULL JOIN tabla_2 B ON A.ID = B.ID;
```

Obtenemos

| NOMBRE | HOBBY |
| --- | --- |
| NULL | Lectura |
| NULL | Fútbol |
| NULL | Tenis |
| Zaida | Alpinismo |
| Ximena | Fotografía |
| Penélope | Hipismo |
| Alejandro | NULL |
| Elías | NULL |
| Tatiana | NULL |

## CROSS JOIN
Devuelve el producto cartesiano de los registros de las tablas.

`SELECT "campo_tabla_1", "campo_tabla_2" FROM "tabla_1" CROSS JOIN "tabla_2";`

Ejemplo:
Consideremos las siguientes tablas

| NOMBRE | ID |
| --- | --- |
| Alejandro | 2 |
| Zaida | 7 |
| Ximena | 8 |
| Elías | 10 |
| Tatiana | 15 |
| Penélope | 9 |

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |
| 8 | Fotografía |
| 9 | Hipismo |

```SQL
SELECT A.NOMBRE, B.HOBBY FROM tabla_1 CROSS JOIN tabla_2 B;
```

Obtenemos 36 registros con la combinación de todos los hobbies y los nombres.

| NOMBRE | HOBBY |
| --- | --- |
| Alejandro | Lectura |
| Zaida | Lectura |
| Ximena | Lectura |
| Elías | Lectura |
| Tatiana | Lectura |
| Penélope | Lectura |
| Alejandro | Fútbol |
| Zaida | Fútbol |
| Ximena | Fútbol |
| Elías | Fútbol |
| Tatiana | Fútbol |
| Penélope | Fútbol |
| ... | ... |
