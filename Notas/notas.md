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
