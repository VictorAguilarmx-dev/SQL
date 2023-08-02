# Comandos sobre una base de datos

## Índice
- [Creación de una base de datos](#creación-de-una-base-de-datos)
- [Seleccionar una base de datos](#seleccionar-una-base-de-datos)
- [Eliminar una base de datos](#eliminar-una-base-de-datos)
- [Mostrar las tablas en una base de datos](#mostrar-las-tablas-en-una-base-de-datos)
***
SQL no distingue entre mayúsculas y minúsculas, pero si tiene buenas prácticas, las cuales son:

- Todos los comandos se escriben con mayúsculas.
- Los nombre de las bases de datos van con minúsculas.
- El nombre de las tablas van con minúsculas.
- El nombre de los campo va con mayúsculas.

## Creación de una base de datos
`CREATE DATABASE "nombre_base_de_datos";`

Ejemplo:

```SQL
CREATE DATABASE jugos;
```

## Seleccionar una base de datos
`USE "base_de_datos";`

Ejemplo:

```SQL
USE jugos;
```

## Eliminar una base de datos
`DROP DATABASE "nombre_base_de_datos";`

Ejemplo:

```SQL
DROP DATABASE jugos;
```

## Mostrar las tablas en una base de datos
Para este comando es necesario haber seleccionado una base de datos anteriormente 

`SHOW TABLES;`
