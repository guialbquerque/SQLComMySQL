SELECT NF.CPF, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS ANO_MES, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
GROUP BY NF.CPF, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m');

SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE
FROM tabela_de_clientes TC;

SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS ANO_MES, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS,
TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE, (TC.VOLUME_DE_COMPRA-SUM(INF.QUANTIDADE)) as DIFERENCA
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m');

select CV.CPF, CV.NOME, CV.ANO_MES, CV.QUANTIDADE_VENDAS, CV.QUANTIDADE_LIMITE, CV.DIFERENCA,
case when CV.DIFERENCA < 0 then 'Venda Invalida' else 'Venda Valida' end as 'Status Vendas'
 from
(SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS ANO_MES, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS,
TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE, (TC.VOLUME_DE_COMPRA-SUM(INF.QUANTIDADE)) as DIFERENCA
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m')) CV;
/* Calculando a quantidade de sucos vendidas para cada cliente por mes e verificando se foi uma venda valida comparando com a quantidade limite de compra de cada cliente*/
select CV.CPF, CV.NOME, CV.ANO_MES, CV.QUANTIDADE_VENDAS, CV.QUANTIDADE_LIMITE, CV.DIFERENCA,
case when CV.DIFERENCA < 0 then 'Venda Invalida' else 'Venda Valida' end as 'Status Vendas'
 from
(SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y/%m') AS ANO_MES, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS,
TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE, (TC.VOLUME_DE_COMPRA-SUM(INF.QUANTIDADE)) as DIFERENCA
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y/%m')) CV;


select CV.CPF, CV.NOME, CV.ANO_MES, CV.QUANTIDADE_VENDAS, CV.QUANTIDADE_LIMITE, CV.DIFERENCA,
case when CV.DIFERENCA < 0 then 'Venda Invalida' else 'Venda Valida' end as 'Status Vendas'
 from
(SELECT NF.CPF, TC.NOME, year(NF.DATA_VENDA) AS ANO_MES, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS,
TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE, (TC.VOLUME_DE_COMPRA-SUM(INF.QUANTIDADE)) as DIFERENCA
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, year(NF.DATA_VENDA)) CV;

select CV.CPF, CV.NOME, CV.ANO_MES, CV.QUANTIDADE_VENDAS, CV.QUANTIDADE_LIMITE, CV.DIFERENCA, round(round(CV.QUANTIDADE_VENDAS/CV.QUANTIDADE_LIMITE,4)-1, 2)*100 as PERCENTUAL_ACIMA,
case when CV.DIFERENCA < 0 then 'Venda Invalida' else 'Venda Valida' end as 'Status Vendas'
 from
(SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y/%m') AS ANO_MES, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS,
TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE, (TC.VOLUME_DE_COMPRA-SUM(INF.QUANTIDADE)) as DIFERENCA
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y/%m')) CV having CV.DIFERENCA < 0;
