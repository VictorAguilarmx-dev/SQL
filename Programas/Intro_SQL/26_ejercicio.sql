-- Investiga cuáles son los vendedores que fuero admitidos en la empresa a partir del 2016

USE jugos;

SELECT * FROM tb_vendedores WHERE YEAR(FECHA_ADMISION) >= 2016;