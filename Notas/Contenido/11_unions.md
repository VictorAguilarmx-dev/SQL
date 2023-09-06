# UNIONS

## Índice
- [UNION](#union)
- [UNION ALL](#union-all)
***

Permite unir 2 o más tablas. (Implicitamente ejecuta DISTINCT)

## UNION
El número de campos en las tablas debe ser igual (mismos campos y mismos tipos).

`"consulta_1" UNION "consulta_2";`

Ejemplo:
Supongamos que tenemos las siguientes dos consultas

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |

| ID | HOBBY |
| --- | --- |
| 8 | Fotografía |
| 9 | Hipismo |
| 5 | Fútbol |
| 11 | Trotar |

Al ejectutar

```sql 
"consulta_1" UNION "consulta_2";
```

Obtenemos la siguiente consulta:

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |
| 8 | Fotografía |
| 9 | Hipismo |
| 11 | Trotar |

Podemos hacer un `FULL JOIN` por medio de un `UNION`

`"consulta_left_join" UNION "consulta_right_join";`

## UNION ALL
No hace distinción entre registros

`"consulta_1" UNION ALL "consulta_2";`

Ejemplo:
Supongamos que tenemos las siguientes dos consultas

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |

| ID | HOBBY |
| --- | --- |
| 8 | Fotografía |
| 9 | Hipismo |
| 5 | Fútbol |
| 11 | Trotar |

Al ejectutar

```sql 
"consulta_1" UNION ALL "consulta_2";
```

Obtenemos la siguiente consulta:

| ID | HOBBY |
| --- | --- |
| 4 | Lectura |
| 5 | Fútbol |
| 6 | Tenis |
| 7 | Alpinismo |
| 8 | Fotografía |
| 9 | Hipismo |
| 5 | Fútbol |
| 11 | Trotar |
