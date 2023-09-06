-- Vamos a crear dos vendedores más, en el mismo script SQL:

-- Matrícula: 00235

-- Nombre: Márcio Almeida Silva

-- Comision: 8%

-- y

-- Matrícula: 00236

-- Nombre: Cláudia Morais

-- Comision: 8%
USE jugos;

INSERT INTO tabla_de_vendedores(
    MATRICULA, NOMBRE, PORCENTAJE_COMISION
) VALUES 
('00235', 'Márco Almeida Silva', 0.08),
('00236', 'Cláudia Morais', 0.08);

SELECT * FROM tabla_de_vendedores;