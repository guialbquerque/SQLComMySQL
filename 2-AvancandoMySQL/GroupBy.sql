select * from itens_notas_fiscais;

select CODIGO_DO_PRODUTO as 'Codigo do Produto', sum(QUANTIDADE) as 'Total Vendido' from itens_notas_fiscais
group by CODIGO_DO_PRODUTO order by `Total Vendido` desc;

select MATRICULA, sum(DATA_VENDA) as 'Total vendas' from notas_fiscais
where DATA_VENDA = '2015-01-01' group by MATRICULA;

select SEXO, ESTADO, count(NOME) as Pessoas from tabela_de_clientes where ESTADO in('SP', 'RJ')
group by SEXO, ESTADO;


select SABOR, count(EMBALAGEM) as 'Total Embalagens' from tabela_de_produtos
group by (SABOR) order by  'Total Embalagens' desc;

select CODIGO_DO_PRODUTO, SUM(QUANTIDADE) as Total_vendas from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035'
group by CODIGO_DO_PRODUTO;

select count(QUANTIDADE) as total_da_quantidade_maxima from itens_notas_fiscais
where CODIGO_DO_PRODUTO = '1101035' and QUANTIDADE = 99;
