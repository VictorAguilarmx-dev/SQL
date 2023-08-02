# Tipos de datos

## Índice
- [Numéricos](#numéricos)
    - [Números enteros](#números-enteros)
    - [Números decimales](#números-decimales)
    - [Bit](#bit)
    - [Fecha y Hora](#fecha-y-hora)
    - [String](#string)
***
## Numéricos
Este tipo de dato tiene los siguientes atributos: 

- **SIGNED o UNSIGNED**: Con signo o sin signo
- **ZEROFILL**: Llena los espacios con cero. Ej. INT(5) si almacenamos 54, el capo va a quedar 00054.
- **AUTO_INCREMENT**: Hay un incremento secuencial
- **OUT OF RANGE**: Es un error que se presenta cuando los valores se salen de los límites.

### Números enteros
| Tipo | Valor en Bytes | Menor valor (con signo) | Menor valor (sin signo) | Mayor valor (con signo) | Mayor valor (sin signo) |
| --- | --- | --- | --- | --- | --- |
| TINYINT | 1 | -128 | 0 | 127 | 255 |
| SMALLINT | 2 | -32768 | 0 | 32767 | 65535 | 
| MEDIUMINT | 3 | -8388608 | 0 | 8388607 | 16777215 |
| INT | 4 | -2147483648 | 0 | 2147483647 | 4294967295 |
| BIGINT | 8 | $-2^{63}$ | 0 | $2^{63}-1$ | $2^{64}-1$|

### Números decimales
| Tipo | Precisión en Bytes | Tipo | 
| --- | --- | --- |
| FLOAT | 4 | Simple |
| DOUBLE | 8 | Double |

Ej. FLOAT(6,4) e incluimos el número 76,00009 el valor almacenado será 76,0001

| Tipo | Cantidad de dígitos | 
| --- | --- |
| DECIMAL / NUMERIC | 65 |

Es un número fijo, si declaramos DECIMAL(5,3) solo podremos almacenar desde -99,999 hasta 99,999.

### Bit
| Tipo | Cantidad de Bits | 
| --- | --- |
| BIT | 64 |

## Fecha y Hora
| Tipo | Rango |
| --- | --- |
| DATE | 1000-01-01  hasta 9999-12-31 |
| DATETIME | 1000-01-01 00:00:00  hasta 9999-12-31 23:59:59 |
| TIMESTAMP | 1970-01-01 00:00:01 UTC hasta 2038-01-19 UTC |
| TIME | -838:59:59 hasta 839:59:59 |
| YEAR | 1901 hasta 2155 (Se puede expresar en formato de 2 o 4 dígitos) |

## String
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