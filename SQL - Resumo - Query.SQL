CREATE TABLE nome-tabela (
nome-coluna1 tipo-de-dado-coluna1 coluna1-constraint,
nome-coluna2 tipo-de-dado-coluna2 coluna2-constraint,
nome-coluna3 tipo-de-dado-coluna3 coluna3-constraint,
constraint-de-tabela
);

UPDATE nome-tabela SET nome-coluna1 = valor1, nome-coluna2 = valor2 WHERE <condição>;

INSERT INTO nome-tabela 
(nome-coluna1, nome-coluna2) 
values (1, 2),
values (3, 2);

ALTER TABLE nome-tabela1 ADD nome-coluna2;

ALTER COLUMN nome-coluna1 varchar (300) NOT NULL;

EXEC SP_RENAME 'nome-tabela.nome-coluna-antiga', 'nome-coluna-nova', 'column';

EXEC SP_RENAME 'nome-tabela-antiga', 'nome-tabela-nova';

SELECT * INTO nome-tabela1 FROM nome-tabela2;

DELETE FROM nome-tabela WHERE nome-coluna1 = 'X';

SELECT nome-coluna1 FROM nome-tabela;
SELECT nome-coluna1 AS 'Título-para-coluna1', nome-coluna2 AS 'Título-para-coluna2', FROM nome-tabela;
SELECT * FROM nome-tabela;

SELECT DISTINCT nome-coluna, nome-coluna FROM nome-tabela;

SELECT nome-coluna, nome-coluna FROM nome-tabela WHERE <condicao>;
SELECT * FROM nome-tabela WHERE <condicao>;

SELECT COUNT(*) FROM nome-tabela;
SELECT COUNT(nome-coluna) FROM nome-tabela;
SELECT COUNT (DISTINCT nome-coluna) FROM nome-tabela;

SELECT TOP 10 * FROM nome-tabela;
SELECT TOP 10  nome-coluna FROM nome-tabela;
SELECT TOP 10  nome-coluna AS 'Título-para-coluna' FROM nome-tabela;

SELECT * FROM nome-tabela ORDER BY nome-coluna ASC/DESC;
SELECT * FROM nome-tabela ORDER BY nome-coluna1 ASC, nome-coluna2 DESC;
SELECT nome-coluna1, nome-coluna2 FROM nome-tabela ORDER BY nome-coluna 1 ASC, nome-coluna2 DESC;
SELECT nome-coluna1, nome-coluna2 FROM nome-tabela ORDER BY nome-coluna3 ASC;

SELECT nome-coluna FROM ome-tabela WHERE nome-coluna BETWEEN 1000 AND 1500;
SELECT * FROM nome-tabela WHERE  nome-coluna NOT BETWEEN 1000 AND 1500;

SELECT * FROM nome-tabela WHERE nome-coluna IN (2,3,7);
SELECT * FROM nome-tabela WHERE nome-coluna1 = 2 OR nome-coluna2 = 3 OR nome-coluna3 = 7;
SELECT * FROM nome-tabela WHERE nome-coluna NOT IN (2,3,7);

SELECT * FROM nome-tabela WHERE nome-coluna LIKE '_A%';

SELECT MAX(nome-coluna) AS 'Máximo' FROM nome-tabela;
SELECT MIN(nome-coluna) AS 'Mínimo' FROM nome-tabela;
SELECT AVG(nome-coluna) AS 'Média' FROM nome-tabela;
SELECT SUM(nome-coluna) FROM nome-tabela;
SELECT TOP 3 SUM(nome-coluna) FROM nome-tabela;
SELECT SUM(nome-coluna) AS 'Soma' FROM nome-tabela;

SELECT nome-coluna1, SUM(nome-coluna2) AS 'Soma' FROM nome-tabela GROUP BY nome-coluna1;

SELECT nome-coluna1, MAX(nome-coluna2) FROM nome-tabela GROUP BY nome-coluna1 HAVING <condicao>

SELECT nome-coluna1, COUNT(nome-coluna1) AS 'Quantidade' FROM nome-tabela GROUP BY nome-coluna1 HAVING COUNT(nome-coluna1) > 10;
SELECT nome-coluna1, COUNT(nome-coluna1) FROM nome-tabela WHERE <condicao> GROUP BY nome-coluna1 HAVING COUNT(nome-coluna1) > 10;

SELECT nome-tabela1.nome-coluna1, t1.nome-coluna2, t2.nome-coluna3 FROM nome-tabela1 AS t1 INNER JOIN nome-tabela2 AS t2 ON t2.nome-coluna3 = t1.nome-coluna3;