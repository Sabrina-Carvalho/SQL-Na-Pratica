CREATE TABLE nome-tabela (
nome-coluna1 tipo-de-dado-coluna1 coluna1-constraint,
nome-coluna2 tipo-de-dado-coluna2 coluna2-constraint,
nome-coluna3 tipo-de-dado-coluna3 coluna3-constraint,
constraint-de-tabela
);

UPDATE nome-tabela SET
nome-coluna1 = valor1,
nome-coluna2 = valor2
where <condição>;

INSERT INTO nome-tabela 
(nome-coluna1, nome-coluna2) 
values (1, 2),
values (3, 2);

ALTER TABLE nome-tabela1 ADD nome-coluna2;

ALTER COLUMN nome-coluna1 varchar (300) NOT NULL;

EXEC SP_RENAME 'nome-tabela.nome-coluna-antiga', 'nome-coluna-nova', 'column';

EXEC SP_RENAME 'nome-tabela-antiga', 'nome-tabela-nova';

SELECT * INTO nome-tabela1 FROM nome-tabela2

DELETE FROM nome-tabela 
WHERE nome-coluna1 = 'X'