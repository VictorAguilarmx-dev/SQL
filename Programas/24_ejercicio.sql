-- Investiga cuáles son los vendedores que poseen comisión superior al 10%

USE jugos;

SELECT * FROM 
    tb_vendedores
WHERE 
    PORCENTAJE_COMISION > 0.1;