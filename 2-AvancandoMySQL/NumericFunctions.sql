select ceiling(12.45); -- retorna o proximo inteiro maior que o numero

select floor(12.45); -- retorna o inteiro menor que o numero

select round(12.49); -- Retorna o inteiro mais proximo se menor que x.5 ou o proximo inteiro se maior que x.5

select * from itens_notas_fiscais;

select CODIGO_DO_PRODUTO as 'Codigo Produto', round(sum(QUANTIDADE*PRECO), 2) as Faturamento -- retorna ate duas casas decimais pos a virgula
 from itens_notas_fiscais
group by CODIGO_DO_PRODUTO order by Faturamento desc;

select * from notas_fiscais;
select * from itens_notas_fiscais;

select NF.IMPOSTO, INF.QUANTIDADE, INF.PRECO from notas_fiscais NF
inner join itens_notas_fiscais INF on NF.NUMERO = INF.NUMERO;

select floor(sum(NF.IMPOSTO*INF.QUANTIDADE*INF.PRECO)) as 'Impostos de 2016' from notas_fiscais NF
inner join itens_notas_fiscais INF on NF.NUMERO = INF.NUMERO
where year(DATA_VENDA) = 2016;

SELECT YEAR(DATA_VENDA) as Ano, FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) as 'Imposto Anual'
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA_VENDA) order by FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) desc;