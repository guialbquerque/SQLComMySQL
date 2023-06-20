select * from tabela_de_produtos;

select NOME_DO_PRODUTO as Produto, PRECO_DE_LISTA as Preco,
case
	when PRECO_DE_LISTA >= 13 then 'Produto caro'
    when PRECO_DE_LISTA <= 13 AND PRECO_DE_LISTA >= 7 then 'Produto em conta'
    else 'Produto barato' end as Classificacao_produtos
from tabela_de_produtos order by Preco desc;

select NOME_DO_PRODUTO as Produto, PRECO_DE_LISTA as Preco,
case
	when PRECO_DE_LISTA >= 13 then 'Produto caro'
    when PRECO_DE_LISTA <= 13 AND PRECO_DE_LISTA >= 7 then 'Produto em conta'
    else 'Produto barato' end as Classificacao_produtos
from tabela_de_produtos where SABOR = 'Laranja';

select EMBALAGEM,
case
	when PRECO_DE_LISTA >= 13 then 'Produto caro'
    when PRECO_DE_LISTA <= 13 AND PRECO_DE_LISTA >= 7 then 'Produto em conta'
    else 'Produto barato' end as Classificacao_produtos, avg(PRECO_DE_LISTA) as preco_medio
from tabela_de_produtos group by EMBALAGEM,
case
	when PRECO_DE_LISTA >= 13 then 'Produto caro'
    when PRECO_DE_LISTA <= 13 AND PRECO_DE_LISTA >= 7 then 'Produto em conta'
    else 'Produto barato' end order by EMBALAGEM;

select CPF, NOME, DATA_DE_NASCIMENTO from tabela_de_clientes;

select NOME, year(DATA_DE_NASCIMENTO) as Ano,
case
	when year(DATA_DE_NASCIMENTO) < 1990 then 'Adultos'
    when year(DATA_DE_NASCIMENTO) >= 1990 and year(DATA_DE_NASCIMENTO) <= 1995 then 'Jovens'
    else 'Criancas' end as 'Faixa Etaria' from tabela_de_clientes order by Ano;