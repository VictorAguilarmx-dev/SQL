-- El vendedor Joan Geraldo de la Fonseca Junior matrícula(00233) fue despedido.

-- Hay que retirarlo de la tabla de vendedores.

USE jugos;

DELETE FROM tabla_de_vendedores WHERE MATRICULA = '00233';

SELECT * FROM tabla_de_vendedores;