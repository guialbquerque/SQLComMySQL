select * from notas_fiscais;

select CPF, count(year(DATA_VENDA)) as Vendas from notas_fiscais
where year(DATA_VENDA) = 2016 group by CPF having Vendas > 2000;

select Nome from tabela_de_clientes where CPF in('3623344710', '492472718', '50534475787');