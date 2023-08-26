# VIEWS

## Índice

***
Una ***view*** es una tabla lógica que resulta de una consulta que puede ser sada posteriormente en cualquier otra consulta.

Ejemplo:
Considere la siguiente tabla 
|X|Y|
|:---:|:---:|
|A|3|
|Z|5|
|Z|1|
|A|1|
|E|4|
|T|3|
|Z|8|
|Z|2|
|T|1|

Si escribimos la siguiente consulta

```sql
SELECT X, SUM(Y) AS NEW_Y FROM tb1 GROUP BY X
```
otenemos la siguiente tabla:

|X|NEW_Y|
|:---:|:---:|
|A|4|
|E|4|
|T|4|
|Z|16|

**Al almacenar la consulta, crearemos una **View** y la llamaremos **VW_VIEW**

Una view tiene un costa de procesamiento, siempre que la invoquemos la misma tendrá que ejecutar su consulta (especie de subconsulta).

Para mostrar una view la trataremos como si fuera una tlabla, es decir:

```sql
SELEC * FROM VW_VIEW;
```

Ejemplo:
Considere la siguiente tabla TB3

|W|Y|
|:---:|:---:|
|F|4|
|H|4|
|H|5|
|G|6|
|F|5|
|P|16|
|L|7|
|M|15|
|N|6|

Si hacemos la siguiente consulta

```sql
SELECT VW_VIEW.X, TB3.W FROM VW_VIEW INNER JOIN T3 ON VW_VIEW.NEW_Y = TB3.Y WHERE TB3.Y = 16;
```

Obtenemos

|X|W|
|Z|P|

