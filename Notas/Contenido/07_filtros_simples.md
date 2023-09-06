# Filtros simples

## Índice
- [Visualizar una tabla](#visualizar-una-tabla)
- [Visualizar $n$ campos de una tabla](#visualizar-campos-de-una-tabla)
- [Dar alias a un campo](#dar-un-alias-a-un-campo)
- [Mostros los primero $n$ registros](#mostrar-los-primeros-registros)
- [WHERE](#where)
***
En ocaciones en nuestras bases de datos contamos con tablas con muchos campos, los cuales a la hora de hacer consultas muchos no nos son de gran utilidad, los filtros nos ayudan a tener una mejor de experiencia a la hora de visualizar o de operar una tabla

## Visualizar una tabla
`SELECT * FROM "nombre_tabla";`

Ejemplo: 

```SQL
SELECT * FROM usuarios;
```

## Visualizar $n$ campos de una tabla
Supon que tenemos una tabla de 1000 columnas pero sólo necesitamos 10 columnas para hacer un análisis, el siguiente comando nos ayuda a visualizar sólo los campos que necesitamos de tablas muy grandes. 

`SELECT "campo_1", "campo_2", ... "campo_n" FROM "nombre_tabla";`

Ejemplo

```SQL
SELECT NOMBRE, EDAD, CIUDAD FROM usuarios;
```

+ No interesa el orden en el que coloquemos los campos

## Dar un alias a un campo
Esto el dar un alias nos ayuda a entender mejor los datos

`SELECT "campo" AS "alias" FROM "nombre_tabla";`

Ejemplo

```SQL
SELECT SEXO AS GENERO FROM usuarios;
```

## Mostrar los primeros $n$ registros
`SELECT * FROM "nombre_tabla" LIMIT "n";`

Ejemplo: 

```SQL
SELECT NOMBRE, SEXO, EDAD FROM usuarios LIMIT 6;
```

## WHERE
El comando where lo utilizamos para encontrar coincidencias respecto a un campo

`SELECT * FROM "nombre_tabla" WHERE "campo" = "valor";`

Ejemplo:

```SQL
SELECT * FROM tbproductos WHERE SABOR = 'limón';
```

En este caso queremos mostrar los registros de la tabla productos que tiene sabor limón.

También utilizamo `WHERE` cuando queremos modificar una tabla, por ejemplo

```SQL
UPDATE tbproductos SET SABOR = 'cítrico' WHERE SABOR = 'limón';
```

En este caso queremos cambiar en la tabla tbproductos el sabor limón por cítrico.