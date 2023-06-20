select * from notas_fiscais;
select * from itens_notas_fiscais;
select * from tabela_de_produtos;

select QS.SABOR, QS.Ano, QS.Quantidade, round((QS.Quantidade/QT.Quantidade_Total)*100, 2) as Percentual from
(select TP.SABOR, sum(INF.QUANTIDADE) as Quantidade, year(NF.DATA_VENDA) as Ano
from notas_fiscais NF inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO inner join tabela_de_produtos TP on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
where year(NF.DATA_VENDA) = 2016 group by TP.SABOR, Ano order by Quantidade desc) QS
inner join
(select PS.Ano, sum(PS.Quantidade) as Quantidade_Total from
(select TP.SABOR, sum(INF.QUANTIDADE) as Quantidade, year(NF.DATA_VENDA) as Ano
from notas_fiscais NF inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO inner join tabela_de_produtos TP on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
where year(NF.DATA_VENDA) = 2016 group by TP.SABOR, Ano order by Quantidade desc) PS group by Ano) QT on QS.Ano = QT.Ano;


select QS.TAMANHO, QS.Ano, QS.Quantidade, round((QS.Quantidade/QT.Quantidade_Total)*100, 2) as Percentual from
(select TP.TAMANHO, sum(INF.QUANTIDADE) as Quantidade, year(NF.DATA_VENDA) as Ano
from notas_fiscais NF inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO inner join tabela_de_produtos TP on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
where year(NF.DATA_VENDA) = 2016 group by TP.TAMANHO, Ano order by Quantidade desc) QS
inner join
(select PS.Ano, sum(PS.Quantidade) as Quantidade_Total from
(select TP.TAMANHO, sum(INF.QUANTIDADE) as Quantidade, year(NF.DATA_VENDA) as Ano
from notas_fiscais NF inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO inner join tabela_de_produtos TP on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
where year(NF.DATA_VENDA) = 2016 group by TP.TAMANHO, Ano order by Quantidade desc) PS group by Ano) QT on QS.Ano = QT.Ano;