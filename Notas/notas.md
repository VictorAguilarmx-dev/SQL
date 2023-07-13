# Notas SQL

## Índice

- [¿Qué es SQL?](#que-es-sql)
- [Historia de SQL](#historia-de-sql)
- [Ventajas y Desventajas de SQL](#ventajas-y-desventajas-de-sql)
    - [Ventajas](#ventajas)
    - [Desventajas](#desventajas)
- [Historia de MySQL](#historia-de-mysql)
- [Características de MySQL](#caracterísitcas-de-mysql)
- [Conceptos básicos](#conceptos-básicos)
    - [Tipos de campo](#tipos-de-campo)
    - [Campos](#campos)
    - [Registros](#registros)
    - [Clave primaria](#clave-primaria)
    - [Clave externa](#clave-externa)
    - [Esquemas](#esquemas)
    - [View](#view)
    - [Procedures](#procedures)
    - [Triggers](#triggers)
- [Tipos de datos](#tipos-de-datos)
    - [Numéricos](#numéricos)
    - [Fecha y hora](#fecha-y-hora)
    - [String](#string)
- [Comandos sobre una base de datos](#comandos-sobre-una-base-de-datos)
    - [Creación de una base de datos](#creación-de-una-base-de-datos)
    - [Seleccionar una base de datos](#seleccionar-una-base-de-datos)
    - [Eliminar una base de datos](#eliminar-una-base-de-datos)
    - [Mostrar las tablas en una base de datos](#mostrar-las-tablas-en-una-base-de-datos)
- [Comandos sobre una tabla](#comandos-sobre-una-tabla)
    - [Crear una tabla](#crear-una-tabla)
    - [Eliminar una tabla](#eliminar-una-tabla)
    - [Describir los tipo de dato en una tabla](#describir-los-tipos-de-datos-en-una-tabla)
    - [Visualizar una tabla](#visualizar-una-tabla)
    - [Insertar registros en una tabla](#insertar-registros-en-una-tabla)
    - [Modificar registros en una tabla](#modificar-registros-en-una-tabla)
    - [Agregar una nueva columna en la tabla](#agregar-una-nueva-columna-en-la-tabla)
    - [Eliminar registros en una tabla](#eliminar-registros-en-una-tabla)
- [Llaves primarias](#llaves-primarias)
    - [Asignar llave primaria](#asignar-llave-primaria)
        - [Asignar llave primaria en la creación de una tabla](#asignar-llave-primaria-en-la-creación-de-una-tabla)
        - [Asignar llave primaria en una tabla existente](#asignar-llave-primaria-en-una-tabla-existente)
    - [Eliminar llave primaria](#eliminar-una-llave-primaria)
- [Filtros simples](#filtros-simples)
    - [Visualizar una tabla completa](#visualizar-una-tabla-completa)
    - [Visualizar $n$ campos de una tabla](#visualizar-campos-de-una-tabla)
    - [Dar un alias a un campo](#dar-un-alias-a-un-campo)
    - [Mostrar los primeros $n$ registros](#mostrar-los-primeros-registros)
    - [Where](#where)
- [Filtros compuestos](#filtros-compuestos)
    - [In](#in)
    - [Filtros con comparativos matemáticos](#filtros-comparativos-matemáticos)
    - [Filtro entre un rango](#filtro-entre-un-rango)
    - [Filtros con fechas](#filtros-con-fechas)
    - [Filtros condicionales](#filtros-condicionales)
        - [AND](#and)
        - [OR](##or)
        - [AND y OR](#and-y-or)
        - [NOR / NOT OR](#nor--not-or)
        - [NAND / NOT AND](#nand--not-and)

## ¿Qué es SQL?
SQL significa Estándar Query Language

SQL es un lenguaje estándar para trabajar con bases de datos relacionales. Es un lenguaje declarativo.

El Lenguaje SQL se utiliza de forma relativamente similar entre las principales bases de datos relacionales del mercado: Oracle, MySQL, MariaDB, PostgreSQL, Microsoft SQL Server, entre muchos otros.

## Historia de SQL
- En los años 70 IBM investiga sobre un sistema de consultas a bases de datos relacionales creado por Edar Frank Codd.
- En los años 80 Oracle, Microsoft comienzan a utilizar SQL para trabajar con bases de datos.
- Por su popularidad la ANSI crea una regularción para el.

## Ventajas y Desventajas de SQL
### Ventajas
- Costo reducido de aprendizaje.
- Portabilidad.
- Longevidad.
- Comunicación.
- Libertad de elección.

### Desventajas
- Falta de creatividad.
- NoSQL.
- Falta de más estructuración de su lenguaje.

## Historia de MySQL
- Crado por David Axmark, Allan Larsson y Michael Widenius.
- Vieron la necesidad de una interfaz compatible.
- Desarrollaron su propia API de consultas y base de datos utilizando C++.
- Es un Software libre.
- En 2008 Sun Microsystems compró MySQL.
- En 2009 Oracle compró a Sun Microsystems y se quedó con MySQL y con JAVA.

## Caracterísitcas de MySQL
- **Servidor Robusto**. Multi-access, Data Integrity, Transaction control.
- **Portabilidad**. Windows/Linux. Acceso a datos usando DotNet, Python, Java, JS, PHP...
- **Multi-threads**. Facilita la integración con Hardware. + Escalabilidad.
- **Almacenamiento**. Prioriza Velocidad/Volumen.
- **Velocidad**. + Rápidos, e-commerce, AWS/BigQuery/Azure tienen instancias de MySQL.
- **Seguridad**. Diversos mecanismos.
- **Capacidad**. Hasta 65000TB.
- **Aplicabilidad**. Internet/desktop/corporativo.
- **Logs**. Registra todo. Recuperación. Réplica de servidores.

## Conceptos básicos
- **Base de datos**: Repositorio que almacena datos que pueden ser consultados.
- **Tabla**: Objeto en el cual predefiniremos el número de columnas y el tipo de cada columna.
- **Campos**: Columnas de una tabla.
- **Registros**: Renglones de una tabla.
- **Índice**: Número que nos ayuda a localizar un registro o una serie de registros al interior de la tabla.
- **Clave primaria**: Campo en el que ninguno de sus registros se puede repetir.
- **Clave externa (foránea)**: Campo que permite relacionar múltimples tablas entre si.
- **Esquema**: Agrupación de tablas.
- **View (Vista)**:
- **Procedures (Procedimientos)**:
- **Trigger (Disparador)**:

La tabla es la entidad más importante en una base de datos. A la hora de crear una tabla tenemos que definir:

- La cantidad de campos que va a tener la tabla.
- El tipo de dato que le asignaremos a cada campo.

### Tipos de campo
- **Texto**: char, varchar, text...
- **Numéricos**: int, bigint, smallint, float, boolean...
- **Fecha**: date, datetime, timestamp...

Si no introducimos la información de acuerdo con el tipo de camo definido, se generan errores.

### Campos
- Se definen al momento de su creación.
- Número limitado
- No admite datos que no fueron especificados.

### Registros
- Son datos contenidos en los campos.
- Número ilimitados.
- Límite máximo dado por la capacidad del almacenamiento disponible en el disco.
- Al momento de la creación de la base de datos se pueden establecer políticas de crecimiento.

### Clave primaria
- Es un campo opcional.
- Su combinación no se puede repetir en ningún otro registro de la tabla.

### Clave externa
- Campo que relaciona las tablas.
- Garantiza la integridad de datos.

### Esquemas
- Facilitan la agrupación de tablas por temas.

### View
- Consultas de $n$ tablas al mismo tiempo.
- Alto costo de procesamiento.
- Facilita la obtención de datos en distintas tablas

### Procedures
- Lógica estructurada con lenguaje nativo del mismo SQL (if, while, for...).
- Pdemos crear funciones

### Triggers
- Avisos automáticos cuando hay algún tipo de cambio en la base de datos o en la tabla.
- Ejecuta una función o procedimiento cuando la condición del trigger es satisfecha.

## Tipos de datos 

### Numéricos
Este tipo de dato tiene los siguientes atributos: 

- **SIGNED o UNSIGNED**: Con signo o sin signo
- **ZEROFILL**: Llena los espacios con cero. Ej. INT(5) si almacenamos 54, el capo va a quedar 00054.
- **AUTO_INCREMENT**: Hay un incremento secuencial
- **OUT OF RANGE**: Es un error que se presenta cuando los valores se salen de los límites.

#### Números enteros
| Tipo | Valor en Bytes | Menor valor (con signo) | Menor valor (sin signo) | Mayor valor (con signo) | Mayor valor (sin signo) |
| --- | --- | --- | --- | --- | --- |
| TINYINT | 1 | -128 | 0 | 127 | 255 |
| SMALLINT | 2 | -32768 | 0 | 32767 | 65535 | 
| MEDIUMINT | 3 | -8388608 | 0 | 8388607 | 16777215 |
| INT | 4 | -2147483648 | 0 | 2147483647 | 4294967295 |
| BIGINT | 8 | $-2^{63}$ | 0 | $2^{63}-1$ | $2^{64}-1$|

#### Números Decimales
| Tipo | Precisión en Bytes | Tipo | 
| --- | --- | --- |
| FLOAT | 4 | Simple |
| DOUBLE | 8 | Double |

Ej. FLOAT(6,4) e incluimos el número 76,00009 el valor almacenado será 76,0001

| Tipo | Cantidad de dígitos | 
| --- | --- |
| DECIMAL / NUMERIC | 65 |

Es un número fijo, si declaramos DECIMAL(5,3) solo podremos almacenar desde -99,999 hasta 99,999.

#### Bit
| Tipo | Cantidad de Bits | 
| --- | --- |
| BIT | 64 |

### Fecha y Hora
| Tipo | Rango |
| --- | --- |
| DATE | 1000-01-01  hasta 9999-12-31 |
| DATETIME | 1000-01-01 00:00:00  hasta 9999-12-31 23:59:59 |
| TIMESTAMP | 1970-01-01 00:00:01 UTC hasta 2038-01-19 UTC |
| TIME | -838:59:59 hasta 839:59:59 |
| YEAR | 1901 hasta 2155 (Se puede expresar en formato de 2 o 4 dígitos) |

### String

| Tipo | Descripción | Rango | Ejemplo |
| --- | --- | --- | --- | 
| CHAR | Cadena de caracteres con valor fijo | 0 - 255 | CHAR(4) = "aa" --> "**aa" |
| VARCHAR | Cadena de caracteres con valor variable | 0 - 255 | VARCHAR(4) = "aa" --> "aa" |
| BINARY | Cadena de caracteres con valor fijo (num binarios - bits) | 0 - 255 | - |
| VARBINARY | Cadena de caracteres con valor variable (num binarios - bits) | 0 - 255 | - |
| BLOB | Binarios largos | - | TINYBLOB, MEDIUMBLOB, LONGBLOB |
| TEXT | Texto largo | - | TINYTEXT, MEDIUMTEXT, LONGTEXT |
| ENUM | Definir opciones en una lisa predefinida | - | Talla ENUM("pequeño", "medio", "grande") |

Los strings tienen los siguientes atributos:

- **SET** y **COLLATE**: El tipo de conjunto de caracteres que se va a aceptar (utf-8, utf-16...)

También tenemos atributos de campos espaciales (GPS)

- **GEOMETRY**: Área
- **LINESTRING**: Línea
- **POINT**: Punto
- **POLYGON**: Área

## Comandos sobre una base de datos
SQL no distingue entre mayúsculas y minúsculas, pero si tiene buenas prácticas, las cuales son:

- Todos los comandos se escriben con mayúsculas.
- Los nombre de las bases de datos van con minúsculas.
- El nombre de las tablas van con minúsculas.
- El nombre de los campo va con mayúsculas.

### Creación de una base de datos
`CREATE DATABASE "nombre_base_de_datos";`

Ejemplo:

```SQL
CREATE DATABASE jugos;
```

### Seleccionar una base de datos
`USE "base_de_datos";`

Ejemplo:

```SQL
USE jugos;
```

### Eliminar una base de datos
`DROP DATABASE "nombre_base_de_datos";`

Ejemplo:

```SQL
DROP DATABASE jugos;
```

### Mostrar las tablas en una base de datos
Para este comando es necesario haber seleccionado una base de datos anteriormente 

`SHOW TABLES;`

## Comandos sobre una tabla

### Crear una tabla
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

### Eliminar una tabla
`DROP TABLE "nombre_tabla";`

Ejemplo:

```SQL
DROP TABLE tb_clientes;
```

### Describir los tipos de datos en una tabla
El siguiente comando describe la estructura de una tabla, es decir muestra el tipo de dato de cada campo.

`DESCRIBE "nombre_tabla";`

### Visualizar una tabla
`SELECT * FROM "nombre_tabla";`

Ejemplo:

```SQL
SELECT * FROM tbproductos;
```

### Insertar registros en una tabla
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

### Modificar registros en una tabla
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

### Agregar una nueva columna en la tabla
Podemos agregar columnas nuevas una vez hayamos creado una tabla, para ello usaremos la siguiente sintaxis:

`ALTER TABLE "nombre_tabla" ADD COLUMN ("campo" "tipo_datos");`

Ejemplo:

```SQL
ALTER TABLE usuarios ADD COLUMN(FECHA_NACIMIENTO DATE);
```

En este caso en la tabla usuarios estamos creando la columna con el campo `FECHA_NACIMIENTO`, la cual tiene como datos una fecha.

### Eliminar registros en una tabla
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

## Llaves primarias
Las llaves primarias sirven para manterner la integridad de los datos, por ejemplo, no tener registros duplicados

### Asignar llave primaria
Tenemos 2 formas de asignar la llave primaria en un tabla

#### Asignar llave primaria en la creación de una tabla
`CREATE TABLA "nombre_tabla"("campo_1" "tipo_valor", ... "campo_n" "tipo_valor_n", primary key ("campo_k"));`

En este caso el campo $k$ tiene la llave primaria, donde $1 <= k <=n$

Ejemplo:
```SQL
CREATE TABLE usuarios ( NOMBRE varchar(20), CLAVE varchar(10), PRIMARY KEY (NOMBRE));
```

En este caso en la tabla de usuarios el campo NOMBRE tiene la llave primaria.

#### Asignar llave primaria en una tabla existente

`ALTER TABLE "nombre_tabla" ADD PRIMARY KEY ("campo");`

En este caso el campo que colocamos entre paréntesis es el campo que va a tener la llave primaria de la tabla.

Ejemplo:

```SQL
ALTER TABLE usuarios ADD PRIMARY KEY (NOMBRE);
```

### Eliminar una llave primaria
Para eliminar la llave primaria en una tabla usamos la siguiente sintaxis:

`ALTER TABLE "nombre_tabla" DROP PRIMARY KEY`

## Filtros simples
En ocaciones en nuestras bases de datos contamos con tablas con muchos campos, los cuales a la hora de hacer consultas muchos no nos son de gran utilidad, los filtros nos ayudan a tener una mejor de experiencia a la hora de visualizar o de operar una tabla

### Visualizar una tabla completa
`SELECT * FROM "nombre_tabla";`

Ejemplo: 

```SQL
SELECT * FROM usuarios;
```

### Visualizar $n$ campos de una tabla
Supon que tenemos una tabla de 1000 columnas pero sólo necesitamos 10 columnas para hacer un análisis, el siguiente comando nos ayuda a visualizar sólo los campos que necesitamos de tablas muy grandes. 

`SELECT "campo_1", "campo_2", ... "campo_n" FROM "nombre_tabla";`

Ejemplo

```SQL
SELECT NOMBRE, EDAD, CIUDAD FROM usuarios;
```

+ No interesa el orden en el que coloquemos los campos

### Dar un alias a un campo
Esto el dar un alias nos ayuda a entender mejor los datos

`SELECT "campo" AS "alias" FROM "nombre_tabla";`

Ejemplo

```SQL
SELECT SEXO AS GENERO FROM usuarios;
```

### Mostrar los primeros $n$ registros
`SELECT * FROM "nombre_tabla" LIMIT "n";`

Ejemplo: 

```SQL
SELECT NOMBRE, SEXO, EDAD FROM usuarios LIMIT 6;
```

### WHERE
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

## Filtros compuestos
Los filtros compuestos se utilizan para tener más precisión a la hora de hacer consultas

### IN 
Esta operación se utiliza cuando queremos filtrar por una lista de valores

`SELECT * FROM "nombre_tabla" WHERE "campo" IN ("valor_1", "valor_2", ...);`

Ejemplo:

```SQL
SELECT * FROM productos WHERE SABOR IN ("mango", "uva", "limón");
```

Esto nos mostrará los productos que tengan sabor mango, uva y limón.

### Filtros comparativos matemáticos (<, >, =, <=, >=, <>)
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

### Filtro entre un rango
`SELECT * FROM "nombre_tabla" WHERE "campo" BETWEEN "valor_lim_inf" AND "valor_lim_sup";`

Ejemplo

```SQL
SELECT * FROM usuarios WHERE EDAD BETWEEN 15 AND 35;
```
En este caso estamos pidiendo que nos muestre todos los usuarios que tengan edad entre 15 y 35.

### Filtros con fechas.
Para filtrar usando fechas tenemos funciones para especificar año, mes y día.

Es importante el uso de comparativos matemáticos para el filtrado de fechas.

#### Filtro con el año
`SELECT * FROM "nombre_tabla" WHERE YEAR("campo_fecha") = valor`

Ejemplo:

```SQL
SELECT * FROM usuarios WHERE YEAR(FECHA_NACIMIENTO) = 1995
```

En este caso queremos los usuarios que hayan nacido en 1995

#### Filtro con el mes
`SELECT * FROM "nombre_tabla" WHERE MONTH("campo_fecha") = valor`

Ejemplo:

```SQL
SELECT * FROM usuarios WHERE MONTH(FECHA_NACIMIENTO) <= 5
```

En este caso queremos ver los usuarios que hayan nacido en mayo o antes de mayo.

#### Filtro con el día
`SELECT * FROM "nombre_tabla" WHERE DAY("campo_fecha") = valor`

Ejemplo:

```SQL
SELECT * FROM usuarios WHERE DAY(FECHA_NACIMIENTO) <> 21
```

En este caso queremos ver los usuarios que no hayan nacido el día 21 de cualquier mes.

### Filtros condicionales
Podemos filtrar aún mas nuestra tabla agregando más condiciones en nuestro filtro, para ello utilizaremos operadores lógicos.

Podemos ver el resultado de las operación en la siguiente tabla:

Considere *Verdadero* = 1 y *Falso* = 0, entonces:

| A | B | OR | AND | NOT OR | NOT AND |
| --- | --- | --- | --- | --- | --- |
| 0 | 0 | 0 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 0 | 1 | 
| 1 | 0 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 0 | 0 |

#### AND
Podemos traducir `AND` como ‘‘y’’. El resultado de la operación es verdadero si todas sus condiciones son verdaderas

`SELECT * FROM "nombre_tabla" WHERE "condición_1" AND "condición_2"`

Ejemplo:

```SQL
SELECT * FROM productos WHERE SABOR = 'limón' AND ENVASE = 'botella vidrio';
```

En este caso nos mostrará todos los productos que tengan sabor limón y envase de botella de vidrio.

#### OR
Podemos tradución `OR` como ‘‘o’’. El resultado de la operación es verdadero si alguna de sus condiciones es verdadera

`SELECT * FROM "nombre_tabla" WHERE "condición_1" OR "condición_2"`

Ejemplo:

```SQL
SELECT * FROM productos WHERE SABOR = 'limón' OR ENVASE = 'botella vidrio';
```

En este caso nos mostrará todos los productos que tengan sabor limón o que tengan envase de botella de vidrio.

#### AND Y OR
Podemos combinar el uso de `AND` y `OR` según sea el caso

Ejemplo:

```SQL
SELECT * FROM productos WHERE (SABOR = 'naranja' AND VOLUMEN = '600 ml') OR (SABOR = 'limón' AND ENVASE = 'botella pet') 
```

En este caso nos mostrará los productos que tengan sabor naranja que tengan un volúmen de 600 ml o los productos que tengan sabor limón y tengan un envase de botella de pet.

#### NOR / NOT OR
Es la negación de la operación OR.

`SELECT * FROM "nombre_tabla" WHERE NOT ("condición_1) OR "condición 2" ...;`

Ejemplo:

```SQL
SELECT * FROM productos WHERE NOT (SABOR = 'mango') OR VOLUMEN = '600 ml'
```

#### NAND / NOT AND
Es la negación de la operación AND.

`SELECT * FROM "nombre_tabla" WHERE NOT ("condición_1) AND "condición 2" ...;`

Ejemplo: 

```SQL
SELECT * FROM productos WHERE NOT (SABOR = 'mango' AND VOLUMEN = '600 ml')
```

En este caso nos mostrará los productos que no tengan sabor mango y que no tengan un volúmen de 600 ml.
