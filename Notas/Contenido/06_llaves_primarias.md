# Llaves primarias

## Índice
- [Asignar llave primaria](#asignar-llave-primaria)
    - [Asignar llave primaria en la creación de una tabla](#asignar-llave-primaria-en-la-creación-de-una-tabla)
    - [Asignar llave primaria en una talba existente](#asignar-llave-primaria-en-una-tabla-existente)
- [Eliminar una llave primaria](#eliminar-una-llave-primaria)
***
Las llaves primarias sirven para manterner la integridad de los datos, por ejemplo, no tener registros duplicados

## Asignar llave primaria
Tenemos 2 formas de asignar la llave primaria en un tabla

### Asignar llave primaria en la creación de una tabla
`CREATE TABLA "nombre_tabla"("campo_1" "tipo_valor", ... "campo_n" "tipo_valor_n", primary key ("campo_k"));`

En este caso el campo $k$ tiene la llave primaria, donde $1 <= k <=n$

Ejemplo:
```SQL
CREATE TABLE usuarios ( NOMBRE varchar(20), CLAVE varchar(10), PRIMARY KEY (NOMBRE));
```

En este caso en la tabla de usuarios el campo NOMBRE tiene la llave primaria.

### Asignar llave primaria en una tabla existente

`ALTER TABLE "nombre_tabla" ADD PRIMARY KEY ("campo");`

En este caso el campo que colocamos entre paréntesis es el campo que va a tener la llave primaria de la tabla.

Ejemplo:

```SQL
ALTER TABLE usuarios ADD PRIMARY KEY (NOMBRE);
```

## Eliminar una llave primaria
Para eliminar la llave primaria en una tabla usamos la siguiente sintaxis:

`ALTER TABLE "nombre_tabla" DROP PRIMARY KEY`
