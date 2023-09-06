# Subconsultas
***
Una ***subconsulta*** es hacer una consulta al interior de una consulta.

Ejemplo:
Considere las siguientes tablas

| LETRA | NUMEROS |
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

| NUMEROS |
| --- |
| 1 |
| 2 |

Escribiendo

```SQL
SELECT LETRA, NUMERO FROM tabla_1 WHERE NUMERO IN (1,2);
```

Devolvera los registros que tengan el valor 1 o 2 en el campo de NUMERO

De igual manera lo podemos hacer para los valores 1, 2, y 3.

¿Podemos seleccionar los valores de NUMEROS sin la necesidad de listarlos uno por uno?

Si lo podemos hacer siguiente la siguiente estructura 

`SELECT "campo_1", "campo_2" FROM "tabla_1" WHERE "campo_2" IN (SELECT "campo_2" FROM "tabla_2");`

Ejemplo:

Considerando las anteriores 

```SQL
SELECT LETRA , SUM(NUMEROS) AS NEW_NUMERO FROM tabla GROUP BY X;
```

Generamos la siguiente tabla:

| LETRA | NEW_NUMERO |
| --- | --- |
| A | 4 |
| E | 4 |
| T | 4 |
| Z | 16 |

Queremos que esta consulta sea mi subconsulta entonces escribimos:

```SQL
SELECT Z.LETRA, Z.NUMERO FROM (SELECT LETRA, SUM(NUMERO) AS  FROM tabla GROUP BY LETRA)Z WHERE Z.NEW_NUMERO = 4
```

Obtenemos los registros cuyos número sean igual a 4.

| LETRA | NEW_NUMERO |
| --- | --- |
| A | 4 |
| E | 4 |
| T | 4 |
