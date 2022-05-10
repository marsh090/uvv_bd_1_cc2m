-- utilizar este alter user para poder rodar o script
ALTER USER lucas SET SEARCH_PATH TO elmasri, "$user", public

-- 1:  calcular média salarial dos funcionários de cada departamento.
SELECT D.nome_departamento, CAST (AVG(salario) AS DECIMAL(10,2)) AS media_salarial
FROM funcionario AS F
INNER JOIN departamento AS D
ON F.numero_departamento = D.numero_departamento
GROUP BY D.nome_departamento;

-- 2: relatório que mostre a média salarial dos funcionarios homens e funcionario mulheres.
SELECT sexo, CAST (AVG(salario) AS DECIMAL(10,2)) AS media_salarial
FROM funcionario
WHERE (sexo = sexo)
GROUP BY sexo;

-- 3: listar o nome dos departamentos e incluir as informações: o nome completo, a data de nascimento, a idade em anos completos e o salário.
SELECT D.nome_departamento, (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome_completo, DATE_PART('year', AGE(F.data_nascimento)) AS idade, F.data_nascimento, F.salario
FROM departamento D
INNER JOIN funcionario F
ON D.numero_departamento = F.numero_departamento
ORDER BY nome_departamento;

-- 4: nome completo dos funcionarioss, a idade em anos completos, o salário atual e o salário com um reajuste.
-- criterio do reajuste: salário inferior a 35.000 o reajuste deve ser de 20%, salário igual ou superior a 35.000 o reajuste deve ser de 15%.
SELECT (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome_completo, DATE_PART('year', AGE(F.data_nascimento)) AS idade, F.salario, 
CAST (F.salario * (1 + (CASE WHEN F.salario < 35000 THEN 0.2 ELSE 0.15 END)) AS DECIMAL(10,2)) AS salario_reajustado
FROM funcionario F;

-- 5: nome do gerente e dos funcionarios de cada departamento. Ordenado por nome_departamento (ordem crescente) e por salario (ordem decrescente).
SELECT D.nome_departamento, CAST (CASE WHEN D.cpf_gerente = F.cpf THEN (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) END AS varchar(31)) as nome_gerente, (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome_funcionario, F.salario
FROM funcionario F
INNER JOIN departamento D
ON F.numero_departamento = D.numero_departamento
ORDER BY D.nome_departamento ASC, F.salario DESC;

-- 6: nome completo dos funcionario que tem dependentes, o departamento onde eles trabalham 
-- e para cada funcionario liste o nome completo dos dependentes, a sua idade em anos, e o sexo
-- (que não deve aparecer como M ou F mas sim como Masculino ou Feminino).
SELECT F.numero_departamento, (F.primeiro_nome ||' '|| F.nome_meio ||' '|| F.ultimo_nome) AS nome_funcionario, D.nome_dependente, 
DATE_PART('year', AGE(D.data_nascimento)) AS idade_dependente, (CASE WHEN (D.sexo='M') THEN 'Masculino' WHEN (D.sexo='F') THEN 'Feminino'END) AS sexo
FROM funcionario AS F, dependente AS D
WHERE F.cpf = D.cpf_funcionario;

-- 7: cada funcionário que NÃO TEM dependente, seu nome completo, departamento e salário.
SELECT (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome_funcionario, F.numero_departamento, F.salario
FROM funcionario AS F
WHERE F.cpf NOT IN (SELECT D.cpf_funcionario FROM dependente AS D);

-- 8: para cada departamento, os projetos desse departamento e o nome completo dos funcionários que estão alocados em cada projeto. Além disso inclua o número de horas trabalhadas por cada funcionário, em cada projeto.
SELECT D.nome_departamento, P.nome_projeto, (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome_funcionario, T.horas
FROM funcionario AS F
INNER JOIN trabalha_em AS T
ON F.cpf = T.cpf_funcionario
INNER JOIN projeto AS P
ON T.numero_projeto = P.numero_projeto
INNER JOIN departamento AS D
ON F.numero_departamento = D.numero_departamento
ORDER BY D.nome_departamento, P.nome_projeto, F.salario DESC;

-- 9: soma total das horas de cada projeto em cada departamento. o relatório deve exibir o nome do departamento, o nome do projeto e a soma total das horas.
SELECT D.nome_departamento, P.nome_projeto, SUM(T.horas) AS total_horas
FROM funcionario AS F
INNER JOIN trabalha_em AS T
ON F.cpf = T.cpf_funcionario
INNER JOIN projeto AS P
ON T.numero_projeto = P.numero_projeto
INNER JOIN departamento AS D
ON F.numero_departamento = D.numero_departamento
GROUP BY D.nome_departamento, P.nome_projeto;

-- 10: e mostre a média salarial dos funcionários de cada departamento (mesma coisa que a primeira).
SELECT D.nome_departamento, CAST (AVG(salario) AS DECIMAL(10,2)) AS media_salarial
FROM funcionario AS F
INNER JOIN departamento AS D
ON F.numero_departamento = D.numero_departamento
GROUP BY D.nome_departamento;

-- 11: considerando que o valor pago por hora trabalhada em um projeto é de 50 reais, prepare um relatório que mostre o nome completo do funcionário, o nome do projeto e o valor total que o funcionário receberá referente às horas trabalhadas naquele projeto.
SELECT (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome_funcionario, P.nome_projeto, CAST (T.horas * 50 AS DECIMAL(10,2)) AS valor_total
FROM funcionario AS F
INNER JOIN trabalha_em AS T
ON F.cpf = T.cpf_funcionario
INNER JOIN projeto AS P
ON T.numero_projeto = P.numero_projeto
ORDER BY F.salario DESC;

-- 12: liste o nome do departamento, o nome do projeto e o nome dos funcionários que, mesmo estando alocados a algum projeto, não registraram nenhuma hora trabalhada.
SELECT D.nome_departamento, P.nome_projeto, (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome_funcionario
FROM funcionario AS F
INNER JOIN departamento AS D
ON F.numero_departamento = D.numero_departamento
INNER JOIN trabalha_em AS T
ON F.cpf = T.cpf_funcionario
INNER JOIN projeto AS P
ON T.numero_projeto = P.numero_projeto
WHERE T.horas IS NULL;

-- 13: durante o natal deste ano a empresa irá presentear todos os funcionários e todos os dependentes (sim, a empresa vai dar um presente para cada funcionário e um presente para cada dependente de cada funcionário) e pediu para que você preparasse um relatório que listasse o nome completo das pessoas a serem presenteadas (funcionários e dependentes), o sexo e a idade em anos completos (para poder comprar um presente adequado). Esse relatório deve estar ordenado pela idade em anos completos, de forma decrescente.
SELECT (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome, (case when (F.sexo='M') then 'Masculino' when (F.sexo='F') then 'Feminino'end) as sexo, DATE_PART('year', AGE(F.data_nascimento)) AS idade
FROM funcionario AS F
UNION
SELECT (D.nome_dependente) AS nome, (case when (D.sexo='M') then 'Masculino' when (D.sexo='F') then 'Feminino'end) as sexo, DATE_PART('year', AGE(D.data_nascimento)) AS idade
FROM dependente AS D
ORDER BY idade DESC;

-- 14: prepare um relatório que exiba quantos funcionários cada departamento tem.
SELECT D.nome_departamento, COUNT(F.cpf) AS quantidade_funcionarios
FROM funcionario AS F
INNER JOIN departamento AS D
ON F.numero_departamento = D.numero_departamento
GROUP BY D.nome_departamento;


-- 15: como um funcionário pode estar alocado em mais de um projeto, prepare um relatório que exiba o nome completo do funcionário, o departamento desse funcionário e o nome dos projetos em que cada funcionário está alocado. Atenção: se houver algum funcionário que não está alocado em nenhum projeto, o nome completo e o departamento também devem aparecer no relatório.
SELECT (F.primeiro_nome||' '|| F.nome_meio||' '|| F.ultimo_nome) AS nome_funcionario, D.nome_departamento, P.nome_projeto
FROM funcionario AS F
INNER JOIN trabalha_em AS T
ON F.cpf = T.cpf_funcionario
INNER JOIN projeto AS P
ON T.numero_projeto = P.numero_projeto
INNER JOIN departamento AS D
ON F.numero_departamento = D.numero_departamento
ORDER BY nome_funcionario;


-- Trabalho realizado na companhia de André Melotti e Vito Motta.

