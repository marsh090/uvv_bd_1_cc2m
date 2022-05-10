# Bancos de Dados - Pset2
Está pasta possui o arquivo .sql comentado com a resolução dos 15 relatórios desenvolvidos sobre o banco de dados do Elmasri desenvolvido no pset1.

Este projeto realizado pelo aluno Lucas Zanon Guarnier da CC2M(2022/1), em conjunto com [Andre Coco Pereira Melotti](https://github.com/AndreMelotti) e [Vitor Motta Supelete](https://github.com/OCVitin) e foi orientado pelo professor [Abrantes Araujo Silva Filho](https://github.com/abrantesasf)

***ATENÇÃO:*** *O pset2 (arquivo atual) é dependente do pset 1*
***
### Analise das questões:
**Questão 1 -** Relatório da média salarial dos funcionários de cada departamento.
nome_departamento|media_salarial
-|-
| Pesquisa | 33250.00 |
| Administração | 31000.00 |
| Matriz | 55000.00 |
***
**Questão 2 -** Relatório da média salarial dos homens e das mulheres.
sexo | media_salarial
-|-
 M    |       37600.00
 F    |       31000.00

***
**Questão 3 -** Relatório de nome completo, a data de nascimento, a idade  e salário dos funcionários de cada departamento.
nome_departamento |  nome_completo   | idade | data_nascimento | salario 
-|-|-|-|-
 Administração     | Alice J Zelaya   |    54 | 1968-01-19      | 25000.00
 Administração     | Jennifer S Souza |    80 | 1941-06-20      | 43000.00
 Administração     | André V Pereira  |    53 | 1969-03-29      | 25000.00
 Matriz            | Jorge E Brito    |    84 | 1937-11-10      | 55000.00
 Pesquisa          | Ronaldo K Lima   |    59 | 1962-09-15      | 38000.00
 Pesquisa          | Fernando T Wong  |    66 | 1955-12-08      | 40000.00
 Pesquisa          | João B Silva     |    57 | 1965-01-09      | 30000.00
 Pesquisa          | Joice A Leite    |    49 | 1972-07-31      | 25000.00
***
**Questão 4 -** Relatório com nome completo dos funcionários, a idade em anos completos, o salário atual e o salário com um reajuste.
nome_completo   | idade | salario  | salario_reajustado 
-|-|-|-
 João B Silva     |    57 | 30000.00 |           36000.00
 Fernando T Wong  |    66 | 40000.00 |           46000.00
 Alice J Zelaya   |    54 | 25000.00 |           30000.00
 Jennifer S Souza |    80 | 43000.00 |           49450.00
 Ronaldo K Lima   |    59 | 38000.00 |           43700.00
 Joice A Leite    |    49 | 25000.00 |           30000.00
 André V Pereira  |    53 | 25000.00 |           30000.00
 Jorge E Brito    |    84 | 55000.00 |           63250.00
***
**Questão 5 -** Relatório em que para cada departamento, o nome do gerente e o nome dos funcionários.
nome_departamento |   nome_gerente   | nome_funcionario | salario  
-|-|-|-
 Administração     | Jennifer S Souza | Jennifer S Souza | 43000.00
 Administração     |                  | André V Pereira  | 25000.00
 Administração     |                  | Alice J Zelaya   | 25000.00
 Matriz            | Jorge E Brito    | Jorge E Brito    | 55000.00
 Pesquisa          | Fernando T Wong  | Fernando T Wong  | 40000.00
 Pesquisa          |                  | Ronaldo K Lima   | 38000.00
 Pesquisa          |                  | João B Silva     | 30000.00
 Pesquisa          |                  | Joice A Leite    | 25000.00
***
**Questão 6 -** Relatório com nome completo dos funcionários que têm dependentes, o departamento onde eles trabalham, o nome, a idade e o sexo de cada dependente.
 numero_departamento | nome_funcionario | nome_dependente | idade_dependente |   sexo    
-|-|-|-|-
5 | Fernando T Wong  | Alicia|36 | Feminino
5 | Fernando T Wong  | Tiago|38 | Masculino
5 | Fernando T Wong  | Janaina|64 | Feminino
4 | Jennifer S Souza | Antonio|80 | Masculino
5 | João B Silva     | Michael|34 | Masculino
5 | João B Silva     | Alicia|33 | Feminino
5 | João B Silva     | Elizabeth|55 | Feminino
***
**Questão 7 -** Relatório com nome completo, departamento e salário de cada funcionário que NÃO TEM dependente.
nome_funcionario | numero_departamento | salario  
-|-|-
 Alice J Zelaya   |                   4 | 25000.00
 Ronaldo K Lima   |                   5 | 38000.00
 Joice A Leite    |                   5 | 25000.00
 André V Pereira  |                   4 | 25000.00
 Jorge E Brito    |                   1 | 55000.00
 ***
**Questão 8 -** Relatório com os projetos de cada departamento e o nome completo dos funcionários de cada projeto. incluir o número de horas trabalhadas por cada funcionário, em cada projeto.
***Atenção:*** o funcionário Jorge E Brito possui tempo NULL de horas trabalhadas, por isso a tabela fica em branco
nome_departamento |  nome_projeto   | nome_funcionario | horas 
------------------|---------------|--------------|-------
 Administração     | Informatização  | Alice J Zelaya   |  10.0
 Administração     | Informatização  | André V Pereira  |  35.0
 Administração     | Novosbeneficios | Jennifer S Souza |  20.0
 Administração     | Novosbeneficios | Alice J Zelaya   |  30.0
 Administração     | Novosbeneficios | André V Pereira  |   5.0
 Administração     | Reorganização   | Jennifer S Souza |  15.0
 Matriz            | Reorganização   | Jorge E Brito    |   0.0
 Pesquisa          | Informatização  | Fernando T Wong  |  10.0
 Pesquisa          | ProdutoX        | João B Silva     |  32.5
 Pesquisa          | ProdutoX        | Joice A Leite    |  20.0
 Pesquisa          | Produto Y       | Fernando T Wong  |  10.0
 Pesquisa          | Produto Y       | João B Silva     |   7.5
 Pesquisa          | Produto Y       | Joice A Leite    |  20.0
 Pesquisa          | ProdutoZ        | Fernando T Wong  |  10.0
 Pesquisa          | ProdutoZ        | Ronaldo K Lima   |  40.0
 Pesquisa          | Reorganização   | Fernando T Wong  |  10.0

 ***
**Questão 9 -** Relatório com soma total das horas de cada projeto em cada departamento.
 nome_departamento |  nome_projeto   | total_horas 
-------------------|-----------------|-------------
 Pesquisa          | Informatização  |        10.0
 Administração     | Informatização  |        45.0
 Pesquisa          | ProdutoZ        |        50.0
 Pesquisa          | Reorganização   |        10.0
 Administração     | Novosbeneficios |        55.0
 Matriz            | Reorganização   |         0.0
 Administração     | Reorganização   |        15.0
 Pesquisa          | Produto Y       |        37.5
 Pesquisa          | ProdutoX        |        52.5

***
**Questão 10 -** Relatório com média salarial dos funcionários de cada departamento.
 nome_departamento | media_salarial 
-----------------|--------------
 Pesquisa          |       33250.00
 Administração     |       31000.00
 Matriz            |       55000.00
***
**Questão 11 -** Relatório com nome completo do funcionário, o nome do projeto e o valor total que o funcionário receberá referente às horas trabalhadas (50R$/h)
 nome_funcionario |  nome_projeto   | valor_total 
---------------|----------------|-----------
 Jorge E Brito    | Reorganização   |        0.00
 Jennifer S Souza | Novosbeneficios |     1000.00
 Jennifer S Souza | Reorganização   |      750.00
 Fernando T Wong  | Reorganização   |      500.00
 Fernando T Wong  | Produto Y       |      500.00
 Fernando T Wong  | ProdutoZ        |      500.00
 Fernando T Wong  | Informatização  |      500.00
 Ronaldo K Lima   | ProdutoZ        |     2000.00
 João B Silva     | ProdutoX        |     1625.00
 João B Silva     | Produto Y       |      375.00
 Alice J Zelaya   | Informatização  |      500.00
 André V Pereira  | Informatização  |     1750.00
 André V Pereira  | Novosbeneficios |      250.00
 Joice A Leite    | Produto Y       |     1000.00
 Joice A Leite    | ProdutoX        |     1000.00
 Alice J Zelaya   | Novosbeneficios |     1500.00
***
**Questão 12 -** Relatório com o nome do departamento, do projeto e dos funcionários que não registraram nenhuma hora trabalhada.
 nome_departamento | nome_projeto  | nome_funcionario 
------------------|----------|----------------
 Matriz            | Reorganização | Jorge E Brito
***
**Questão 13 -** Relatório com nome completo das pessoas a serem presenteadas, o sexo e a idade em anos completos. O relatório deve ser ordenado pela idade de forma decrescente.
nome|   sexo    | idade 
--------------|----------|------
 Jorge E Brito    | Masculino |    84
 Antonio          | Masculino |    80
 Jennifer S Souza | Feminino  |    80
 Fernando T Wong  | Masculino |    66
 Janaina          | Feminino  |    64
 Ronaldo K Lima   | Masculino |    59
 João B Silva     | Masculino |    57
 Elizabeth        | Feminino  |    55
 Alice J Zelaya   | Feminino  |    54
 André V Pereira  | Masculino |    53
 Joice A Leite    | Feminino  |    49
 Tiago            | Masculino |    38
 Alicia           | Feminino  |    36
 Michael          | Masculino |    34
 Alicia           | Feminino  |    33
 ***
 **Questão 14 -** Relatório que exiba quantos funcionários cada departamento tem.
 nome_departamento | quantidade_funcionarios 
-------------------|------------------------
 Pesquisa          |                       4
 Administração     |                       3
 Matriz            |                       1
  ***
 **Questão 15 -** Relatório com nome completo do funcionário, o departamento desse funcionário e o nome dos projetos em que cada funcionário está alocado.
 nome_funcionario | nome_departamento |  nome_projeto   
------------------|-------------------|----------------
 Alice J Zelaya   | Administração     | Informatização
 Alice J Zelaya   | Administração     | Novosbeneficios
 André V Pereira  | Administração     | Novosbeneficios
 André V Pereira  | Administração     | Informatização
 Fernando T Wong  | Pesquisa          | ProdutoZ
 Fernando T Wong  | Pesquisa          | Produto Y
 Fernando T Wong  | Pesquisa          | Informatização
 Fernando T Wong  | Pesquisa          | Reorganização
 Jennifer S Souza | Administração     | Reorganização
 Jennifer S Souza | Administração     | Novosbeneficios
 João B Silva     | Pesquisa          | ProdutoX
 João B Silva     | Pesquisa          | Produto Y
 Joice A Leite    | Pesquisa          | Produto Y
 Joice A Leite    | Pesquisa          | ProdutoX
 Jorge E Brito    | Matriz            | Reorganização
 Ronaldo K Lima   | Pesquisa          | ProdutoZ