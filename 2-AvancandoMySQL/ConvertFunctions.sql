select date_format(current_time(), '%h');

select * from tabela_de_clientes;
select * from notas_fiscais;

select TC.NOME as Nome, TC.CPF, count(NF.NUMERO) as Quantidade_Compras from tabela_de_clientes TC
inner join notas_fiscais NF on TC.CPF = NF.CPF where year(DATA_VENDA) = 2016 group by CPF;

select concat('O (A) cliente ', TCN.Nome, ' teve uma quantidade de compras de ', TCN.Quantidade_Compras, ' no ano de 2016') as Compras from
(select TC.NOME as Nome, TC.CPF, count(NF.NUMERO) as Quantidade_Compras from tabela_de_clientes TC
inner join notas_fiscais NF on TC.CPF = NF.CPF where year(DATA_VENDA) = 2016 group by CPF) TCN;