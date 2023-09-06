-- Revisa cuáles son los vendedores que están de vacaiones y que fueron admitidos antes del 2016

USE jugos;

SELECT * FROM tb_vendedores WHERE DE_VACACIONES = 1 AND YEAR(FECHA_ADMISION) < 2016;