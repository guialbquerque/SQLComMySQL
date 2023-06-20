select * from tabela_de_vendedores;
select * from notas_fiscais;

select A.NOME, B.MATRICULA, count(B.NUMERO) as total_notas_fiscais from tabela_de_vendedores A
inner join notas_fiscais B
on A.MATRICULA = B.MATRICULA group by MATRICULA;

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;

select * from notas_fiscais;
select * from itens_notas_fiscais;

select year(NF.DATA_VENDA) as Ano, sum(INF.QUANTIDADE * INF.PRECO) as Faturamento_anual from notas_fiscais NF
inner join itens_notas_fiscais INF on NF.NUMERO = INF.NUMERO group by year(DATA_VENDA) order by  Faturamento_anual desc;

select * from tabela_de_clientes;
select distinct CPF from notas_fiscais group by CPF;

select distinct A.NOME, A.CPF, B.CPF from tabela_de_clientes A left join notas_fiscais B
on A.CPF = B.CPF;

select NOME from tabela_de_clientes where CPF in (select distinct CPF from notas_fiscais group by CPF);