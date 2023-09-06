-- Recibimos la siguiente información:

-- Claudia Moral(00236) recibió un aumento y su comisión pasó a ser 11%. Joan Geraldo de la Fonseca(00233) reclamó que su nombre real es Joan Geraldo de la Fonseca Junior.

-- Efectúe estas correcciones en la base de datos.
USE jugos;

UPDATE tabla_de_vendedores SET PORCENTAJE_COMISION = 0.11 WHERE MATRICULA = '00236';

UPDATE tabla_de_vendedores SET NOMBRE = 'Joan Geraldo de la Fonseca Junior' WHERE MATRICULA = '00233';

SELECT * FROM tabla_de_vendedores;