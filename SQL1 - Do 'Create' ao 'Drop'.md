# SQL - Do "Create" ao "Drop"
---
## Criando um Database

Após decidir quais serão os dados armazenados no banco de dados. Chegou a hora de definir quais serão as características de cada um dos campos. A fim de fazer um bom uso das informações dispostas nele, assim como também o seu armazenamento. 

Para começar, cabe esclarecer que as **características** que o SQL dispõe, em outras palavras, corresponde ao tipo de **dado** e seu respectivo **tamanho** que cada campo pode ter.

##

*Segundo o livro, SQL - Curso Prático...*
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
