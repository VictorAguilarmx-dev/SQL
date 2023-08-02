# Comandos sobre una tabla

## Índice
- [Crear una tabla](#crear-una-tabla)
- [Eliminar una tabla](#eliminar-una-tabla)
- [Describir los tipos de datos en una tabla](#describir-los-tipos-de-datos-en-una-tabla)
- [Visualizar una tabla](#visualizar-una-tabla)
- [Insertar registros en una tabla](#insertar-registros-en-una-tabla)
- [Modificar registros en una tabla](#modificar-registros-en-una-tabla)
- [Agregar una nueva columna en la tabla](#modificar-registros-en-una-tabla)
- [Eliminar registros en una tabla](#eliminar-registros-en-una-tabla)
***
## Crear una tabla
`CREATE TABLE "nombre_tabla"(
    "nombre_campo" "tipo_dato",
    ...
)`

Ejemplo:

```SQL
    CREATE TABLE tb_clientes(
    DNI VARCHAR(20),
    NOMBRE VARCHAR(150),
    DIRECCION1 VARCHAR(150),
    DIRECCION2 VARCHAR(150),
    BARRIO VARCHAR(50),
    CIUDAD VARCHAR(50),
    ESTADO VARCHAR(50),
    CP VARCHAR(10),
    EDAD SMALLINT,
    SEXO VARCHAR(1),
    LIMITE_CREDITO FLOAT,
    VOLUMEN_COMPRA FLOAT,
    PRIMERA_COMPRA BIT(1)
);
```

## Eliminar una tabla
`DROP TABLE "nombre_tabla";`

Ejemplo:

```SQL
DROP TABLE tb_clientes;
```

## Describir los tipos de datos en una tabla
El siguiente comando describe la estructura de una tabla, es decir muestra el tipo de dato de cada campo.

`DESCRIBE "nombre_tabla";`

## Visualizar una tabla
`SELECT * FROM "nombre_tabla";`

Ejemplo:

```SQL
SELECT * FROM tbproductos;
```

## Insertar registros en una tabla
Para insertar sólo un registro utilizamos la siguiente sintaxis:

`INSERT INTO "nombre_tabla"("campo_1", ...) VALUES ("registro_1", ...);`

Ejemplo:

```SQL
INSERT INTO tbproductos( producto, nombre, envase, volumen, sabor, precio) VALUES ('773912', 'clean', 'botella pet', '1 litros', 'naranja', 8.01);
```

Para insertar más de un registro utilizamos la siguiente sintaxis:

`INSERT INTO "nombre_tabla"("campo_1", ...) VALUES ("registro_1", ...), ("registro_1",...), ...;`

Ejemplo:

```SQL
INSERT INTO tbproductos( producto, nombre, envase, volumen, sabor, precio) VALUES ('773912', 'clean', 'botella pet', '1 litros', 'naranja', 8.01), ('884023', 'clean', 'botella vidrio', '600 ml', 'limón', 7.80), ('773412', 'clean', 'botella pet', '3 litros', 'manzana', 24.53);
```

## Modificar registros en una tabla
El uso de este comando es para corregir errores o actualizar la tabla en un registro.

`UPDATE "nombre_tabla" SET "campo_1" = "valor_nuevo_1", ... WHERE "campo" = "valor"` 

Entre el comando `SET` y el comando `WHERE` escribiremos el campo y el registro nuevo, mientras que después del comando `WHERE` escribiremos un campo y registro que identifiquen al registro a modificar.

Ejemplo: Supongamos que tenemos el siguiente registro

```SQL
INSERT INTO tbproductos( PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) VALUES ('773912', 'clean', 'botella pet', '1 litros', 'naranja', 8.01);
```

Pero nos equivocamos al escribir el sabor y el volúmen del producto. Se supone que para ese producto los valores deben de ser lima/limón y 600ml, entonces, para modificar el registro lo haríamos de la siguiente forma:

```SQL
UPDATE tbproductos SET SABOR = 'lima/limón', VOLUMEN = '600 ml' WHERE PRODUCTO = '773912';
```

En este ejemplo utilizamo el campo `PRODUCTO` para identificar el registro a modificar.

Hay que tener cuidado en elegir el campo que nos ayude a identificar el registro a modificar ya que podemos seguir cometiendo errores. Por ejemplo. Considere el siguiente registro

```SQL
INSERT INTO tbproductos( PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) VALUES ('884032', 'jungle', 'botella pet', '1 litros', 'naranja', 10.01);
```

Supongamos que queremos moficar el sabor del registro con nombre clean a lima/limón, es decir, cambiar de naranja a lima/limón y utilizamos como el campo de envase para modificar el sabor, entonces si aplicamos el comando 

```SQL
UPDATE tbproductos SET SABOR = 'lima/limón' WHERE ENVASE = '1 litros';
```

No sólo modificaríamos el registro, también modificaríamos el registro de nombre jungle, el cual no queremos modificar.

Es por esta razón la importancia del campo de identificación, este debe ser único en el registro.

## Agregar una nueva columna en la tabla
Podemos agregar columnas nuevas una vez hayamos creado una tabla, para ello usaremos la siguiente sintaxis:

`ALTER TABLE "nombre_tabla" ADD COLUMN ("campo" "tipo_datos");`

Ejemplo:

```SQL
ALTER TABLE usuarios ADD COLUMN(FECHA_NACIMIENTO DATE);
```

En este caso en la tabla usuarios estamos creando la columna con el campo `FECHA_NACIMIENTO`, la cual tiene como datos una fecha.

## Eliminar registros en una tabla
Para borrar un registro utilizamos la siguiente sintaxis

`DELETE FROM "nombre_tabla' WHERE "campo" = "valor"`

El campo y el valor despúes del `WHERE` es un campo de identificación del registro a eliminar

Ejemplo:

Supongamos que tenemos el siguiente registro

```SQL
INSERT INTO tbproductos( PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) VALUES ('773912', 'clean', 'botella pet', '1 litros', 'naranja', 8.01);
```

El cual queremos eliminar de nuestra tabla, entonces escribimos:

```SQL
DELETE FROM tbproductos WHERE PRODUCTO = '773912';
```

Utilizamos el campo `PRODUCTO` para identificar el registro por que puede pasar que otros registros compartan los valores del registro a eliminar, mientras que el código del producto es único para cada registro en la tabla.
