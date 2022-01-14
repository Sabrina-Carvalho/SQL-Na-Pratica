# Criando um Database

## Tipos de Dados

Após decidir quais serão os dados armazenados no banco de dados. Chegou a hora de definir quais serão as características de cada um dos campos. A fim de fazer um bom uso das informações dispostas nele, assim como também o seu armazenamento. 

Para começar, cabe esclarecer que as **características** que o SQL dispõe, em outras palavras, corresponde ao tipo de **dado** e seu respectivo **tamanho** que cada campo pode ter.

##

👀 *Segundo o livro, SQL - Curso Prático...*
>*Apresentaremos o padrão utilizado pela maioria dos bancos de dados SQL e você deverá consultar as eventuais mudanças do banco de dados em que estiver trabalhando.*

**TIPO DE DADO** | **DESCRIÇÃO**
--- | ---
`INTEGER` / `INT` | Número positivo ou negativo inteiro. O número de bytes que pode ser utilizado varia em função do banco de dados utilizado.
`SMALLINT` | Mesma função do `INTEGER`, mas ocupa cerca da metade do espaço.
`NUMERIC` | Número positivo ou negativo de ponto flutuante. Normalmente, deve-se informar o tamanho total do campo e definir quantas casas decimais dever ser armazenadas após a vírgula.
`DECIMAL` | Semelhante ao `NUMERIC`, mas, em alguns bancos de dados, poderá ter uma maior precisão após a vírgula.
`REAL` | Número de ponto flutuante de simples precisão. A diferença básica é que os valores serão armazenados em representação exponencial, portanto seão arredondados para o nível mais próximo de precisão. 
`DOUBLE PRECISION` | Número de ponto flutuante de dupla precisão. Comporta-se como o `REAL`, mas permite maior aproximação de resultados. 
`FLOAT` | Número de ponto flutuante em que você define o nível de precisão (número de dígitos significativos).
`BIT` | Armazenamento de um número fixo de *bits*. O número de *bits* deve ser indicado, do contrário, o padrão será 1.
`BIT VARYING` | Igual ao `BIT`, permitindo armazenar vaores maiores. Normalmente, utiliza-se para armazenamento de imagens.
`DATE` | Permite armazenar datas.
`TIME` | Permite armazenar horários.
`TIMESTAMP` | Permite armazenar uma combinação de data e hora.
`CHARACTER` / `CHAR` | Permite armazenar cadeias de caracteres (letras, símbolos e números). O tamanho deve ser informado e será fixo, ou seja, o mesmo que não utilizado totalmente, será ocupado o espaço fisicamente. O valor definido será o tamanho máximo da cadeia armazenada. 
`CHARACTER VARYING` / `VARCHAR` | Permite armazenar cadeias de caracteres, mas com tamanho variável. Nesse caso, especifica-se o tamanho máximo da coluna. se for utilizado menos espaço que o máximo definido, o espaço restante não será ocupado.
`INTERVAL` | Intervalo de data e hora.

##

>💡 Para saber mais a respeito sobre os tipos de dados que o SQL Server suporta, basta acessar o link: https://docs.microsoft.com/pt-br/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver15

---

## Criando uma Tabela

No **SQL Server**, a sintaxe básica para a criação de uma tabela é a seguinte: 

`CREATE TABLE nome-tabela (
nome-coluna1 tipo-de-dado-coluna1 coluna1-constraint,
nome-coluna2 tipo-de-dado-coluna2 coluna2-constraint,
nome-coluna3 tipo-de-dado-coluna3 coluna3-constraint,
constraint-de-tabela
);`

*Onde:* 

**ARGUMENTO** | **DESCRIÇÃO**
--- | ---
`nome-tabela` | Nome da tabela. Deve ser único para o usuário. Não pode coincidir com o nome de outros objetos do banco de dados de um mesmo usuário.
`nome-coluna` | Nome da coluna. Esse nome deve ser único e exclusivo na tabela.
`tipo-de-dado-coluna` | Tipo de dado conforme tabela anterior.
`coluna-constraint` | Regras agregadas à coluna.
`constraint-de-tabela` | Regras agregadas à tabela inteira.

*Exemplo:*

![EveryonecanCode](https://i2.paste.pics/a316197a4a0d1cabdd7a8b554b2ee727.png)

---

## Tipos de Constraint Mais Comuns

**TIPOS DE CONSTRAINT** | **DESCRIÇÃO**
--- | ---
`CHAVE PRIMÁRIA` | **PRIMARY KEY** - Chave primária é a coluna, ou grupo de colunas, que permite identificar um único registro na tabela. Além disso, a mesma não permite repetição, e também, não permite conter valores nulos.
`CHAVE ESTRANGEIRA` | Chave estrangeira é o campo que estabelece o relaciomento entre duas tabelas. Assim, uma coluna, ou grupo de colunas, de uma tabela corresponde à mesma coluna, ou grupo de colunas, que é a chave primária de outra tabela.
`DEFAULT` | Serve para atribuir um conteúdo padrão a uma coluna da tabela, sempre que for incluída uma nova linha na tabela.
`NOT NULL` | Indica que o conteúdo de uma coluna não podrá ser **nulo**.
`UNIQUE` | Indica que não pode haver repetição no conteúdo da coluna.
`CHECK` | *CHECK = Definição de domínio* - Um domínio é uma expressão de valores possíveis para o conteúdo de uma coluna.
`ASSERTIVAS` | É utilizada para estabelecer restrição no banco de dados com base em dados de uma ou mais tabelas. *Dessa forma, você pode estabelecer como regra que a tabela "X" sempre tenha mais de uma linha.

--- 

## Inserindo Dados nas Colunas

`INSERT INTO nome-tabela 
(nome-coluna1, nome-coluna2) 
values (1, 2),
values (3, 2);`

>Observe que, ao inserir novos dados às colunas, os valores colocados seguem a ordem em que as colunas foram colocadas na *query*, ou seja: na *coluna1*, serão inseridos os valores 1 e 3, e já na *coluna2* serão o valores 2 e 2, e assim por diante.

*Exemplo:*

![EveryonecanCode](https://i2.paste.pics/bbc84a9b7f1d735c9cd1f5d7728b5ce3.png)
---

## Atualizando Colunas

`UPDATE nome-tabela SET
nome-coluna1 = valor1,
nome-coluna2 = valor2
where <condição>`

>Com base no *WHERE*, é possível determinar qual tipo de dado será substituído / alterado. 

*Exemplo:*

![EveryonecanCode](https://i2.paste.pics/7d52e443cdd7dfa4d172609dc1421a53.png)
---

## Alterando a Estrutura de uma Coluna

1. Adiciona uma nova coluna.................. `ALTER TABLE nome-tabela1 ADD nome-coluna2`
2. Altera as características da Coluna... `ALTER COLUMN nome-coluna1 varchar (300) NOT NULL`
3. Renomeia a coluna................................. `EXEC SP_RENAME 'nome-tabela.nome-coluna-antiga', 'nome-coluna-nova', 'column'`
4. Renomeia a tabela...................................`EXEC SP_RENAME 'nome-tabela-antiga', 'nome-tabela-nova'`

---

## Copiando Dados de um Tabela para Outra

`SELECT * INTO nome-tabela1 FROM nome-tabela2`

*Exemplo:*

![EveryonecanCode](https://i2.paste.pics/854693ece5c5eca7dd3bb07e962c5d20.png)

---

## Apagando Dados

`DELETE FROM nome-tabela 
WHERE nome-coluna1 = 'X'`

>Com base no *WHERE*, é possível determinar qual tipo de dado será substituído / alterado. 


*Exemplo:*

![EveryonecanCode](https://i2.paste.pics/47837af9feae3af70810ac624bfc4ca9.png)
