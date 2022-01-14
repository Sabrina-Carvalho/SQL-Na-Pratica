## SELECT

Para realizar uma pesquisa básica em SQL, o comando que é utilizado é o *SELECT*. E a partir dele, há diversas possibilidades de comandos, onde você poderá filtrar e refinar ainda mais a sua pesquisa no banco de dados.

A sintaxe mais simples do comando SELECT é: 

`SELECT [ DISTINCT | ALL ] { * | nome-coluna [, nome-coluna, ...] } FROM nome-tabela`

*Onde:*

**CLÁUSULA** | **DESCRIÇÃO**
--- | ---
`DISTINCT` | Não mostra evetuais valores repetidos de colunas.
`ALL` | MOstra todos os valores, mesmo que repetidos. Esse é o padrão se ´DISTINST´ não for definido.
`*` | Indica que devem ser mostradas todas as colunas da tabela.
`NOME-COLUNA` | Lista de colunas que devem ser mostradas.
`NOME-TABELA` | Nome da tabela em que será realizada a busca.

>Obs.: O comando `SELECT * FROM nome-tabela;` é capaz de mostrar todas as linhas e coolunas da tabela.

##

## ORDER BY

O comando *ORDER BY*, serve para determinar a ordem em que são mostradas as linhas de uma tabela.

`SELECT [ DISTINCT | ALL ] { * | nome-coluna [, nome-coluna, ...] } FROM nome-tabela ORDER BY coluna-ord [, coluna-ord, ...]`

*Onde:*

**CLÁUSULA** | **DESCRIÇÃO**
--- | ---
`COLUNA-ORD` | Lista de colunas na ordem de precedência de classificação.

##

## WHERE

Para filtrar linhas em uma pesquisa, utilizamos a cláusula  *WHERE*.

`SELECT [ DISTINCT | ALL ] { * | nome-coluna [, nome-coluna, ...] } FROM nome-tabela WHERE <condição>`

**CLÁUSULA** | **DESCRIÇÃO**
--- | ---
`CONDIÇÃO` | Condição que define o escopo (limite) de apresentação dos resultados.

##

##Operadores Relacionais

Operadores relacionais definem um tipo de condição básica.

**OPERADOR** | **DESCRIÇÃO**
--- | ---
`=` | Igual
`<` | Menor que
`<=` | Menor ou igual a
`>` | Maior que
`>=` | Maior ou igual a
`!=` ou `<>` | Diferente

>Obs.: Da mesma forma que podemos comparar uma coluna com um valor, podemos comparar uma coluna com outra.

## 

## Operadores Lógicos

Operadores relacionais definem um tipo de condição básica.

**OPERADOR** | **SIGNIFICADO** | **EXEMPLO** | **DESCRIÇÃO**
--- | --- | --- | ---
`AND` | E | condição1 AND condição2 | O operador `AND` indica que as duas condições devem ser verdadeiras para que seja mostrada a linha.
`OR` | Ou | condição1 OU condição2 | O operador `OU` indica que somente uma condição deve ser verdadeira para que seja mostrada a linha.
`NOT` ou `!` | Não / Negação | NOT condição | O operador `NOT` é utilizado para inverter o resultado de uma expressão lógica, negando o resultado da condição. Caso a condição seja verdadeira, será retornado falso e vice-versa.

>Obs.: Da mesma forma que podemos comparar uma coluna com um valor, podemos comparar uma coluna com outra.

## 

A seguir, uma tabela com as possibilidades que envolvem o operador *AND* e o operador *OR*.

**CONDIÇÃO1** | **OPERADOR** | **CONDIÇÃO2** | **RESULTADO**
--- | --- | --- | ---
VERDADEIRA | `AND` | VERDADEIRA | VERDADEIRO
VERDADEIRA | `AND` | FALSA | FALSO
FALSA | `AND` | VERDADEIRA | FALSO
FALSA | `AND` | FALSA | FALSO
--- | --- | --- | ---
VERDADEIRA | `OR` | VERDADEIRA | VERDADEIRO
VERDADEIRA | `OR` | FALSA | VERDADEIRO
FALSA | `OR` | VERDADEIRA | VERDADEIRO
FALSA | `OR` | FALSA | FALSO


>Obs.: Não há limitação no us e na comibinação de condições utilizando operadores `AND` e `OR`. Mas devemos tomar cuidado na combinação de ambos. A avaliação desse tipo de condição é, no padrão, da esquerda para a direita. É conveniente utilizar parênteses para determinar o que você quer comparar.

##

## Operadores Especiais

Há alguns operadores que são utilizados para determinar melhor as linhas que queremos filtrar.

### IS NUL

Sabemos que todas as colunas que não têm valor inicializado são nulas. Logo, esse comando é utilizado para saber se o conteúdo da coluna foi ou não inicializado.

`SELECT nome-coluna FROM nome-tabela WHERE nome-coluna IS NULL;`

## 

### IS NOT NUL

Compara a negação do operador anterior. Somente aqueles que tiverem conteúdo atribuído serão mostrados.

`SELECT nome-coluna FROM nome-tabela WHERE nome-coluna IS NOT NULL;`

## 

### BETWEEN

Esse operador serve para determinar **um intervalo de busca**.

>Obs.: É muito utilizado para simplificar a utilização do **AND**.

`SELECT nome-coluna FROM nome-tabela WHERE nome-coluna BETWEEN '01/01'2021' AND '01/01/2021';`

>Obs.: Caso você utilize **NOT**, somente as linhas fora do intervalo serão apresentadas.

## 


### IN

Permite comparar o valor de uma coluna com um conjunto de valores.

>Obs.: Normalmente, utilizamos o **IN** para substiruir uma série de comparações seguidas da cláusula **OR**.

*Exemplo:*

`SELECT * FROM nome-tabela WHERE nome-coluna IN (1,10,20);`

>Obs.: Note que apenas os resultados cujo código seja 1,10 e 20 serão retornados.
>ObsI.: O **IN**, também pode ser utilizado em *subquery*.