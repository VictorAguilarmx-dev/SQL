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