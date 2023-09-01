# Funciones
***
## Índice
- [Funciones con strings](#funciones-con-strings)
- [Funciones de fecha]
- [Funciones matemáticas]
***
Lo que diferencia a los multiples servicios de bases de datos son las funciones que contengan las plataformas.

## Funciones con strings
Algunas funciones exclusivas de los strings son
-`LTRIM / RTRIM` Elimina los espacios a la izquiera o derecha de un string

```sql
SELECT LTRIM("     MySQL es fácil");
SELECT RTRIM("MySQL es fácil     ");
```
- `Trim` Combina `LTRIM` y `RTRIM`

```sql
SELECT TRIM("    MySQL es fácil      ");
```

- `CONCAT` Permite concatenar strings

```sql
SELECT CONCAT("MySQL es fácil,", " no lo crees?");
```

- `UPPER` Convierte el strings en letras mayúsculas

```sql
SELECT UPPER("mysql es una base de datos interesante.");
```

- `LOWER` Convierte el strings en letras minúsculas

```sql
SELECT LOWER("MYSQL ES UNA BASE DE DATOS INTERESANTE.");
```

- `SUBSTRING` Muestra una parte específica de un string

```sql
SELECT SUBSTRING("mysql es una base de datos interesante.", 14, 4)
```

## Funciones de fecha
-ADDDATE
-CURDATE
-CURRENT_TIMESTAMP
-DATE
-DATEDIFF
-DAY
-DAYNAME
-DAYOFMONTH
-DAYOFWEEK
-HOUR
-LOCALTIMESTAMP
-YEAR
-WEEK

## Funciones matemáticas
-ABS
-CEILING
-FLOOR
-RAND

## Convertir datos
Podemos utilizar funciones para convertir determindos datos al interior de un campo.
-DATE_FORMAT
-CONVERT 
-SUBSTRING